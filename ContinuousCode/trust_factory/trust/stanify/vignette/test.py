import os

import arviz as az
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from cmdstanpy import CmdStanModel
from stanify.calibrator.draws_data_mapper import draws2data2draws
from stanify.calibrator.calib_utilities import check_consistency
import random
random.seed(10)
import warnings
warnings.filterwarnings('ignore')

precision ={
    "S": 1, # # of draws from prior
    "M": 1000, # # of draws from posterior (# of chains * # of draws from each chain)
    "N": 3, # # of observation
    "R": 2, # # of subgroups for hierarchical Bayes
}

setting = {
    "est_param_names" : ["fractional_wip_adjustment_time", "fractional_inventory_adjustment_time"],
    "hier_est_param_names": [ "fractional_wip_adjustment_time"],
    "target_simulated_vector_names" : ["production_rate_stocked", "production_start_rate_stocked"],
    "driving_vector_names" : ["customer_order_rate", "process_noise_uniform_driving"],
    "model_name": "inven_allpn"
}
init_order = 100
# driving data
numeric = {
        "customer_order_rate": np.sin(np.arange(0, precision['N'])*1000) * init_order * .5 + init_order,
        "process_noise_uniform_driving": np.random.uniform(low=-.5, high=.5, size=precision['N']),
        'process_noise_scale': 10
}

prior = {
    ("fractional_inventory_adjustment_time", "normal", 1/8, 1/8 *.1, 0),
    ("fractional_wip_adjustment_time", "normal", 1/2, 1/2 * .1, 0),
    ("m_noise_scale", "normal", init_order * .1, init_order * .01, 0)
}

output_format = dict(
    prior_predictive=["production_rate_stocked_obs", "production_start_rate_stocked_obs"],
    posterior_predictive=["production_rate_stocked_obs_post", "production_start_rate_stocked_obs_post"],
    log_likelihood={
        "loglik": "loglik"
    },
    coords={
        "time": [n for n in range(precision['N'])],
        "stock": setting['target_simulated_vector_names'],
        "region": [r for r in range(precision['R'])]
    },
    dims={
        'initial_outcome': ["stock"],
        'integrated_result': ["time", "stock"],
        'production_rate_stocked': ["time"],
        'production_start_rate_stocked': ["time"],
        "production_rate_stocked_obs": ["time"],
        "production_start_rate_stocked_obs": ["time"],
        'process_noise': ["time"],
    }
)

if check_consistency(setting, precision, numeric, prior, output_format):
    idata_orig, model = draws2data2draws('../vensim_models/inventory/inventory_fracparam.mdl', setting, precision, numeric, prior, output_format)
#
#
# precision ={
#     "S": 1, # # of draws from prior
#     "M": 100, # # of draws from posterior (# of chains * # of draws from each chain)
#     "N": 40, # # of observation
#     "R": 3, # # of subgroups for hierarchical Bayes
# }
#
# setting = {
#     "est_param_names": ["prey_birth_frac", "pred_birth_frac"],
#     "hier_est_param_names" : ["pred_birth_frac"],
#     "target_simulated_vector_names": ["prey", "predator"],
#     "driving_vector_names": ["process_noise_uniform_driving"],
#     "model_name": "prey_predator",
# }
#
# numeric = {
#     "process_noise_uniform_driving": np.random.uniform(low=-.5, high=.5, size = precision['N']),
#     'process_noise_scale': 0.01
# }
#
# prior = {
#     ("prey_birth_frac", "normal", 0.8, 0.08, 0),
#     ("pred_birth_frac", "normal", 0.05, 0.005, 0),
#     ("m_noise_scale", "normal", 1, .1, 0)
# }
#
# output_format = dict(
#     prior_predictive=["prey_obs", "predator_obs"],
#     posterior_predictive=["prey_obs_post", "predator_obs_post"],
#     log_likelihood={
#         "loglik": "loglik"
#     },
#     coords={
#         "time": [n for n in range(precision['N'])],
#         "stock": setting['target_simulated_vector_names'],
#         "region": [r for r in range(precision['R'])]
#     },
#     dims={
#         'initial_outcome': ["stock"],
#         'integrated_result': ["time", "stock"],
#         'prey': ["time"],
#         'predator': ["time"],
#         'process_noise': ["time"],
#         "prey_obs": ["time"],
#         "predator_obs": ["time"],
#     }
# )