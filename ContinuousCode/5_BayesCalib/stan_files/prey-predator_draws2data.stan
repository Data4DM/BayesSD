functions{
#include prey-predator_functions.stan
}
data{
    int n_t;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}


generated quantities{
    real alpha = normal_rng(0.8, 0.1);
    real beta = normal_rng(0.05, 0.001);
    real delta = normal_rng(0.05, 0.001);
    real gamma = normal_rng(0.8, 0.1);
    real sigma = lognormal_rng(-6.907755278982137, 0.001);

    // Initial ODE values
    real prey__init = 30;
    real predator__init = 4;

    vector[2] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = prey__init;
    initial_outcome[2] = predator__init;

    vector[2] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, delta, beta, alpha, gamma);
    array[n_t] real prey = integrated_result[:, 1];
    array[n_t] real predator = integrated_result[:, 2];

    vector[20] predator_obs = to_vector(lognormal_rng(predator, sigma));
    vector[20] prey_obs = to_vector(lognormal_rng(prey, sigma));
}
