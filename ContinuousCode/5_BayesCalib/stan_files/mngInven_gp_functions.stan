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
real dataFunc__standard_normal_for_process_noise(real time){
    // DataStructure for variable standard_normal_for_process_noise
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 1.4474102026976554;
        slope = -0.6761137607866139 - 1.4474102026976554;
        return intercept + slope * (time - 1.4474102026976554);
    }
    else if(time <= 2){
        intercept = -0.6761137607866139;
        slope = -0.5797079947039593 - -0.6761137607866139;
        return intercept + slope * (time - -0.6761137607866139);
    }
    else if(time <= 3){
        intercept = -0.5797079947039593;
        slope = -0.8591369757424457 - -0.5797079947039593;
        return intercept + slope * (time - -0.5797079947039593);
    }
    else if(time <= 4){
        intercept = -0.8591369757424457;
        slope = 0.7081184513368337 - -0.8591369757424457;
        return intercept + slope * (time - -0.8591369757424457);
    }
    else if(time <= 5){
        intercept = 0.7081184513368337;
        slope = -0.7346791060261296 - 0.7081184513368337;
        return intercept + slope * (time - 0.7081184513368337);
    }
    else if(time <= 6){
        intercept = -0.7346791060261296;
        slope = 0.7958430541728259 - -0.7346791060261296;
        return intercept + slope * (time - -0.7346791060261296);
    }
    else if(time <= 7){
        intercept = 0.7958430541728259;
        slope = -0.29746389434658516 - 0.7958430541728259;
        return intercept + slope * (time - 0.7958430541728259);
    }
    else if(time <= 8){
        intercept = -0.29746389434658516;
        slope = -1.7052134320593284 - -0.29746389434658516;
        return intercept + slope * (time - -0.29746389434658516);
    }
    else if(time <= 9){
        intercept = -1.7052134320593284;
        slope = -1.20347239948795 - -1.7052134320593284;
        return intercept + slope * (time - -1.7052134320593284);
    }
    else if(time <= 10){
        intercept = -1.20347239948795;
        slope = -0.5557354591680216 - -1.20347239948795;
        return intercept + slope * (time - -1.20347239948795);
    }
    else if(time <= 11){
        intercept = -0.5557354591680216;
        slope = -1.2348792341742751 - -0.5557354591680216;
        return intercept + slope * (time - -0.5557354591680216);
    }
    else if(time <= 12){
        intercept = -1.2348792341742751;
        slope = 0.7309416467864311 - -1.2348792341742751;
        return intercept + slope * (time - -1.2348792341742751);
    }
    else if(time <= 13){
        intercept = 0.7309416467864311;
        slope = -1.5714430356733273 - 0.7309416467864311;
        return intercept + slope * (time - 0.7309416467864311);
    }
    else if(time <= 14){
        intercept = -1.5714430356733273;
        slope = 1.6207804854411008 - -1.5714430356733273;
        return intercept + slope * (time - -1.5714430356733273);
    }
    else if(time <= 15){
        intercept = 1.6207804854411008;
        slope = -0.6296762927148534 - 1.6207804854411008;
        return intercept + slope * (time - 1.6207804854411008);
    }
    else if(time <= 16){
        intercept = -0.6296762927148534;
        slope = -0.12382712032953892 - -0.6296762927148534;
        return intercept + slope * (time - -0.6296762927148534);
    }
    else if(time <= 17){
        intercept = -0.12382712032953892;
        slope = -0.7371013189246033 - -0.12382712032953892;
        return intercept + slope * (time - -0.12382712032953892);
    }
    else if(time <= 18){
        intercept = -0.7371013189246033;
        slope = 0.7211528674037692 - -0.7371013189246033;
        return intercept + slope * (time - -0.7371013189246033);
    }
    else if(time <= 19){
        intercept = 0.7211528674037692;
        slope = -0.1013539821208349 - 0.7211528674037692;
        return intercept + slope * (time - 0.7211528674037692);
    }
    return -0.1013539821208349;
}

