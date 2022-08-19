For business, graphics should be supplied for better communication. In python, arviz and its `inferenceData`  type gives template for what information is needed to create a decent plot including posterior predictive check with `plot_ppc`, Bayesian p-value with `plot_bpv`.

Following is the example for cmdstanpy
```{python}
from cmdstanpy import CmdStanModel

schools_code = """
data {
    int<lower=0> J;
    real y[J];
    real<lower=0> sigma[J];
}

parameters {
    real mu;
    real<lower=0> tau;
    real theta_tilde[J];
}

transformed parameters {
    real theta[J];
    for (j in 1:J)
        theta[j] = mu + tau * theta_tilde[j];
}

model {
    mu ~ normal(0, 5);
    tau ~ cauchy(0, 5);
    theta_tilde ~ normal(0, 1);
    y ~ normal(theta, sigma);
}

generated quantities {
    vector[J] log_lik;
    vector[J] y_hat;
    for (j in 1:J) {
        log_lik[j] = normal_lpdf(y[j] | theta[j], sigma[j]);
        y_hat[j] = normal_rng(theta[j], sigma[j]);
    }
}
"""

with open("./eight_school.stan", "w") as f:
    print(schools_code, file=f)

stan_file = "./eight_school.stan"
stan_model = CmdStanModel(stan_file=stan_file)
stan_model.compile()

eight_school_data = {'J': 8,
                     'y': np.array([28., 8., -3., 7., -1., 1., 18., 12.]),
                     'sigma': np.array([15., 10., 16., 11., 9., 11., 10., 18.])
                    }

stan_fit = stan_model.sample(data=eight_school_data)

cmdstanpy_data = az.from_cmdstanpy(
    posterior=stan_fit,
    posterior_predictive='y_hat',
    observed_data={'y' : eight_school_data["y"]},
    log_likelihood='log_lik',
    coords={'school': np.arange(eight_school_data['J'])},
    dims={
        'theta': ['school'],
        'y': ['school'],
        'log_lik': ['school'],
        'y_hat': ['school'],
        'theta_tilde': ['school']
        }
)
```

It uses Xarray with the following information:
-   posterior
-   posterior_predictive
-   log_likelihood
-   sample_stats
-   prior
-   prior_predictive
-   observed_data

Actaul xarrary can be checked in [here](https://arviz-devs.github.io/arviz/getting_started/CreatingInferenceData.html#from-cmdstanpy)

https://notebook.community/mcmcplotlib/mcmcplotlib/doc/notebooks/InferenceDataCookbook