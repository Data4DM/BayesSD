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
real dataFunc__process_noise_std_norm_data(real time){
    // DataStructure for variable process_noise_std_norm_data
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 1.5132671667460578;
        slope = 1.2930104916327896 - 1.5132671667460578;
        return intercept + slope * (time - 1.5132671667460578);
    }
    else if(time <= 2){
        intercept = 1.2930104916327896;
        slope = 0.9373750866305355 - 1.2930104916327896;
        return intercept + slope * (time - 1.2930104916327896);
    }
    else if(time <= 3){
        intercept = 0.9373750866305355;
        slope = -1.6594494321828939 - 0.9373750866305355;
        return intercept + slope * (time - 0.9373750866305355);
    }
    else if(time <= 4){
        intercept = -1.6594494321828939;
        slope = 1.5051320372799262 - -1.6594494321828939;
        return intercept + slope * (time - -1.6594494321828939);
    }
    else if(time <= 5){
        intercept = 1.5051320372799262;
        slope = 1.218888645849789 - 1.5051320372799262;
        return intercept + slope * (time - 1.5051320372799262);
    }
    else if(time <= 6){
        intercept = 1.218888645849789;
        slope = -1.9829519571720768 - 1.218888645849789;
        return intercept + slope * (time - 1.218888645849789);
    }
    else if(time <= 7){
        intercept = -1.9829519571720768;
        slope = 2.0313108786310243 - -1.9829519571720768;
        return intercept + slope * (time - -1.9829519571720768);
    }
    else if(time <= 8){
        intercept = 2.0313108786310243;
        slope = -2.204481633876516 - 2.0313108786310243;
        return intercept + slope * (time - 2.0313108786310243);
    }
    else if(time <= 9){
        intercept = -2.204481633876516;
        slope = 0.31113846505069975 - -2.204481633876516;
        return intercept + slope * (time - -2.204481633876516);
    }
    else if(time <= 10){
        intercept = 0.31113846505069975;
        slope = -1.0825203957779492 - 0.31113846505069975;
        return intercept + slope * (time - 0.31113846505069975);
    }
    else if(time <= 11){
        intercept = -1.0825203957779492;
        slope = -1.49182121619309 - -1.0825203957779492;
        return intercept + slope * (time - -1.0825203957779492);
    }
    else if(time <= 12){
        intercept = -1.49182121619309;
        slope = -0.08555343724027187 - -1.49182121619309;
        return intercept + slope * (time - -1.49182121619309);
    }
    else if(time <= 13){
        intercept = -0.08555343724027187;
        slope = 0.14117856637308712 - -0.08555343724027187;
        return intercept + slope * (time - -0.08555343724027187);
    }
    else if(time <= 14){
        intercept = 0.14117856637308712;
        slope = 1.2459201215950717 - 0.14117856637308712;
        return intercept + slope * (time - 0.14117856637308712);
    }
    else if(time <= 15){
        intercept = 1.2459201215950717;
        slope = -0.005137803521268151 - 1.2459201215950717;
        return intercept + slope * (time - 1.2459201215950717);
    }
    else if(time <= 16){
        intercept = -0.005137803521268151;
        slope = 0.23294134018563342 - -0.005137803521268151;
        return intercept + slope * (time - -0.005137803521268151);
    }
    else if(time <= 17){
        intercept = 0.23294134018563342;
        slope = 0.8114142154824814 - 0.23294134018563342;
        return intercept + slope * (time - 0.23294134018563342);
    }
    else if(time <= 18){
        intercept = 0.8114142154824814;
        slope = 0.5639267555883313 - 0.8114142154824814;
        return intercept + slope * (time - 0.8114142154824814);
    }
    else if(time <= 19){
        intercept = 0.5639267555883313;
        slope = 1.0181899396467406 - 0.5639267555883313;
        return intercept + slope * (time - 0.5639267555883313);
    }
    return 1.0181899396467406;
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