real dataFunc__customer_order_rate(real time){
    // DataStructure for variable customer_order_rate
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 146376;
        slope = 147079 - 146376;
        return intercept + slope * (time - 146376);
    }
    else if(time <= 2){
        intercept = 147079;
        slope = 159336 - 147079;
        return intercept + slope * (time - 147079);
    }
    else if(time <= 3){
        intercept = 159336;
        slope = 163669 - 159336;
        return intercept + slope * (time - 159336);
    }
    else if(time <= 4){
        intercept = 163669;
        slope = 170068 - 163669;
        return intercept + slope * (time - 163669);
    }
    else if(time <= 5){
        intercept = 170068;
        slope = 168663 - 170068;
        return intercept + slope * (time - 170068);
    }
    else if(time <= 6){
        intercept = 168663;
        slope = 169890 - 168663;
        return intercept + slope * (time - 168663);
    }
    else if(time <= 7){
        intercept = 169890;
        slope = 170364 - 169890;
        return intercept + slope * (time - 169890);
    }
    else if(time <= 8){
        intercept = 170364;
        slope = 164617 - 170364;
        return intercept + slope * (time - 170364);
    }
    else if(time <= 9){
        intercept = 164617;
        slope = 173655 - 164617;
        return intercept + slope * (time - 164617);
    }
    else if(time <= 10){
        intercept = 173655;
        slope = 171547 - 173655;
        return intercept + slope * (time - 173655);
    }
    else if(time <= 11){
        intercept = 171547;
        slope = 208838 - 171547;
        return intercept + slope * (time - 171547);
    }
    else if(time <= 12){
        intercept = 208838;
        slope = 153221 - 208838;
        return intercept + slope * (time - 208838);
    }
    else if(time <= 13){
        intercept = 153221;
        slope = 150087 - 153221;
        return intercept + slope * (time - 153221);
    }
    else if(time <= 14){
        intercept = 150087;
        slope = 170439 - 150087;
        return intercept + slope * (time - 150087);
    }
    else if(time <= 15){
        intercept = 170439;
        slope = 176456 - 170439;
        return intercept + slope * (time - 170439);
    }
    else if(time <= 16){
        intercept = 176456;
        slope = 182231 - 176456;
        return intercept + slope * (time - 176456);
    }
    else if(time <= 17){
        intercept = 182231;
        slope = 181535 - 182231;
        return intercept + slope * (time - 182231);
    }
    else if(time <= 18){
        intercept = 181535;
        slope = 183682 - 181535;
        return intercept + slope * (time - 181535);
    }
    else if(time <= 19){
        intercept = 183682;
        slope = 183318 - 183682;
        return intercept + slope * (time - 183682);
    }
    return 183318;
}

