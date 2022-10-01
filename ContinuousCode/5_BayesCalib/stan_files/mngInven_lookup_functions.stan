real lookupFunc__table_for_order_fulfillment(real x){
    // x (0, 2) = (0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.0)
    // y (0, 1) = (0.0, 0.2, 0.4, 0.58, 0.73, 0.85, 0.93, 0.97, 0.99, 1.0, 1.0, 1.0)
    real slope;
    real intercept;

    if(x <= 0.2){
        intercept = 0.0;
        slope = (0.2 - 0.0) / (0.2 - 0.0);
        return intercept + slope * (x - 0.0);
    }
    else if(x <= 0.4){
        intercept = 0.2;
        slope = (0.4 - 0.2) / (0.4 - 0.2);
        return intercept + slope * (x - 0.2);
    }
    else if(x <= 0.6){
        intercept = 0.4;
        slope = (0.58 - 0.4) / (0.6 - 0.4);
        return intercept + slope * (x - 0.4);
    }
    else if(x <= 0.8){
        intercept = 0.58;
        slope = (0.73 - 0.58) / (0.8 - 0.6);
        return intercept + slope * (x - 0.6);
    }
    else if(x <= 1.0){
        intercept = 0.73;
        slope = (0.85 - 0.73) / (1.0 - 0.8);
        return intercept + slope * (x - 0.8);
    }
    else if(x <= 1.2){
        intercept = 0.85;
        slope = (0.93 - 0.85) / (1.2 - 1.0);
        return intercept + slope * (x - 1.0);
    }
    else if(x <= 1.4){
        intercept = 0.93;
        slope = (0.97 - 0.93) / (1.4 - 1.2);
        return intercept + slope * (x - 1.2);
    }
    else if(x <= 1.6){
        intercept = 0.97;
        slope = (0.99 - 0.97) / (1.6 - 1.4);
        return intercept + slope * (x - 1.4);
    }
    else if(x <= 1.8){
        intercept = 0.99;
        slope = (1.0 - 0.99) / (1.8 - 1.6);
        return intercept + slope * (x - 1.6);
    }
    else if(x <= 2.0){
        intercept = 1.0;
        slope = (1.0 - 1.0) / (2.0 - 1.8);
        return intercept + slope * (x - 1.8);
    }
    else if(x <= 2.0){
        intercept = 1.0;
        slope = (1.0 - 1.0) / (2.0 - 2.0);
        return intercept + slope * (x - 2.0);
    }
    return 1.0;
}

// Begin ODE declaration
real dataFunc__initial_customer_order_rate_data(real time){
    // DataStructure for variable initial_customer_order_rate_data
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0;
        slope = 1 - 0;
        return intercept + slope * (x - 0);
    }
    else if(time <= 2){
        intercept = 1;
        slope = 2 - 1;
        return intercept + slope * (x - 1);
    }
    else if(time <= 3){
        intercept = 2;
        slope = 3 - 2;
        return intercept + slope * (x - 2);
    }
    else if(time <= 4){
        intercept = 3;
        slope = 4 - 3;
        return intercept + slope * (x - 3);
    }
    else if(time <= 5){
        intercept = 4;
        slope = 5 - 4;
        return intercept + slope * (x - 4);
    }
    else if(time <= 6){
        intercept = 5;
        slope = 6 - 5;
        return intercept + slope * (x - 5);
    }
    else if(time <= 7){
        intercept = 6;
        slope = 7 - 6;
        return intercept + slope * (x - 6);
    }
    else if(time <= 8){
        intercept = 7;
        slope = 8 - 7;
        return intercept + slope * (x - 7);
    }
    else if(time <= 9){
        intercept = 8;
        slope = 9 - 8;
        return intercept + slope * (x - 8);
    }
    else if(time <= 10){
        intercept = 9;
        slope = 10 - 9;
        return intercept + slope * (x - 9);
    }
    else if(time <= 11){
        intercept = 10;
        slope = 11 - 10;
        return intercept + slope * (x - 10);
    }
    else if(time <= 12){
        intercept = 11;
        slope = 12 - 11;
        return intercept + slope * (x - 11);
    }
    else if(time <= 13){
        intercept = 12;
        slope = 13 - 12;
        return intercept + slope * (x - 12);
    }
    else if(time <= 14){
        intercept = 13;
        slope = 14 - 13;
        return intercept + slope * (x - 13);
    }
    else if(time <= 15){
        intercept = 14;
        slope = 15 - 14;
        return intercept + slope * (x - 14);
    }
    else if(time <= 16){
        intercept = 15;
        slope = 16 - 15;
        return intercept + slope * (x - 15);
    }
    else if(time <= 17){
        intercept = 16;
        slope = 17 - 16;
        return intercept + slope * (x - 16);
    }
    else if(time <= 18){
        intercept = 17;
        slope = 18 - 17;
        return intercept + slope * (x - 17);
    }
    else if(time <= 19){
        intercept = 18;
        slope = 19 - 18;
        return intercept + slope * (x - 18);
    }
    return 19;
}

vector vensim_ode_func(real time, vector outcome){
    vector[4] dydt;  // Return vector of the ODE function

    // State variables
    real inventory = outcome[1];
    real expected_order_rate = outcome[2];
    real work_in_process_inventory = outcome[3];
    real backlog = outcome[4];

    real safety_stock_coverage = 2;
    real minimum_order_processing_time = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real inventory_adjustment_time = 8;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real initial_customer_order_rate_data = None;
    real customer_order_rate = fmax(0, dataFunc__initial_customer_order_rate_data(time));
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = customer_order_rate - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real manufacturing_cycle_time = 8;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real order_rate = customer_order_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;

    dydt[1] = inventory_dydt;
    dydt[2] = expected_order_rate_dydt;
    dydt[3] = work_in_process_inventory_dydt;
    dydt[4] = backlog_dydt;

    return dydt;
}
