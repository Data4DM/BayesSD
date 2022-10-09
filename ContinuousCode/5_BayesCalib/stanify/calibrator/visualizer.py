import matplotlib
import matplotlib.pyplot as plt

def prior_pred(draws2data_obs):
    #az.plot_density(draws2data, var_names=["production_start_rate_stocked_obs", "production_rate_stocked_obs"]);
    ## 3. A(P(D))
    # fig, ax = plt.subplots(figsize=(15, 8))
    # ax.plot(pd.DataFrame(prior_pred.draws_xr('production_start_rate_stocked_obs').mean(["chain", "draw"]).production_start_rate_stocked_obs), label = "production_start_rate_stocked_obs")
    # ax.plot(pd.DataFrame(prior_pred.draws_xr('production_rate_stocked_obs').mean(["chain", "draw"]).production_rate_stocked_obs), label = "production_rate_stocked_obs")
    # ax.legend()
    # plt.savefig(f"{model_name}_prior_pred.png")
    # ax = obs_df.plot()
    # ax.figure.savefig("obs_df.png")
    # plt.show()
    return


def posterior_pred(data2draws):
    return


def loocv(data2draws):
    return