import math
import cmdstanpy
from stanify.builders.stan.stan_model import StanVensimModel
from stanify.calibrator.visualizer import prior_pred, posterior_pred, loocv

def draws2data(model, draws2data_numeric_assumption):
    prior_pred = model.stanify_draws2data().sample(data=draws2data_numeric_assumption, fixed_param=True, iter_sampling = 1)

    # store data
    prior_pred.draws_xr().to_netcdf(f"data/{ model.model_name}_post_draws.nc")

    # return only the obs
    target_simulated_vector_lst = model.setting_dict['target_simulated_vector']
    obs_dict = {i: prior_pred.draws_xr()[i + "_obs"].values.flatten() for i in target_simulated_vector_lst}

    return obs_dict


def data2draws(model, data2draws_numeric_assumption):
    #data2draws_model = cmdstanpy.CmdStanModel(stan_file="stan_files/" + f"{model_settings.get('model_name')}_data2draws.stan") # neg_binom doesn't receive vector; manual add for loop in stanfile
    prior_pred = model.stanify_draws2data().sample(data=data2draws_numeric_assumption)

    return prior_pred.draws_xr()

def trunc4StanNegBinom(real_series):
    """DataArray type real series

    """
    real_series = real_series.values.flatten()
    int_series = [math.trunc(i) for i in real_series]
    return int_series

def draws2data2draws():
# simulation-based calibration
    return
