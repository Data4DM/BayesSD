// Begin ODE declaration
vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time, real minimum_order_processing_time){
    vector[4] dydt;  // Return vector of the ODE function

    // State variables
    real backlog = outcome[1];
    real inventory = outcome[2];
    real expected_order_rate = outcome[3];
    real work_in_process_inventory = outcome[4];

    real initial_customer_order_rate = 0.5;
    real customer_order_rate = fmax(0, initial_customer_order_rate);
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real manufacturing_cycle_time = 8;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = fmin(maximum_shipment_rate / desired_shipment_rate, 1);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = customer_order_rate - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real order_rate = customer_order_rate;
    real order_fulfillment_rate = shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real wip_adjustment_time = 2;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;

    dydt[1] = backlog_dydt;
    dydt[2] = inventory_dydt;
    dydt[3] = expected_order_rate_dydt;
    dydt[4] = work_in_process_inventory_dydt;

    return dydt;
}
