functions{
    #include mgnInven_functions.stan
}

data{
    int n_obs_state;
    int n_t;
    int work_in_process_inventory_obs[20];
    int inventory_obs[20];
}

transformed data{
    real initial_time = 0.0;
    array[n_t] real times = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20};
}

parameters{
    real inventory_adjustment_time;
    real minimum_order_processing_time;
    real phi;
}

transformed parameters {
    // Initial ODE values
    real inventory__init = 2 + 2 * fmax(0, 0.5);
    real backlog__init = fmax(0, 0.5) * 2;
    real work_in_process_inventory__init = 8 * fmax(0, fmax(0, 0.5) + 2 + 2 * fmax(0, 0.5) - 2 + 2 * fmax(0, 0.5) / 8);
    real expected_order_rate__init = fmax(0, 0.5);

    vector[4] initial_outcome;  // Initial ODE state vector
    initial_outcome[1] = inventory__init;
    initial_outcome[2] = backlog__init;
    initial_outcome[3] = work_in_process_inventory__init;
    initial_outcome[4] = expected_order_rate__init;

    vector[4] integrated_result[n_t] = ode_rk45(vensim_ode_func, initial_outcome, initial_time, times, inventory_adjustment_time, minimum_order_processing_time);
    array[n_t] real inventory = integrated_result[:, 1];
    array[n_t] real backlog = integrated_result[:, 2];
    array[n_t] real work_in_process_inventory = integrated_result[:, 3];
    array[n_t] real expected_order_rate = integrated_result[:, 4];
}

model{
    inventory_adjustment_time ~ normal(2, 0.1);
    minimum_order_processing_time ~ normal(0.05, 0.001);
    phi ~ inv_gamma(2, 0.1);
    for (t in 1: n_t){
        work_in_process_inventory_obs[t] ~ neg_binomial_2(work_in_process_inventory[t], phi);
        inventory_obs[t] ~ neg_binomial_2(inventory[t], phi);
    }
}