real dataFunc__beta22shift1_4_production_rate_m_noise(real time){
    // DataStructure for variable beta22shift1_4_production_rate_m_noise
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.7558827853844113;
        slope = 0.8118144315691583 - 0.7558827853844113;
        return intercept + slope * (time - 0.7558827853844113);
    }
    else if(time <= 2){
        intercept = 0.8118144315691583;
        slope = 0.3823335792053102 - 0.8118144315691583;
        return intercept + slope * (time - 0.8118144315691583);
    }
    else if(time <= 3){
        intercept = 0.3823335792053102;
        slope = 0.7574022377330766 - 0.3823335792053102;
        return intercept + slope * (time - 0.3823335792053102);
    }
    else if(time <= 4){
        intercept = 0.7574022377330766;
        slope = 0.5611062035113945 - 0.7574022377330766;
        return intercept + slope * (time - 0.7574022377330766);
    }
    else if(time <= 5){
        intercept = 0.5611062035113945;
        slope = 0.5474771725274844 - 0.5611062035113945;
        return intercept + slope * (time - 0.5611062035113945);
    }
    else if(time <= 6){
        intercept = 0.5474771725274844;
        slope = 0.5572860137334815 - 0.5474771725274844;
        return intercept + slope * (time - 0.5474771725274844);
    }
    else if(time <= 7){
        intercept = 0.5572860137334815;
        slope = 0.09118601088322734 - 0.5572860137334815;
        return intercept + slope * (time - 0.5572860137334815);
    }
    else if(time <= 8){
        intercept = 0.09118601088322734;
        slope = 0.5694257751108801 - 0.09118601088322734;
        return intercept + slope * (time - 0.09118601088322734);
    }
    else if(time <= 9){
        intercept = 0.5694257751108801;
        slope = 0.5921328654345099 - 0.5694257751108801;
        return intercept + slope * (time - 0.5694257751108801);
    }
    else if(time <= 10){
        intercept = 0.5921328654345099;
        slope = 0.6660471993941208 - 0.5921328654345099;
        return intercept + slope * (time - 0.5921328654345099);
    }
    else if(time <= 11){
        intercept = 0.6660471993941208;
        slope = 0.5465974051787393 - 0.6660471993941208;
        return intercept + slope * (time - 0.6660471993941208);
    }
    else if(time <= 12){
        intercept = 0.5465974051787393;
        slope = 0.7310278846083555 - 0.5465974051787393;
        return intercept + slope * (time - 0.5465974051787393);
    }
    else if(time <= 13){
        intercept = 0.7310278846083555;
        slope = 0.6877920572157139 - 0.7310278846083555;
        return intercept + slope * (time - 0.7310278846083555);
    }
    else if(time <= 14){
        intercept = 0.6877920572157139;
        slope = 0.45564124039551074 - 0.6877920572157139;
        return intercept + slope * (time - 0.6877920572157139);
    }
    else if(time <= 15){
        intercept = 0.45564124039551074;
        slope = 0.703641184319925 - 0.45564124039551074;
        return intercept + slope * (time - 0.45564124039551074);
    }
    else if(time <= 16){
        intercept = 0.703641184319925;
        slope = 0.22864331895839501 - 0.703641184319925;
        return intercept + slope * (time - 0.703641184319925);
    }
    else if(time <= 17){
        intercept = 0.22864331895839501;
        slope = 0.32029420569781053 - 0.22864331895839501;
        return intercept + slope * (time - 0.22864331895839501);
    }
    else if(time <= 18){
        intercept = 0.32029420569781053;
        slope = 0.395838141887598 - 0.32029420569781053;
        return intercept + slope * (time - 0.32029420569781053);
    }
    else if(time <= 19){
        intercept = 0.395838141887598;
        slope = 0.367097980646801 - 0.395838141887598;
        return intercept + slope * (time - 0.395838141887598);
    }
    return 0.367097980646801;
}

