import math
import pandas as pd
from scipy.stats import truncnorm
import xarray as xr
import numpy as np
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.calibrator.draws_data_mapper import  draws2data, data2draws, draws2data2draws
from stanify.builders.stan.stan_model import StanVensimModel
import cmdstanpy

vf = VensimFile('vensim_models/mngChain/InventoryManagementWeek7.mdl')
vf.parse()
structural_assumption = vf.get_abstract_model()

n_t = 20
model_settings = {
    "est_param_scalar" : ("inventory_adjustment_time", "minimum_order_processing_time"),
    "ass_param_scalar" : ("inventory_coverage", "manufacturing_cycle_time", "safety_stock_coverage", "time_to_average_order_rate", "wip_adjustment_time"),
    "target_simulated_vector" : ("production_start_rate_stocked", "production_rate_stocked"),
    "driving_data_vector" : ("customer_order_rate", "process_noise_std_norm_data", "production_start_rate_m_noise_trun_norm_data", "production_rate_m_noise_trun_norm_data"),
    "model_name": "mngIven",
    "integration_times": list(range(1, n_t + 1)),
    "initial_time": 0.0
}

## numeric data (using values in vensim; cannot specify)
numeric_assumption = {
    "n_t": n_t,
    "customer_order_rate": pd.read_csv('data/example_retail_sales.csv').iloc[:n_t, 1].values,
    "process_noise_std_norm_data": np.random.normal(0,1, size=n_t),
    "production_start_rate_m_noise_trun_norm_data": truncnorm.rvs(0, 2, size=n_t),
    "production_rate_m_noise_trun_norm_data": truncnorm.rvs(0, 2, size=n_t),
}


model = StanVensimModel(structural_assumption, setting_dict = model_settings, numeric_assump_dict = numeric_assumption)

#model.set_settings(model_settings)

model.set_prior("inventory_adjustment_time", "normal", 2, 0.4)
model.set_prior("minimum_order_processing_time", "normal", 0.05, 0.01)
model.set_prior("m_noise_scale", "inv_gamma", 2, 0.1)

for key in model_settings.get('target_simulated_vector'):
    model.set_prior(f"{key}_obs", "normal", f"{key}", "m_noise_scale")

model.build_stan_functions()

prior_pred_obs = draws2data(model, numeric_assumption)


numeric_assumption["n_obs_state"] = 2

for key, value in prior_pred_obs.items():
    numeric_assumption[key + "_obs"] = value

posterior = data2draws(model, numeric_assumption)
print(posterior)


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