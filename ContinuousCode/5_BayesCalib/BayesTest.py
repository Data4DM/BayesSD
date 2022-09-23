
import pandas as pd
import pysd
import numpy as np
import scipy.optimize
import math
from sklearn.preprocessing import StandardScaler
import pandas as pd
from pysd.translators.vensim.vensim_file import VensimFile
from stanify.builders.stan.stan_model import StanVensimModel
import numpy as np
import cmdstanpy
import matplotlib.pyplot as plt
import random
import arviz as az

# model = pysd.read_vensim('vensim_models/behavioralFinance/alpha.mdl')

#vf = pysd.read_vensim('vensim_models/behavioralFinance/alpha.mdl')
obs_stock_df = pd.read_csv('data/hudson-bay-lynx-hare.csv')
vf = VensimFile('vensim_models/behavioralFinance/alpha.mdl')
vf.parse()
am = vf.get_abstract_model()
n_t = obs_stock_df.shape[0] - 1
data_draws2data = {
    "n_t": n_t,
    "alpha_price_obs":  obs_stock_df.loc[1:, 'Predator'].values.tolist(),
}
model = StanVensimModel("alpha", am, 0.0, list(range(1, n_t + 1)), data_dict = data_draws2data)
model.build_stan_functions()
#
# est_param_lst = ["inventory_adjustment_time", "minimum_order_processing_time"]
# ass_param_lst = ["customer_order_rate", "inventory_coverage", "manufacturing_cycle_time", "safety_stock_coverage", "time_to_average_order_rate", "wip_adjustment_time"]
# obs_stock_lst = ["work_in_process_inventory", "inventory"]
#
# # 1. D
# n_t = obs_stock_df.shape[0] - 1
# data_draws2data = {
#     "n_t": n_t,
#     "inventory_adjustment_time_obs":  obs_stock_df.loc[1:, 'Predator'].values.tolist(),
#     "minimum_order_processing_time_obs": obs_stock_df.loc[1:, 'Prey'].values.tolist(),
# }
#
# # 2. P
# model = StanVensimModel("mngChain", am, 0.0, list(range(1, n_t + 1)), data_dict = data_draws2data)
#
# ## a. set_prior_var
# ### 1) ode parameter prior
# model.set_prior("inventory_adjustment_time", "normal", 2, 0.1)
# model.set_prior("minimum_order_processing_time", "normal", 0.05, 0.001)
#
# ### 2) sampling distribution parameter (measruement error) prior
# model.set_prior("sigma", "lognormal", np.log(0.001), 0.001)
#
# ### 3)  measurement \tilde{y}_{1..t} ~ f(\theta, t)_{1..t}
# model.set_prior("predator_obs", "lognormal", "predator", "sigma")
# model.set_prior("prey_obs", "lognormal", "prey", "sigma")
#
# ## b. set_prior_struc
# model.build_stan_functions()
#
# ## c. set_prior_demand #TODO
#
# ## a + b + c
# model.stanify_draws2data()
#
# # 1+2. P(D)
# draws2data_model = cmdstanpy.CmdStanModel(stan_file="stan_files/mngChain_draws2data.stan")
#
# # 3. A(P(D))
# prior_pred = draws2data_model.sample(data=data_draws2data, fixed_param=True)