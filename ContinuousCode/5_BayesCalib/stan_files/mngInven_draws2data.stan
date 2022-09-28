functions{
#include mngInven_functions.stan
}
data{
    int n_t;
    int n_firm;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}


generated quantities{
    real inventory_adjustment_time = normal_rng(2, 0.4);
    real minimum_order_processing_time = normal_rng(0.05, 0.01);
    real phi = inv_gamma_rng(2, 0.1);

    // Initial ODE values
    real backlog__init = fmax(0, 0.5) * 2;
    real inventory__init = 2 + 2 * fmax(0, 0.5);
    real expected_order_rate__init = fmax(0, 0.5);
    real work_in_process_inventory__init = 8 * fmax(0, fmax(0, 0.5) + 2 + 2 * fmax(0, 0.5) - 2 + 2 * fmax(0, 0.5) / 8);

    vector[4] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = backlog__init;
    initial_outcome[2] = inventory__init;
    initial_outcome[3] = expected_order_rate__init;
    initial_outcome[4] = work_in_process_inventory__init;

    vector[4] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, inventory_adjustment_time, minimum_order_processing_time);
    array[n_t] real backlog = integrated_result[:, 1];
    array[n_t] real inventory = integrated_result[:, 2];
    array[n_t] real expected_order_rate = integrated_result[:, 3];
    array[n_t] real work_in_process_inventory = integrated_result[:, 4];

    vector[20] work_in_process_inventory_obs = to_vector(neg_binomial_2_rng(work_in_process_inventory, phi));
    vector[20] inventory_obs = to_vector(neg_binomial_2_rng(inventory, phi));
}
