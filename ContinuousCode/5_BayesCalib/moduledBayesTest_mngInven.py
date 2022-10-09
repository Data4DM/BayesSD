import math
import pandas as pd
import xarray as xr
import numpy as np
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.builders.stan.stan_model import StanVensimModel
import cmdstanpy
import matplotlib
import matplotlib.pyplot as plt
matplotlib.use('TkAgg')
pd.set_option('display.max_rows', 1000)
import arviz as az
est_param_lst = ["inventory_adjustment_time", "minimum_order_processing_time"]
ass_param_lst = ["customer_order_rate", "inventory_coverage", "manufacturing_cycle_time", "safety_stock_coverage", "time_to_average_order_rate", "wip_adjustment_time"]
obs_stock_lst = ["production_start_rate_stocked", "production_rate_stocked"]
driving_data_lst = ["customer_order_rate", "ran_norm1", "ran_norm2"]

# est_param_lst = ["maximum_shipment_rate"]
# obs_stock_lst = ["inventory"]

def draws2data(am, data_draws2data, model_name):
    # 1. D
    n_t = data_draws2data.get('n_t')

    # 2. P
    ## a. set_prior_struc
    model = StanVensimModel(f"{model_name}", am, 0.0, list(range(1, n_t + 1)), data_dict = data_draws2data)

    ## b. set_prior_var
    ### 1) ode parameter prior: heuristic(mean, mean/5)
    model.set_prior(f"{est_param_lst[0]}", "normal", 2, 0.4) #inventory_adjustment_time
    #model.set_prior(f"{est_param_lst[1]}", "normal", 0.05, 0.01) #minimum_order_processing_time

    ### 2) sampling distribution parameter (measruement error) prior
    # dispersion distribution plots:
    # https://publish.obsidian.md/tolzul/DataInDM/Wiki_Week/08W2_hier_comp_pinocchio/Hierarchical+prior
    model.set_prior("m_noise_scale", "inv_gamma", 2, 0.1)

    ### 3)  measurement \tilde{y}_{1..t} ~ f(\theta, t)_{1..t}
    for i in range(len(obs_stock_lst)):
        model.set_prior(f"{obs_stock_lst[i]}_obs", "normal", f"{obs_stock_lst[i]}", "m_noise_scale")

    ### 1) + 2) + 3)
    model.build_stan_functions()

    ### c. set_prior_demand #TODO

    ## 1+2. P(D)

    draws2data_model = model.stanify_draws2data()

    model.print_info()
    ## 3. A(P(D))
    prior_pred = draws2data_model.sample(data=data_draws2data, fixed_param=True, iter_sampling = 1)


    # plot
    print(prior_pred.draws_xr(obs_stock_lst).mean(["chain", "draw"]).to_dataframe())


    #prior_pred.draws_xr(obs_stock_lst).mean(["chain", "draw"]).to_dataframe().plot()
    # fig, ax = plt.subplots(figsize=(15, 8))
    # for i in range(len(obs_stock_lst)):
    #     prior_pred.draws_xr(f'{obs_stock_lst[i]}').mean(["chain", "draw"]).to_dataframe().plot() #), label = f"{obs_stock_lst[i]}")
    # print(prior_pred.draws_xr(obs_stock_lst).mean(["chain"]))
    # print(prior_pred.draws_xr(obs_stock_lst).mean(["chain", "draw"]))
    # plt.savefig("data/" +f"{model_name}_prior_pred.png")
    # plt.show()

    # store data in netcdf
    prior_pred.draws_xr(obs_stock_lst).to_netcdf("data/" + f"{model_name}_prior_pred_data.nc")

    return prior_pred


def data2draws(am, data_data2draws, model_name):
    # 1. D
    n_t = data_data2draws.get('n_t')

    ## 2. P
    ### a. set_prior_struc
    model = StanVensimModel(f"{model_name}", am, 0.0, list(range(1, n_t + 1)), data_dict=data_data2draws)

    ### b. set_prior_scalar
    ##### 1) ode parameter prior
    model.set_prior(f"{est_param_lst[0]}", "normal", 2, 0.4) #inventory_adjustment_time
    model.set_prior(f"{est_param_lst[1]}", "normal", 0.05, 0.01) #minimum_order_processing_time

    ##### 2) sampling distribution parameter (measruement error) prior
    model.set_prior("m_noise_scale", "inv_gamma", 2, 0.1) # mean beta, alpha-1

    ### 3)  measurement \tilde{y}_{1..t} ~ f(\theta, t)_{1..t}
    for i in range(len(obs_stock_lst)):
        model.set_prior(f"{obs_stock_lst[i]}_obs", "normal", f"{obs_stock_lst[i]}", "m_noise_scale")

    ##### 1) + 2) + 3)
    model.build_stan_functions()  # TODO check cache and build if not exist

    ## 1+2. P(D)
    model.stanify_data2draws()
    data2draws_model = cmdstanpy.CmdStanModel(stan_file="stan_files/" + f"{model_name}_data2draws.stan") # neg_binom doesn't receive vector; manual add for loop in stanfile
    prior_pred = data2draws_model.sample(data=data_data2draws, iter_warmup=0, iter_sampling=5)
    #az.plot_density(draws2data, var_names=["production_start_rate_stocked_obs", "production_rate_stocked_obs"]);
    ## 3. A(P(D))
    fig, ax = plt.subplots(figsize=(15, 8))
    ax.plot(pd.DataFrame(prior_pred.draws_xr('production_start_rate_stocked_obs').mean(["chain", "draw"]).production_start_rate_stocked_obs), label = "production_start_rate_stocked_obs")
    ax.plot(pd.DataFrame(prior_pred.draws_xr('production_rate_stocked_obs').mean(["chain", "draw"]).production_rate_stocked_obs), label = "production_rate_stocked_obs")
    ax.legend()
    plt.savefig(f"{model_name}_prior_pred.png")
    plt.show()
    return prior_pred

