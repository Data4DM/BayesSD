functions{
#include prey_predator_functions.stan
}
data{
    int n_t;
    vector[20] process_noise_std_norm_data;
    vector[20] production_start_rate_m_noise_trun_norm_data;
    vector[20] production_rate_m_noise_trun_norm_data;
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
    real m_noise_scale = normal_rng(0.01, 0.0005);

    // Initial ODE values
    real predator__init = 4;
    real prey__init = 30;

    vector[2] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = predator__init;
    initial_outcome[2] = prey__init;

    vector[2] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, gamma, delta, beta, alpha);
    array[n_t] real predator = integrated_result[:, 1];
    array[n_t] real prey = integrated_result[:, 2];

    vector[20] prey_obs = to_vector(normal_rng(prey, m_noise_scale));
    vector[20] predator_obs = to_vector(normal_rng(predator, m_noise_scale));
}
