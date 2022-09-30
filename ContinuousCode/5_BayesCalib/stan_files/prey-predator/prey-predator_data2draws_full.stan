functions{
    #include prey-predator_functions.stan
}

data{
    int n_obs_state;
    int n_t;
    vector[20] predator_obs;
    vector[20] prey_obs;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}

parameters{
    real <lower =0> alpha;
    real <lower =0> gamma;
    real <lower =0> beta;
    real <lower =0> delta;
    real <lower =0> sigma;
}

transformed parameters {
    // Initial ODE values
    real predator__init = 4;
    real prey__init = 30;

    vector[2] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = predator__init;
    initial_outcome[2] = prey__init;

    vector[2] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, gamma, beta, delta, alpha);
    array[n_t] real predator = integrated_result[:, 1];
    array[n_t] real prey = integrated_result[:, 2];
}

model{
    alpha ~ lognormal(log(0.8), 0.1);
    gamma ~ lognormal(log(0.8), 0.1);
    beta ~ lognormal(log(0.05), 0.001);
    delta ~ lognormal(log(0.05), 0.001);
    sigma ~ lognormal(-4.605170185988091, 0.1);
    predator_obs ~ lognormal(predator, sigma);
    prey_obs ~ lognormal(prey, sigma);
}

generated quantities{
    real log_lik;
    vector[n_t] predator_tilde = to_vector(lognormal_rng(predator, sigma));
    vector[n_t] prey_tilde = to_vector(lognormal_rng(prey, sigma));

    log_lik += lognormal_lpdf(predator_obs|predator, sigma);
    log_lik += lognormal_lpdf(predator_obs|predator, sigma);
}