def trunc4StanNegBinom(real_series):
    """DataArray type real series

    """
    real_series = real_series.values.flatten()
    int_series = [math.trunc(i) for i in real_series]
    return int_series
def draws2data2draws():
# simulation-based calibration
    return


n_t = 20 #customer_order_rate.shape[0]
customer_order_rate = pd.read_csv('data/example_retail_sales.csv').iloc[:n_t, :]
vf = VensimFile('vensim_models/mngChain/InventoryManagementWeek7.mdl')
vf.parse()
am = vf.get_abstract_model()
placeholder = np.zeros(shape = n_t)

# Draws2Data
# driving data
ran_norm1 = np.random.normal(0,1, size=n_t)
ran_beta1 = np.random.beta(2,2, size=n_t)
ran_beta2 = np.random.beta(2,2, size=n_t)

# all states need placeholder with length n_t
placeholder = np.zeros(shape = n_t)
data_draws2data = {
    "n_t": n_t,
    "production_start_rate_stocked_obs": placeholder,
    "production_rate_stocked_obs":  placeholder,
    "customer_order_rate": customer_order_rate.loc[:n_t, 'y'].values,
    "standard_normal_for_process_noise": ran_norm1,
    "beta22shift1_4_production_rate_m_noise": ran_beta1,
    "beta22shift1_4_production_start_rate_m_noise": ran_beta2,
}
model_name = "mngInven3"
draws2data(am, data_draws2data, model_name)
prior_pred_data = xr.open_dataset("data/" + f"{model_name}_prior_pred_data.nc")
print(prior_pred_data)
prior_pred_data.reset_index(dims = "production_start_rate_stocked_dim_0").plot()

# #
# # fig, ax = plt.subplots(figsize=(15, 8))
# # ax.plot(pd.DataFrame(prior_pred.draws_xr('production_start_rate_stocked_obs').mean(["chain", "draw"]).production_start_rate_stocked_obs), label = "production_start_rate_stocked_obs")
# # ax.plot(pd.DataFrame(prior_pred.draws_xr('production_rate_stocked_obs').mean(["chain", "draw"]).production_rate_stocked_obs), label = "production_rate_stocked_obs")
# # ax.legend()
# # plt.show()
#
# #ax.plot(pd.DataFrame(prior_pred.draws_xr('production_start_rate_stocked_obs').mean(["chain", "draw"]).production_start_rate_stocked_obs["draw" == [1,2]]))
# # ax.plot(pd.DataFrame(prior_pred_obs.squeeze("chain").production_rate_stocked_obs[:,:5]), alpha=0.5, label='production_rate_stocked_obs')
# # ax.legend()
# # plt.legend(loc='upper right')
# # plt.show()
# # Data2Draws
# prior_pred_obs = xr.open_dataset("data/PriorPredData.nc")
# print(prior_pred_obs['production_start_rate_stocked_obs'].mean('draw').values.flatten())
# data_data2draws = {
#     "n_obs_state" : 2,
#     "n_t": n_t,
#     "customer_order_rate": customer_order_rate.loc[:n_t, 'y'].values,
#     "production_start_rate_stocked_obs":prior_pred_obs['production_start_rate_stocked_obs'].mean('draw').values.flatten(),  #trunc4StanNegBinom(prior_pred_obs['production_start_rate_stocked_obs'].mean('draw')),
#     "production_rate_stocked_obs": prior_pred_obs['production_rate_stocked_obs'].mean('draw').values.flatten(), #trunc4StanNegBinom(prior_pred_obs['production_rate_stocked_obs'].mean('draw')),
#     "standard_normal_for_process_noise": ran_norm1,
#     "beta22shift1_4_production_rate_m_noise": ran_beta1,
#     "beta22shift1_4_production_start_rate_m_noise": ran_beta2,
# } #    "n_firm": n_firm, for HB
# data2draws(am, data_data2draws).draws_xr().to_netcdf("data/mngInvenPostDraws_gp.nc")

# # Compare Prior and Posterior
# posterior = xr.open_dataset("data/mngInvenPostDraws.nc")
# inventory_adjustment_time = posterior['inventory_adjustment_time']
# minimum_order_processing_time = posterior['minimum_order_processing_time']

# bins = np.linspace(0, 5, 100)
# plt.hist([np.random.normal(2, 0.4) for _ in range(1000)], bins, alpha=0.5, label='inventory_adjustment_time_true')
# plt.hist(inventory_adjustment_time.mean(dim = ["chain"]), bins, alpha=0.5, label='inventory_adjustment_time_estimate')
# plt.legend(loc='upper right')
# plt.show()
#
# bins = np.linspace(0, 0.1, 100)
# plt.hist([np.random.normal(0.05, 0.01) for _ in range(1000)], bins, alpha=0.5, label='minimum_order_processing_time_true')
# plt.hist(minimum_order_processing_time.mean(dim = ["chain"]), bins, alpha=0.5, label='minimum_order_processing_time_estimate')
# plt.legend(loc='upper right')
# plt.show()