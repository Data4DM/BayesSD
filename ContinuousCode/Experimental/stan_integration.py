from distutils.command.build import build
from posixpath import split
from time import time
import cmdstanpy
from scipy.interpolate import splev
import numpy as np
import pandas as pd
import os
import matplotlib.pyplot as plt
from sklearn.preprocessing import PowerTransformer


def build_spline_knots(n_knots, timeframe=31):
    degree = 4
    knots = np.linspace(1, timeframe, num=n_knots - degree * 2)
    knots_padded = np.concatenate((np.full(degree, 1), knots, np.full(degree, timeframe)))
    basis = []
    for i in range(knots_padded.shape[0]):
        c = np.zeros(knots_padded.shape[0])
        c[i] = 1
        basis.append(splev(np.arange(1, timeframe + 1), (knots_padded, c, degree)))
    basis_df = pd.DataFrame(basis).transpose().set_index(np.arange(1, timeframe + 1))

    return basis_df

def fit_failure_simple(failures):
    length = len(failures)
    age_vec = np.arange(1, length + 1, dtype=np.int32)
    ship_vec = np.ones(length, dtype=np.int32)
    return fit_failure_count(failures, age_vec, ship_vec, 1, length + 1)


def fit_failure_count(failures, age_vec, ship_vec, n_ship_types, max_age):
    scaler = PowerTransformer()
    scaled_y = scaler.fit_transform(failures.reshape(-1, 1)).flatten()
    y_count = scaled_y.shape[0]

    n_knots = 13

    spline = build_spline_knots(n_knots, timeframe=max_age).values.tolist()

    stan_data = {
        "K": n_knots,
        "N": y_count,
        "T": max_age,
        "S": n_ship_types,
        "E": 1,
        "age": age_vec,
        "ship": ship_vec,
        "engine": np.ones(n_ship_types, dtype=np.int32),
        "B": spline,
        "Y": scaled_y,
        "N_hat": 1,
        "age_hat": [max_age],#np.tile(np.arange(1, max_age + 1, dtype=np.int32), n_ship_types),
        "ship_hat": [1]#np.tile(np.arange(1, n_ship_types + 1, dtype=np.int32), max_age)
    }

    yhat = fit_stan_model("policy_models/spline.stan", stan_data)

    return scaler.inverse_transform(yhat.reshape(-1, 1)).flatten()


def fit_stan_model(stan_file_path, data_dict, *args, **kwargs):
    model = cmdstanpy.CmdStanModel(stan_file = stan_file_path)

    fit = model.sample(data_dict, *args, **kwargs)

    #print(fit.summary())

    yhat = np.mean(fit.stan_variable("y_new_pred"), axis=0)

    return yhat


if __name__ == "__main__":
    stan_model_path = "policy_models/spline.stan"

    n_knots = 13
    timeframe = 31
    splines = build_spline_knots(n_knots, timeframe)


    #y_data = pd.read_csv(os.path.realpath("../data/y_count_original.csv"), usecols=["y"])
    # original_y_data = pd.read_csv(os.path.realpath("../data/y_count_original.csv"))
    # age_data = pd.read_csv(os.path.realpath("../data/x_age.csv"), usecols=["age"])
    # ship_data = pd.read_csv(os.path.realpath("../data/ship_index.csv"), usecols=["ship"])
    # ship_engine_mapping_data = pd.read_csv(os.path.realpath("../data/engine_type1to5.csv"), usecols=["engine"])
    # engine_data = pd.DataFrame({"engine": np.zeros(y_data.shape[0], dtype=np.int32)})
    # for x in range(y_data.shape[0]):
    #     engine_data.at[x, "engine"] = ship_engine_mapping_data.at[ship_data.at[x, "ship"]-1, "engine"]


    # engine_count = int(np.max(engine_data["engine"]))
    # ship_count = int(np.max(ship_data["ship"]))
    # max_age = int(np.max(age_data["age"]))
    # data_count = y_data.shape[0]
    # print(engine_count, ship_count, max_age, data_count)

    # test_data = {
    #     "K" : n_knots,
    #     "N" : data_count,  # number of total values
    #     "T" : timeframe,  # length of time of data(31)
    #     "S" : ship_count, #failure_df.shape[1],  # number of ships(99)
    #     "E" : engine_count,  # number of unique engines
    #     "age": age_data["age"].values.tolist(),
    #     "engine": ship_engine_mapping_data["engine"].values.tolist(),  # engine type mapping
    #     "ship": ship_data["ship"].values.tolist(),#[int(i) for i in np.where(~np.isnan(failure_df).transpose())[0] + 1],  # ship type mapping
    #     "Y": y_data["y"].values.tolist(), # all values to list
    #     "B": splines.values.tolist(),  # spline values, 2d list
    #     "N_hat": data_count,
    #     "age_hat": age_data["age"].values.tolist(),
    #     "ship_hat": ship_data["ship"].values.tolist(),
    # }

    # fit_stan_model(stan_model_path, test_data, chains=4, parallel_chains=4, show_console=True)

    y_data = np.random.normal(40, 40, 10)
    age = np.arange(1, 11, dtype=np.int32)
    ship = np.ones(10, dtype=np.int32)

    print(fit_failure_count(y_data, age, ship, 1, 11))