real dataFunc__production_rate_m_noise_trun_norm_data(real time){
    // DataStructure for variable production_rate_m_noise_trun_norm_data
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 1.6114518450813446;
        slope = 0.02646048373485131 - 1.6114518450813446;
        return intercept + slope * (time - 1.6114518450813446);
    }
    else if(time <= 2){
        intercept = 0.02646048373485131;
        slope = 0.5870898706860717 - 0.02646048373485131;
        return intercept + slope * (time - 0.02646048373485131);
    }
    else if(time <= 3){
        intercept = 0.5870898706860717;
        slope = 1.3052869422149096 - 0.5870898706860717;
        return intercept + slope * (time - 0.5870898706860717);
    }
    else if(time <= 4){
        intercept = 1.3052869422149096;
        slope = 1.250015719741356 - 1.3052869422149096;
        return intercept + slope * (time - 1.3052869422149096);
    }
    else if(time <= 5){
        intercept = 1.250015719741356;
        slope = 0.06067635769233547 - 1.250015719741356;
        return intercept + slope * (time - 1.250015719741356);
    }
    else if(time <= 6){
        intercept = 0.06067635769233547;
        slope = 0.08486443475001698 - 0.06067635769233547;
        return intercept + slope * (time - 0.06067635769233547);
    }
    else if(time <= 7){
        intercept = 0.08486443475001698;
        slope = 0.6481790830754768 - 0.08486443475001698;
        return intercept + slope * (time - 0.08486443475001698);
    }
    else if(time <= 8){
        intercept = 0.6481790830754768;
        slope = 0.09686522142749075 - 0.6481790830754768;
        return intercept + slope * (time - 0.6481790830754768);
    }
    else if(time <= 9){
        intercept = 0.09686522142749075;
        slope = 0.7061794813799331 - 0.09686522142749075;
        return intercept + slope * (time - 0.09686522142749075);
    }
    else if(time <= 10){
        intercept = 0.7061794813799331;
        slope = 0.3212897904522303 - 0.7061794813799331;
        return intercept + slope * (time - 0.7061794813799331);
    }
    else if(time <= 11){
        intercept = 0.3212897904522303;
        slope = 1.4105315874837259 - 0.3212897904522303;
        return intercept + slope * (time - 0.3212897904522303);
    }
    else if(time <= 12){
        intercept = 1.4105315874837259;
        slope = 0.8292212510645744 - 1.4105315874837259;
        return intercept + slope * (time - 1.4105315874837259);
    }
    else if(time <= 13){
        intercept = 0.8292212510645744;
        slope = 1.2092408503646053 - 0.8292212510645744;
        return intercept + slope * (time - 0.8292212510645744);
    }
    else if(time <= 14){
        intercept = 1.2092408503646053;
        slope = 0.42097087176007725 - 1.2092408503646053;
        return intercept + slope * (time - 1.2092408503646053);
    }
    else if(time <= 15){
        intercept = 0.42097087176007725;
        slope = 0.9147827437817296 - 0.42097087176007725;
        return intercept + slope * (time - 0.42097087176007725);
    }
    else if(time <= 16){
        intercept = 0.9147827437817296;
        slope = 0.5223600076233964 - 0.9147827437817296;
        return intercept + slope * (time - 0.9147827437817296);
    }
    else if(time <= 17){
        intercept = 0.5223600076233964;
        slope = 0.013975919148306258 - 0.5223600076233964;
        return intercept + slope * (time - 0.5223600076233964);
    }
    else if(time <= 18){
        intercept = 0.013975919148306258;
        slope = 0.3413025888460998 - 0.013975919148306258;
        return intercept + slope * (time - 0.013975919148306258);
    }
    else if(time <= 19){
        intercept = 0.3413025888460998;
        slope = 0.41420676710792803 - 0.3413025888460998;
        return intercept + slope * (time - 0.3413025888460998);
    }
    return 0.41420676710792803;
}

