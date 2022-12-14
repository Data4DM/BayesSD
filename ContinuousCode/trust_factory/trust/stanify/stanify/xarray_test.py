import xarray as xr
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
import arviz as az
az.style.use("arviz-doc")
import pandas as pd
#
# # bind S number of dataset into dataset? S number of dataset,
#
# # 1. given parameter (chain, draw), np.array
# # sbc_1 = xr.DataArray(np.random.randn(2, 3), dims=("chain", "draws"), coords={"chain": [10, 20]})
# # sbc_2 = xr.DataArray(np.random.randn(2, 3), dims=("chain", "draws"), coords={"x": [10, 20]})
#
# # 2. bind two sbc_1, sbc_2 into dataset and add `prior_draws` as dims and coords
#
# # sbc_bind = xr.Dataset()
# #
# # #3.
# # print(sbc_1)
# # print(sbc_2)
#
# temp = 15 + 8 * np.random.randn(2, 2, 3)
#
# precip = 10 * np.random.rand(2, 2, 3)
#
# lon = [[-99.83, -99.32], [-99.79, -99.23]]
#
# lat = [[42.25, 42.21], [42.63, 42.59]]
#
# ds = xr.Dataset(
#     {
#         "temperature": (["x", "y", "time"], temp),
#         "precipitation": (["x", "y", "time"], precip),
#     },
#     coords={
#         "lon": (["x", "y"], lon),
#         "lat": (["x", "y"], lat),
#         "time": pd.date_range("2014-09-06", periods=3),
#         "reference_time": pd.Timestamp("2014-09-05"),
#     },
# )
# print(ds)
# print(ds.dims['x'])
#
# from cmdstanpy import CmdStanModel, write_stan_json
#
# import arviz as az
# import pandas as pd
# import numpy as np
# import xarray as xr
# data = pd.read_csv("../data/linear_regression_data.csv", index_col=0)
# time_since_joined = data.time.values
# slack_comments = data.comments.values
# github_commits = data.commits.values
# names = data.index.values
# N = len(names)
#
# print(slack_comments, github_commits, names)
# prior_model = CmdStanModel(stan_file="../stan_files/arviz/linreg_prior.stan")
# linreg_prior_data_dict = {"N": N, "time_since_joined": time_since_joined}
# write_stan_json("linreg_prior.data.json", linreg_prior_data_dict)
# prior_fit = prior_model.sample(data="linreg_prior.data.json", chains=2, iter_sampling=100)
# idata_kwarg = dict(
#     prior_predictive = ["slack_comments_hat", "github_commits_hat"],
#     posterior_predictive = ["slack_comments_hat", "github_commits_hat"],
#     coords = {"developer": names},
#     dims = {
#         "slack_comments":["developer"],
#         "github_comments":["developer"],
#         "slack_comments_hat": ["developer"],
#         "github_comments_hat": ["developer"],
#         "time_since_joined": ["developer"],
#     }
#
# )
# idata_kwargs = dict(
#     prior_predictive=["slack_comments_hat","github_commits_hat"],
#     posterior_predictive=["slack_comments_hat","github_commits_hat"],
#
#     coords={"developer": names},
#     dims={
#         "slack_comments": ["developer"],
#         "github_commits" : ["developer"],
#         "slack_comments_hat": ["developer"],
#         "github_commits_hat": ["developer"],
#         "time_since_joined": ["developer"],
#     }
# )
# fun = az.from_cmdstanpy(prior= prior_fit, **idata_kwarg)
# print(fun)

# sbc = xr.open_dataset("../data/pp_S3R2/generator.nc")
#
# print(sbc)
# print(sbc.posterior)
# print(sbc.groups)

precision ={
    "S": 3, # # of draws from prior
    "M": 100, # # of draws from posterior (# of chains * # of draws from each chain)
    "N": 2, # # of observation
    "Q": 3, # # of target_simulated_stock
    "R": 3, # # of subgroups for hierarchical Bayes
    "time_step": .03,
    "integration_times": np.arange(0, 200) * .03 + 0.01,  # initial_time < integration_times, .03 need not be time_step, but length should be N
}

idata_kwargs = dict(
    prior_predictive=["prey_obs", "predator_obs"],
    posterior_predictive=["prey_obs_post", "predator_obs_post"],
    log_likelihood={
        "loglik": "loglik"
    },
    coords={
        "time": [n for n in range(precision['N'])],
        "stock": [q for q in range(precision['Q'])],
    },
    dims={
        'initial_outcome': ["stock"],
        'integrated_result': ["time", "stock"],
        'prey': ["time"],
        'predator': ["time"],
        'process_noise': ["time"],
        "prey_obs": ["time"],
        "predator_obs": ["time"],
    }
)
setting = {
    "est_param_names": ("prey_birth_frac", "pred_birth_frac"),
    "hier_est_param_names": ("pred_birth_frac", ), #need ,) to be list downstream  # chosen among "est_param_names"
    "target_simulated_vector_names": ("prey", "predator"),
    "driving_vector_names": ("process_noise_uniform_driving"),
    "model_name": "S3R4",
}

# sample = norm(0, 1).rvs(1000)
# distribution = norm(0, 1)
# az.plot_ecdf(sample, cdf=distribution.cdf, confidence_bands=True)
# plt.show()