real dataFunc__beta22shift1_4_production_start_rate_m_noise(real time){
    // DataStructure for variable beta22shift1_4_production_start_rate_m_noise
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.369235526464146;
        slope = 0.31566840211864655 - 0.369235526464146;
        return intercept + slope * (time - 0.369235526464146);
    }
    else if(time <= 2){
        intercept = 0.31566840211864655;
        slope = 0.19853507844388749 - 0.31566840211864655;
        return intercept + slope * (time - 0.31566840211864655);
    }
    else if(time <= 3){
        intercept = 0.19853507844388749;
        slope = 0.34494970697605964 - 0.19853507844388749;
        return intercept + slope * (time - 0.19853507844388749);
    }
    else if(time <= 4){
        intercept = 0.34494970697605964;
        slope = 0.3594539952900335 - 0.34494970697605964;
        return intercept + slope * (time - 0.34494970697605964);
    }
    else if(time <= 5){
        intercept = 0.3594539952900335;
        slope = 0.5895058321264423 - 0.3594539952900335;
        return intercept + slope * (time - 0.3594539952900335);
    }
    else if(time <= 6){
        intercept = 0.5895058321264423;
        slope = 0.8669753007898932 - 0.5895058321264423;
        return intercept + slope * (time - 0.5895058321264423);
    }
    else if(time <= 7){
        intercept = 0.8669753007898932;
        slope = 0.385035648060577 - 0.8669753007898932;
        return intercept + slope * (time - 0.8669753007898932);
    }
    else if(time <= 8){
        intercept = 0.385035648060577;
        slope = 0.520070392808325 - 0.385035648060577;
        return intercept + slope * (time - 0.385035648060577);
    }
    else if(time <= 9){
        intercept = 0.520070392808325;
        slope = 0.41917752298623867 - 0.520070392808325;
        return intercept + slope * (time - 0.520070392808325);
    }
    else if(time <= 10){
        intercept = 0.41917752298623867;
        slope = 0.3155736274549749 - 0.41917752298623867;
        return intercept + slope * (time - 0.41917752298623867);
    }
    else if(time <= 11){
        intercept = 0.3155736274549749;
        slope = 0.5415130761545411 - 0.3155736274549749;
        return intercept + slope * (time - 0.3155736274549749);
    }
    else if(time <= 12){
        intercept = 0.5415130761545411;
        slope = 0.6016780563271943 - 0.5415130761545411;
        return intercept + slope * (time - 0.5415130761545411);
    }
    else if(time <= 13){
        intercept = 0.6016780563271943;
        slope = 0.5679588154582996 - 0.6016780563271943;
        return intercept + slope * (time - 0.6016780563271943);
    }
    else if(time <= 14){
        intercept = 0.5679588154582996;
        slope = 0.4577569898418491 - 0.5679588154582996;
        return intercept + slope * (time - 0.5679588154582996);
    }
    else if(time <= 15){
        intercept = 0.4577569898418491;
        slope = 0.37404762511941486 - 0.4577569898418491;
        return intercept + slope * (time - 0.4577569898418491);
    }
    else if(time <= 16){
        intercept = 0.37404762511941486;
        slope = 0.42688122124628947 - 0.37404762511941486;
        return intercept + slope * (time - 0.37404762511941486);
    }
    else if(time <= 17){
        intercept = 0.42688122124628947;
        slope = 0.2188434634541628 - 0.42688122124628947;
        return intercept + slope * (time - 0.42688122124628947);
    }
    else if(time <= 18){
        intercept = 0.2188434634541628;
        slope = 0.5282813605957678 - 0.2188434634541628;
        return intercept + slope * (time - 0.2188434634541628);
    }
    else if(time <= 19){
        intercept = 0.5282813605957678;
        slope = 0.23757762627351847 - 0.5282813605957678;
        return intercept + slope * (time - 0.5282813605957678);
    }
    return 0.23757762627351847;
}

vector vensim_ode_func(real time, vector outcome, real minimum_order_processing_time, real inventory_adjustment_time){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real backlog = outcome[1];
    real production_rate_stocked = outcome[2];
    real expected_order_rate = outcome[3];
    real process_noise = outcome[4];
    real work_in_process_inventory = outcome[5];
    real inventory = outcome[6];
    real production_start_rate_stocked = outcome[7];

    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real time_step = 0.0625;
    real correlation_time = 10;
    real dt_tc = time_step / correlation_time;
    real process_noise_scale = 1;
    real white_noise = process_noise_scale * dataFunc__standard_normal_for_process_noise(time) * 2 - dt_tc / dt_tc ^ 0.5;
    real process_noise_change_rate = white_noise - process_noise / correlation_time;
    real process_noise_dydt = process_noise_change_rate;
    real manufacturing_cycle_time = 8;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_rate = process_noise * work_in_process_inventory / manufacturing_cycle_time;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real production_rate_stocked_change_rate = production_rate - production_rate_stocked / time_step;
    real inventory_dydt = production_rate - shipment_rate;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real order_rate = dataFunc__customer_order_rate(time);
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_start_rate_stocked_change_rate = production_start_rate - production_start_rate_stocked / time_step;
    real production_rate_stocked_dydt = production_rate_stocked_change_rate;
    real production_start_rate_stocked_dydt = production_start_rate_stocked_change_rate;

    dydt[1] = backlog_dydt;
    dydt[2] = production_rate_stocked_dydt;
    dydt[3] = expected_order_rate_dydt;
    dydt[4] = process_noise_dydt;
    dydt[5] = work_in_process_inventory_dydt;
    dydt[6] = inventory_dydt;
    dydt[7] = production_start_rate_stocked_dydt;

    return dydt;
}