real dataFunc__production_start_rate_m_noise_trun_norm_data(real time){
    // DataStructure for variable production_start_rate_m_noise_trun_norm_data
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.31067021251683175;
        slope = 1.3418346110726505 - 0.31067021251683175;
        return intercept + slope * (time - 0.31067021251683175);
    }
    else if(time <= 2){
        intercept = 1.3418346110726505;
        slope = 0.5430158946320381 - 1.3418346110726505;
        return intercept + slope * (time - 1.3418346110726505);
    }
    else if(time <= 3){
        intercept = 0.5430158946320381;
        slope = 0.17996561780982925 - 0.5430158946320381;
        return intercept + slope * (time - 0.5430158946320381);
    }
    else if(time <= 4){
        intercept = 0.17996561780982925;
        slope = 0.5648610907751741 - 0.17996561780982925;
        return intercept + slope * (time - 0.17996561780982925);
    }
    else if(time <= 5){
        intercept = 0.5648610907751741;
        slope = 0.4614808303259294 - 0.5648610907751741;
        return intercept + slope * (time - 0.5648610907751741);
    }
    else if(time <= 6){
        intercept = 0.4614808303259294;
        slope = 0.42441537738111085 - 0.4614808303259294;
        return intercept + slope * (time - 0.4614808303259294);
    }
    else if(time <= 7){
        intercept = 0.42441537738111085;
        slope = 0.32421557890622404 - 0.42441537738111085;
        return intercept + slope * (time - 0.42441537738111085);
    }
    else if(time <= 8){
        intercept = 0.32421557890622404;
        slope = 0.11666458113505423 - 0.32421557890622404;
        return intercept + slope * (time - 0.32421557890622404);
    }
    else if(time <= 9){
        intercept = 0.11666458113505423;
        slope = 0.8163374753225796 - 0.11666458113505423;
        return intercept + slope * (time - 0.11666458113505423);
    }
    else if(time <= 10){
        intercept = 0.8163374753225796;
        slope = 0.41645248134098506 - 0.8163374753225796;
        return intercept + slope * (time - 0.8163374753225796);
    }
    else if(time <= 11){
        intercept = 0.41645248134098506;
        slope = 0.3142936388877265 - 0.41645248134098506;
        return intercept + slope * (time - 0.41645248134098506);
    }
    else if(time <= 12){
        intercept = 0.3142936388877265;
        slope = 1.6213205225896652 - 0.3142936388877265;
        return intercept + slope * (time - 0.3142936388877265);
    }
    else if(time <= 13){
        intercept = 1.6213205225896652;
        slope = 1.0077668161446798 - 1.6213205225896652;
        return intercept + slope * (time - 1.6213205225896652);
    }
    else if(time <= 14){
        intercept = 1.0077668161446798;
        slope = 0.7345021956797608 - 1.0077668161446798;
        return intercept + slope * (time - 1.0077668161446798);
    }
    else if(time <= 15){
        intercept = 0.7345021956797608;
        slope = 0.8770277140815249 - 0.7345021956797608;
        return intercept + slope * (time - 0.7345021956797608);
    }
    else if(time <= 16){
        intercept = 0.8770277140815249;
        slope = 0.16933774122363898 - 0.8770277140815249;
        return intercept + slope * (time - 0.8770277140815249);
    }
    else if(time <= 17){
        intercept = 0.16933774122363898;
        slope = 0.6307726597647934 - 0.16933774122363898;
        return intercept + slope * (time - 0.16933774122363898);
    }
    else if(time <= 18){
        intercept = 0.6307726597647934;
        slope = 1.2025608425230923 - 0.6307726597647934;
        return intercept + slope * (time - 0.6307726597647934);
    }
    else if(time <= 19){
        intercept = 1.2025608425230923;
        slope = 0.8766680002963626 - 1.2025608425230923;
        return intercept + slope * (time - 1.2025608425230923);
    }
    return 0.8766680002963626;
}

vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time, real minimum_order_processing_time){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real production_start_rate_stocked = outcome[1];
    real process_noise = outcome[2];
    real expected_order_rate = outcome[3];
    real work_in_process_inventory = outcome[4];
    real production_rate_stocked = outcome[5];
    real backlog = outcome[6];
    real inventory = outcome[7];

    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real manufacturing_cycle_time = 8;
    real desired_wip = manufacturing_cycle_time * desired_production;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real order_rate = dataFunc__customer_order_rate(time);
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_rate = fmax(0, 1 + process_noise) * work_in_process_inventory / manufacturing_cycle_time;
    real time_step = 0.0625;
    real production_rate_stocked_change_rate = production_rate - production_rate_stocked / time_step;
    real correlation_time = 10;
    real dt_tc = time_step / correlation_time;
    real process_noise_scale = 1;
    real white_noise = process_noise_scale * dataFunc__process_noise_std_norm_data(time) * 2 - dt_tc / dt_tc ^ 0.5;
    real process_noise_change_rate = white_noise - process_noise / correlation_time;
    real time_to_average_order_rate = 8;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_start_rate_stocked_change_rate = production_start_rate - production_start_rate_stocked / time_step;
    real production_start_rate_stocked_dydt = production_start_rate_stocked_change_rate;
    real production_rate_stocked_dydt = production_rate_stocked_change_rate;
    real process_noise_dydt = process_noise_change_rate;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;

    dydt[1] = production_start_rate_stocked_dydt;
    dydt[2] = process_noise_dydt;
    dydt[3] = expected_order_rate_dydt;
    dydt[4] = work_in_process_inventory_dydt;
    dydt[5] = production_rate_stocked_dydt;
    dydt[6] = backlog_dydt;
    dydt[7] = inventory_dydt;

    return dydt;
}
