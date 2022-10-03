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

est_param_lst = ["inventory_adjustment_time", "minimum_order_processing_time"]
ass_param_lst = ["customer_order_rate", "inventory_coverage", "manufacturing_cycle_time", "safety_stock_coverage", "time_to_average_order_rate", "wip_adjustment_time"]
obs_stock_lst = ["work_in_process_inventory_obs", "inventory_obs"]
driving_data_lst = ["customer_order_rate", "ran_norm1", "ran_norm2"]

def draws2data(am, data_draws2data):
    # 1. D
    n_t = data_draws2data.get('n_t')

    # 2. P
    ## a. set_prior_struc
    model = StanVensimModel("mngInven_gp", am, 0.0, list(range(1, n_t + 1)), data_dict = data_draws2data)

    ## b. set_prior_var
    ### 1) ode parameter prior
    model.set_prior("inventory_adjustment_time", "normal", 2, 0.4)  # heuristic of 1/5
    model.set_prior("minimum_order_processing_time", "normal", 0.05, 0.01)

    ### 2) sampling distribution parameter (measruement error) prior
    # dispersion distribution plots:
    # https://publish.obsidian.md/tolzul/DataInDM/Wiki_Week/08W2_hier_comp_pinocchio/Hierarchical+prior
    model.set_prior("m_noise_scale", "inv_gamma", 2, 0.1)

    ### 3)  measurement \tilde{y}_{1..t} ~ f(\theta, t)_{1..t}
    model.set_prior("wip_with_p_noise_obs", "normal", "wip_with_p_noise", "m_noise_scale")
    model.set_prior("inventory_with_p_noise_obs", "normal", "inventory_with_p_noise", "m_noise_scale")

    ### 1) + 2) + 3)
    model.build_stan_functions()

    ### c. set_prior_demand #TODO

    ## 1+2. P(D)
    model.stanify_draws2data()
    draws2data_model = cmdstanpy.CmdStanModel(stan_file="stan_files/mngInven_draws2data_gp.stan")

    #model.print_info()
    ## 3. A(P(D))
    return draws2data_model.sample(data=data_draws2data, fixed_param=True)


def data2draws(am, data_data2draws):
    # 1. D
    n_t = data_data2draws.get('n_t')

    ## 2. P
    ### a. set_prior_struc
    model = StanVensimModel("mngInven_gp", am, 0.0, list(range(1, n_t + 1)), data_dict=data_data2draws)

    ### b. set_prior_scalar
    ##### 1) ode parameter prior
    model.set_prior("inventory_adjustment_time", "normal", 2, 0.4)
    model.set_prior("minimum_order_processing_time", "normal", 0.05, 0.01)

    ##### 2) sampling distribution parameter (measruement error) prior
    model.set_prior("m_noise_scale", "inv_gamma", 2, 0.1) # mean beta, alpha-1

    ### 3)  measurement \tilde{y}_{1..t} ~ f(\theta, t)_{1..t}
    model.set_prior("wip_with_p_noise_obs", "normal", "wip_with_p_noise", "m_noise_scale")
    model.set_prior("inventory_with_p_noise_obs", "normal", "inventory", "m_noise_scale")

    ##### 1) + 2) + 3)
    model.build_stan_functions()  # TODO check cache and build if not exist

    ## 1+2. P(D)
    model.stanify_data2draws()
    data2draws_model = cmdstanpy.CmdStanModel(stan_file="stan_files/mngInven_gp_data2draws.stan") # neg_binom doesn't receive vector; manual add for loop in stanfile

    ## 3. A(P(D))
    return data2draws_model.sample(data=data_data2draws)


def trunc4StanNegBinom(real_series):
    """DataArray type real series

    """
    real_series = real_series.values.flatten()
    int_series = [math.trunc(i) for i in real_series]
    return int_series


def draws2data2draws():
# simulation-based calibration
    return

customer_order_rate = pd.read_csv('data/example_retail_sales.csv').iloc[:4, :]
n_t = customer_order_rate.shape[0] - 1
n_firm = 2 # for hierarchical model
vf = VensimFile('vensim_models/mngChain/InventoryManagementWeek5_GP.mdl')
vf.parse()
am = vf.get_abstract_model()

# Draws2Data
## driving data
ran_norm1 = np.random.normal(0,1, size=n_t)
ran_norm2 = np.random.normal(0,1, size=n_t)
ran_norm3 = np.random.normal(0,1, size=n_t)
ran_norm4 = np.random.normal(0,1, size=n_t)
# all states need placeholder
placeholder = np.zeros(shape = n_t)
data_draws2data = {
    "n_t": n_t,
    "production_start_rate_af_p_noise_obs": placeholder,
    "production_rate_af_p_noise_obs":  placeholder,
    "customer_order_rate": ran_norm1, #customer_order_rate.loc[:, 'y'],
    "ran_norm1": ran_norm1,
    "ran_norm2": ran_norm2,
    "ran_norm3": ran_norm3,
    "ran_norm4": ran_norm4,
}

prior_pred = draws2data(am, data_draws2data)
prior_pred.draws_xr(obs_stock_lst).to_netcdf("data/mngInvenPriorPredData_gp.nc")

# Data2Draws
prior_pred_obs = xr.open_dataset("data/mngInvenPriorPredData_gp.nc")

data_data2draws = {
    "n_obs_state" : 2,
    "n_t": n_t,
    "n_firm": n_firm,
    "work_in_process_inventory_obs": trunc4StanNegBinom(prior_pred_obs['work_in_process_inventory_obs'].mean('draw')),
    "inventory_obs": trunc4StanNegBinom(prior_pred_obs['inventory_obs'].mean('draw')),
    "ran_norm1": ran_norm1,
    "ran_norm2": ran_norm2,
    "ran_norm3": ran_norm3,
    "ran_norm4": ran_norm4,
}
data2draws(am, data_data2draws).draws_xr().to_netcdf("data/mngInvenPostDraws_gp.nc")

# Compare Prior and Posterior
posterior = xr.open_dataset("data/mngInvenPostDraws.nc")
inventory_adjustment_time = posterior['inventory_adjustment_time']
minimum_order_processing_time = posterior['minimum_order_processing_time']

bins = np.linspace(0, 5, 100)
plt.hist([np.random.normal(2, 0.4) for _ in range(1000)], bins, alpha=0.5, label='inventory_adjustment_time_true')
plt.hist(inventory_adjustment_time.mean(dim = ["chain"]), bins, alpha=0.5, label='inventory_adjustment_time_estimate')
plt.legend(loc='upper right')
plt.show()

bins = np.linspace(0, 0.1, 100)
plt.hist([np.random.normal(0.05, 0.01) for _ in range(1000)], bins, alpha=0.5, label='minimum_order_processing_time_true')
plt.hist(minimum_order_processing_time.mean(dim = ["chain"]), bins, alpha=0.5, label='minimum_order_processing_time_estimate')
plt.legend(loc='upper right')
plt.show()