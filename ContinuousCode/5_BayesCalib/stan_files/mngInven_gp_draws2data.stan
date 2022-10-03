functions{
#include mngInven_gp_functions.stan
}
data{
    int n_t;
    vector[3] customer_order_rate;
    vector[3] ran_norm1;
    vector[3] ran_norm2;
    vector[3] ran_norm3;
    vector[3] ran_norm4;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3};
}


generated quantities{
    real inventory_adjustment_time = normal_rng(2, 0.4);
    real minimum_order_processing_time = normal_rng(0.05, 0.01);
    real m_noise_scale = inv_gamma_rng(2, 0.1);

    // Initial ODE values
    real expected_order_rate__init = dataFunc__customer_order_rate(0);
    real inventory__init = 2 + 2 * dataFunc__customer_order_rate(0);
    real backlog__init = dataFunc__customer_order_rate(0) * 2;
    real work_in_process_inventory__init = 8 * fmax(0, dataFunc__customer_order_rate(0) + 2 + 2 * dataFunc__customer_order_rate(0) - 2 + 2 * dataFunc__customer_order_rate(0) / 8);
    real production_rate_af_p_noise__init = 8 * fmax(0, dataFunc__customer_order_rate(0) + 2 + 2 * dataFunc__customer_order_rate(0) - 2 + 2 * dataFunc__customer_order_rate(0) / 8) / 8;
    real production_start_rate_af_p_noise__init = fmax(0, fmax(0, dataFunc__customer_order_rate(0) + 2 + 2 * dataFunc__customer_order_rate(0) - 2 + 2 * dataFunc__customer_order_rate(0) / 8) + 8 * fmax(0, dataFunc__customer_order_rate(0) + 2 + 2 * dataFunc__customer_order_rate(0) - 2 + 2 * dataFunc__customer_order_rate(0) / 8) - 8 * fmax(0, dataFunc__customer_order_rate(0) + 2 + 2 * dataFunc__customer_order_rate(0) - 2 + 2 * dataFunc__customer_order_rate(0) / 8) / 2);

    vector[6] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = expected_order_rate__init;
    initial_outcome[2] = inventory__init;
    initial_outcome[3] = backlog__init;
    initial_outcome[4] = work_in_process_inventory__init;
    initial_outcome[5] = production_rate_af_p_noise__init;
    initial_outcome[6] = production_start_rate_af_p_noise__init;

    vector[6] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, minimum_order_processing_time, inventory_adjustment_time);
    array[n_t] real expected_order_rate = integrated_result[:, 1];
    array[n_t] real inventory = integrated_result[:, 2];
    array[n_t] real backlog = integrated_result[:, 3];
    array[n_t] real work_in_process_inventory = integrated_result[:, 4];
    array[n_t] real production_rate_af_p_noise = integrated_result[:, 5];
    array[n_t] real production_start_rate_af_p_noise = integrated_result[:, 6];

    vector[3] production_start_rate_af_p_noise_obs = to_vector(normal_rng(production_start_rate_af_p_noise, m_noise_scale));
    vector[3] production_rate_af_p_noise_obs = to_vector(normal_rng(production_rate_af_p_noise, m_noise_scale));
}
