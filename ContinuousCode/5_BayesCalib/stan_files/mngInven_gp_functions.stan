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
real dataFunc__customer_order_rate(real time){
    // DataStructure for variable customer_order_rate
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -1.6512349304150107;
        slope = -1.9386486091497137 - -1.6512349304150107;
        return intercept + slope * (time - -1.6512349304150107);
    }
    else if(time <= 2){
        intercept = -1.9386486091497137;
        slope = 0.09776683530584984 - -1.9386486091497137;
        return intercept + slope * (time - -1.9386486091497137);
    }
    return 0.09776683530584984;
}

real dataFunc__ran_norm1(real time){
    // DataStructure for variable ran_norm1
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -1.6512349304150107;
        slope = -1.9386486091497137 - -1.6512349304150107;
        return intercept + slope * (time - -1.6512349304150107);
    }
    else if(time <= 2){
        intercept = -1.9386486091497137;
        slope = 0.09776683530584984 - -1.9386486091497137;
        return intercept + slope * (time - -1.9386486091497137);
    }
    return 0.09776683530584984;
}

real dataFunc__ran_norm4(real time){
    // DataStructure for variable ran_norm4
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.31677612082074985;
        slope = 0.8098240643531798 - 0.31677612082074985;
        return intercept + slope * (time - 0.31677612082074985);
    }
    else if(time <= 2){
        intercept = 0.8098240643531798;
        slope = 1.7159708009000507 - 0.8098240643531798;
        return intercept + slope * (time - 0.8098240643531798);
    }
    return 1.7159708009000507;
}

real dataFunc__ran_norm3(real time){
    // DataStructure for variable ran_norm3
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.0539458917585103;
        slope = -0.17473257826194394 - 0.0539458917585103;
        return intercept + slope * (time - 0.0539458917585103);
    }
    else if(time <= 2){
        intercept = -0.17473257826194394;
        slope = -0.7858856904810078 - -0.17473257826194394;
        return intercept + slope * (time - -0.17473257826194394);
    }
    return -0.7858856904810078;
}

real dataFunc__ran_norm2(real time){
    // DataStructure for variable ran_norm2
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -0.328603244234093;
        slope = 0.14916426128806307 - -0.328603244234093;
        return intercept + slope * (time - -0.328603244234093);
    }
    else if(time <= 2){
        intercept = 0.14916426128806307;
        slope = -1.021628714674693 - 0.14916426128806307;
        return intercept + slope * (time - 0.14916426128806307);
    }
    return -1.021628714674693;
}

vector vensim_ode_func(real time, vector outcome, real minimum_order_processing_time, real inventory_adjustment_time){
    vector[6] dydt;  // Return vector of the ODE function

    // State variables
    real expected_order_rate = outcome[1];
    real inventory = outcome[2];
    real backlog = outcome[3];
    real work_in_process_inventory = outcome[4];
    real production_rate_af_p_noise = outcome[5];
    real production_start_rate_af_p_noise = outcome[6];

    real order_rate = dataFunc__customer_order_rate(time);
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real manufacturing_cycle_time = 8;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real inventory_dydt = production_rate - shipment_rate;
    real order_fulfillment_rate = shipment_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real process_corr_time = 3;
    real time_step = 0.0625;
    real p_noise_scale = 0.1;
    real dt_tc = time_step / process_corr_time;
    real production_rate_bf_p_noise = production_rate * p_noise_scale * 2 - dt_tc / dt_tc ^ 0.5 * dataFunc__ran_norm2(time);
    real production_rate_af_p_noise_change_rate = production_rate_bf_p_noise - production_rate_af_p_noise / process_corr_time;
    real production_rate_af_p_noise_dydt = production_rate_af_p_noise_change_rate;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_start_rate_bf_p_noise = production_start_rate * p_noise_scale * 2 - dt_tc / dt_tc ^ 0.5 * dataFunc__ran_norm1(time);
    real production_start_rate_af_p_noise_change_rate = production_start_rate_bf_p_noise - production_start_rate_af_p_noise / process_corr_time;
    real production_start_rate_af_p_noise_dydt = production_start_rate_af_p_noise_change_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;

    dydt[1] = expected_order_rate_dydt;
    dydt[2] = inventory_dydt;
    dydt[3] = backlog_dydt;
    dydt[4] = work_in_process_inventory_dydt;
    dydt[5] = production_rate_af_p_noise_dydt;
    dydt[6] = production_start_rate_af_p_noise_dydt;

    return dydt;
}
