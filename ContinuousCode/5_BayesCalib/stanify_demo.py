import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.calibrator.draws_data_mapper import  draws2data, data2draws, draws2data2draws
from stanify.builders.stan.stan_model import StanVensimModel

# without process noise
# generator
vf = VensimFile('vensim_models/prey_predator/prey_predator.mdl')
vf.parse()
structural_assumption = vf.get_abstract_model()

n_t = 20
setting_assumption = {
    "est_param_scalar" : ("alpha", "beta", "gamma", "delta", "prey", "pred"),
    "target_simulated_vector" : ( "prey", "predator"),
    "driving_data_vector" : "process_noise_std_norm_data",
    "model_name": "prey_predator",
    "integration_times": list(range(1, n_t + 1)),
    "initial_time": 0.0
}

## numeric data (using values in vensim)
numeric_assumption = {
    "n_t": n_t,
    "process_noise_std_norm_data": np.random.normal(0,1, size=n_t),
    "std_normal_data_alpha": np.random.normal(0,1, size=n_t),
    "std_normal_data_beta": np.random.normal(0,1, size=n_t),
    "std_normal_data_delta": np.random.normal(0,1, size=n_t),
    "std_normal_data_gamma": np.random.normal(0,1, size=n_t),
}

for key in setting_assumption.get('target_simulated_vector'):
    numeric_assumption[f"{key}_obs"] = list(range(1, n_t + 1))

model = StanVensimModel(structural_assumption, setting_dict = setting_assumption, numeric_assump_dict = numeric_assumption)

model.set_prior("alpha", "normal", 0.8, 0.08, lower = 0)
model.set_prior("beta", "normal", 0.05, 0.005, lower = 0)
model.set_prior("delta", "normal", 0.05, 0.005, lower = 0)
model.set_prior("gamma", "normal", 0.8, 0.08, lower = 0)

model.set_prior("prey", "normal", 30, 0.0, lower = 0)
model.set_prior("predator", "normal", 4, 0.0, lower = 0)

model.set_prior("m_noise_scale", "normal", 0.5, 0.05, lower = 0)

for key in setting_assumption.get('target_simulated_vector'):
    model.set_prior(f"{key}_obs", "normal", f"{key}", "m_noise_scale")

model.build_stan_functions()

prior_pred_obs = draws2data(model, numeric_assumption)
pd.DataFrame(prior_pred_obs).plot()

# estimator
numeric_assumption["n_obs_state"] = 2

for key, value in prior_pred_obs.items():
    numeric_assumption[key + "_obs"] = value

posterior = data2draws(model, numeric_assumption)



# with process noise
# vf = VensimFile('prey_predator/prey_predator.mdl')
# vf.parse()
# structural_assumption = vf.get_abstract_model()
#
# n_t = 20
# setting_assumption = {
#     "est_param_scalar" : ("alpha", "beta", "gamma", "delta"),
#     "target_simulated_vector" : ( "prey", "predator"),
#     "driving_data_vector" : ("process_noise_std_norm_data"),
#     "model_name": "prey_predator",
#     "integration_times": list(range(1, n_t + 1)),
#     "initial_time": 0.0
# }
#
# ## numeric data (using values in vensim)
# numeric_assumption = {
#     "n_t": n_t,
#     "process_noise_std_norm_data": np.random.normal(0,1, size=n_t),
#     "production_start_rate_m_noise_trun_norm_data": truncnorm.rvs(0, 2, size=n_t),
#     "production_rate_m_noise_trun_norm_data": truncnorm.rvs(0, 2, size=n_t),
# }
#
# for key in setting_assumption.get('target_simulated_vector'):
#     numeric_assumption[f"{key}_obs"] = list(range(1, n_t + 1))
#
# model = StanVensimModel(structural_assumption, setting_dict = setting_assumption, numeric_assump_dict = numeric_assumption)
#
# model.set_prior("alpha", "normal", 0.8, 0.1, lower = 0)
# model.set_prior("beta", "normal", 0.05, 0.001, lower = 0)
# model.set_prior("delta", "normal", 0.05, 0.001, lower = 0)
# model.set_prior("gamma", "normal", 0.8, 0.1, lower = 0)
#
# model.set_prior("m_noise_scale", "normal", 0.01, 0.0005, lower = 0)
#
# for key in setting_assumption.get('target_simulated_vector'):
#     model.set_prior(f"{key}_obs", "normal", f"{key}", "m_noise_scale")
#
# model.build_stan_functions()
#
# prior_pred_obs = draws2data(model, numeric_assumption)
# print(prior_pred_obs)
#
# numeric_assumption["n_obs_state"] = 2
#
# for key, value in prior_pred_obs.items():
#     numeric_assumption[key + "_obs"] = value
#
# posterior = data2draws(model, numeric_assumption)
# print(posterior)