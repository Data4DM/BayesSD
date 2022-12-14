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
real dataFunc__process_noise_uniform_driving(real time, real time_step){
    // DataStructure for variable process_noise_uniform_driving
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = -0.187355992185252;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (0.24209478686378993 - -0.187355992185252) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 0.24209478686378993;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (-0.11087687054156525 - 0.24209478686378993) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = -0.11087687054156525;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (0.45651418653240006 - -0.11087687054156525) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 0.45651418653240006;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (0.029209392556408975 - 0.45651418653240006) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = 0.029209392556408975;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (0.42249845636186856 - 0.029209392556408975) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = 0.42249845636186856;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (-0.3540465623936243 - 0.42249845636186856) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = -0.3540465623936243;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (-0.46260733706020574 - -0.3540465623936243) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = -0.46260733706020574;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (0.12109509609793567 - -0.46260733706020574) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 0.12109509609793567;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (-0.14159151281888183 - 0.12109509609793567) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = -0.14159151281888183;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (0.417540483486433 - -0.14159151281888183) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = 0.417540483486433;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (-0.13617719125054428 - 0.417540483486433) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = -0.13617719125054428;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (-0.07662733035280356 - -0.13617719125054428) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = -0.07662733035280356;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (0.23891319862403537 - -0.07662733035280356) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = 0.23891319862403537;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (0.17069691886453542 - 0.23891319862403537) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = 0.17069691886453542;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (0.006122567068153839 - 0.17069691886453542) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = 0.006122567068153839;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (-0.4161203733601324 - 0.006122567068153839) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = -0.4161203733601324;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (0.4231230002030547 - -0.4161203733601324) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 0.4231230002030547;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (0.4973160178479935 - 0.4231230002030547) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = 0.4973160178479935;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (-0.44284365888270294 - 0.4973160178479935) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    return -0.44284365888270294;
}

real dataFunc__customer_order_rate(real time, real time_step){
    // DataStructure for variable customer_order_rate
    real slope;
    real intercept;

    if(time <= time_step * 1){
        intercept = 100.0;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (141.34397702660013 - 100.0) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 141.34397702660013;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (146.50197522080686 - 141.34397702660013) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = 146.50197522080686;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (110.9594987141409 - 146.50197522080686) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = 110.9594987141409;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (65.82481030612857 - 110.9594987141409) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = 65.82481030612857;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (50.60167806166116 - 65.82481030612857) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = 50.60167806166116;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (78.6140243698839 - 50.60167806166116) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = 78.6140243698839;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (125.3442714974585 - 78.6140243698839) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = 125.3442714974585;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (149.8921516181191 - 125.3442714974585) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 149.8921516181191;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (130.77233278484854 - 149.8921516181191) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = 130.77233278484854;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (84.71928055558739 - 130.77233278484854) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = 84.71928055558739;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (52.04055344273916 - 84.71928055558739) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = 52.04055344273916;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (61.33794093584123 - 52.04055344273916) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = 61.33794093584123;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (104.47398042926443 - 61.33794093584123) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = 104.47398042926443;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (143.69420502646358 - 104.47398042926443) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = 143.69420502646358;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (144.67143289481396 - 143.69420502646358) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = 144.67143289481396;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (106.55035330947159 - 144.67143289481396) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = 106.55035330947159;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (62.69613039230283 - 106.55035330947159) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 62.69613039230283;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (51.491815226437275 - 62.69613039230283) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = 51.491815226437275;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (82.74389331670727 - 51.491815226437275) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    return 82.74389331670727;
}

vector vensim_ode_func(real time, vector outcome, real time_step, real process_noise_scale){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real backlog = outcome[1];
    real expected_order_rate = outcome[2];
    real inventory = outcome[3];
    real process_noise = outcome[4];
    real production_rate_stocked = outcome[5];
    real production_start_rate_stocked = outcome[6];
    real work_in_process_inventory = outcome[7];

    real corr_time_over_time_step = 100;
    real white_noise = 4.89 * corr_time_over_time_step ^ 0.5 * dataFunc__process_noise_uniform_driving(time, time_step) * process_noise_scale;
    real corr_time = corr_time_over_time_step * time_step;
    real process_noise_in = (white_noise - process_noise) / corr_time;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = (dataFunc__customer_order_rate(time, time_step) - expected_order_rate) / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real fractional_inventory_adjustment = 1 / 8;
    real minimum_order_processing_time = 2;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = (desired_inventory - inventory) * fractional_inventory_adjustment;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real fractional_wip_adjustment = 1 / 2;
    real order_rate = dataFunc__customer_order_rate(time, time_step);
    real manufacturing_cycle_time = 8;
    real desired_wip = manufacturing_cycle_time * desired_production;
    real adjustment_for_wip = (desired_wip - work_in_process_inventory) * fractional_wip_adjustment;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real desired_production_start_rate = fmax(0, desired_production + adjustment_for_wip);
    real production_start_rate = fmax(0, desired_production_start_rate);
    real desired_minus_shadow_psr = production_start_rate - production_start_rate_stocked;
    real production_start_rate_stocked_change_rate = desired_minus_shadow_psr / time_step;
    real production_start_rate_stocked_dydt = production_start_rate + production_start_rate_stocked_change_rate;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time * fmax(0, 1 + process_noise);
    real desired_minus_shadow_pr = production_rate - production_rate_stocked;
    real production_rate_stocked_change_rate = desired_minus_shadow_pr / time_step;
    real order_fulfillment_rate = shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_rate_stocked_dydt = production_rate + production_rate_stocked_change_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real process_noise_dydt = process_noise_in;

    dydt[1] = backlog_dydt;
    dydt[2] = expected_order_rate_dydt;
    dydt[3] = inventory_dydt;
    dydt[4] = process_noise_dydt;
    dydt[5] = production_rate_stocked_dydt;
    dydt[6] = production_start_rate_stocked_dydt;
    dydt[7] = work_in_process_inventory_dydt;

    return dydt;
}
