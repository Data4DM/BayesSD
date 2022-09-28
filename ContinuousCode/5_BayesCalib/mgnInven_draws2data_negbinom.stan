functions{
#include mgnInven_functions.stan
}
data{
    int n_t;
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}


generated quantities{
    real inventory_adjustment_time = normal_rng(2, 0.001);
    real minimum_order_processing_time = normal_rng(0.05, 0.001);
    //real sigma = lognormal_rng(-6.907755278982137, 0.001);
    real phi = 0.1 #inv_gamma_rng(2, 10); #0.1;

    // Initial ODE values
    real work_in_process_inventory__init = 8 * fmax(0, fmax(0, 1) + 2 + 2 * fmax(0, 1) - 2 + 2 * fmax(0, 1) / 8);
    real backlog__init = fmax(0, 1) * 2;
    real expected_order_rate__init = fmax(0, 1);
    real inventory__init = 2 + 2 * fmax(0, 1);

    vector[4] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = work_in_process_inventory__init;
    initial_outcome[2] = backlog__init;
    initial_outcome[3] = expected_order_rate__init;
    initial_outcome[4] = inventory__init;

    vector[4] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, inventory_adjustment_time, minimum_order_processing_time);
    array[n_t] real work_in_process_inventory = integrated_result[:, 1];
    array[n_t] real backlog = integrated_result[:, 2];
    array[n_t] real expected_order_rate = integrated_result[:, 3];
    array[n_t] real inventory = integrated_result[:, 4];

    vector[20] work_in_process_inventory_obs = to_vector(neg_binomial_2_rng(work_in_process_inventory, phi));
    vector[20] inventory_obs = to_vector(neg_binomial_2_rng(inventory, phi));
}
