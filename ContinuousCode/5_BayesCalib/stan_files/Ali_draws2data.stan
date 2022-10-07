functions{
#include Ali_functions.stan
}
data{
    int n_t;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}


generated quantities{
    real maximum_shipment_rate = normal_rng(2, 0.4);
    real m_noise_scale = inv_gamma_rng(2, 0.1);

    // Initial ODE values
    real inventory__init = 20;

    vector[1] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = inventory__init;

    vector[1] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, maximum_shipment_rate);
    array[n_t] real inventory = integrated_result[:, 1];

    vector[20] inventory_obs = to_vector(normal_rng(inventory, m_noise_scale));
}
