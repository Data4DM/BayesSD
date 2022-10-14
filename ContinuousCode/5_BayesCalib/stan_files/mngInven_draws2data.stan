functions{
#include mngInven_functions.stan
}
data{
    int n_t;
    vector[20] customer_order_rate;
    vector[20] process_noise_std_norm_data;
    vector[20] production_start_rate_m_noise_trun_norm_data;
    vector[20] production_rate_m_noise_trun_norm_data;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}


generated quantities{
    real inventory_adjustment_time = normal_rng(2, 0.1);
    real minimum_order_processing_time = normal_rng(0.05, 0.001);
    real m_noise_scale = normal_rng(0.01, 0.0005);

    // Initial ODE values
    real backlog__init = order_rate * target_delivery_delay;
    real work_in_process_inventory__init = desired_wip;
    real production_start_rate_stocked__init = production_start_rate;
    real inventory__init = desired_inventory;
    real production_rate_stocked__init = production_rate;
    real expected_order_rate__init = customer_order_rate;

    vector[6] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = backlog__init;
    initial_outcome[2] = work_in_process_inventory__init;
    initial_outcome[3] = production_start_rate_stocked__init;
    initial_outcome[4] = inventory__init;
    initial_outcome[5] = production_rate_stocked__init;
    initial_outcome[6] = expected_order_rate__init;

    vector[6] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, inventory_adjustment_time, minimum_order_processing_time);
    array[n_t] real backlog = integrated_result[:, 1];
    array[n_t] real work_in_process_inventory = integrated_result[:, 2];
    array[n_t] real production_start_rate_stocked = integrated_result[:, 3];
    array[n_t] real inventory = integrated_result[:, 4];
    array[n_t] real production_rate_stocked = integrated_result[:, 5];
    array[n_t] real expected_order_rate = integrated_result[:, 6];

    vector[20] production_rate_stocked_obs = to_vector(normal_rng(production_rate_stocked, m_noise_scale));
    vector[20] production_start_rate_stocked_obs = to_vector(normal_rng(production_start_rate_stocked, m_noise_scale));
}
