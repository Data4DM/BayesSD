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
        intercept = -1.1719895828667934;
        slope = 1.2123421942312806 - -1.1719895828667934;
        return intercept + slope * (time - -1.1719895828667934);
    }
    else if(time <= 2){
        intercept = 1.2123421942312806;
        slope = 0.31232751118839064 - 1.2123421942312806;
        return intercept + slope * (time - 1.2123421942312806);
    }
    else if(time <= 3){
        intercept = 0.31232751118839064;
        slope = -0.3875988863439455 - 0.31232751118839064;
        return intercept + slope * (time - 0.31232751118839064);
    }
    else if(time <= 4){
        intercept = -0.3875988863439455;
        slope = -0.9372327643824234 - -0.3875988863439455;
        return intercept + slope * (time - -0.3875988863439455);
    }
    else if(time <= 5){
        intercept = -0.9372327643824234;
        slope = 1.184021882912232 - -0.9372327643824234;
        return intercept + slope * (time - -0.9372327643824234);
    }
    else if(time <= 6){
        intercept = 1.184021882912232;
        slope = 1.454703753822512 - 1.184021882912232;
        return intercept + slope * (time - 1.184021882912232);
    }
    else if(time <= 7){
        intercept = 1.454703753822512;
        slope = -0.9900980785356485 - 1.454703753822512;
        return intercept + slope * (time - 1.454703753822512);
    }
    else if(time <= 8){
        intercept = -0.9900980785356485;
        slope = 1.6114754008236518 - -0.9900980785356485;
        return intercept + slope * (time - -0.9900980785356485);
    }
    else if(time <= 9){
        intercept = 1.6114754008236518;
        slope = -0.36958704188276986 - 1.6114754008236518;
        return intercept + slope * (time - 1.6114754008236518);
    }
    else if(time <= 10){
        intercept = -0.36958704188276986;
        slope = -0.009179843965828887 - -0.36958704188276986;
        return intercept + slope * (time - -0.36958704188276986);
    }
    else if(time <= 11){
        intercept = -0.009179843965828887;
        slope = -1.8038943658336835 - -0.009179843965828887;
        return intercept + slope * (time - -0.009179843965828887);
    }
    else if(time <= 12){
        intercept = -1.8038943658336835;
        slope = -1.442032325431342 - -1.8038943658336835;
        return intercept + slope * (time - -1.8038943658336835);
    }
    else if(time <= 13){
        intercept = -1.442032325431342;
        slope = 0.504458549838288 - -1.442032325431342;
        return intercept + slope * (time - -1.442032325431342);
    }
    else if(time <= 14){
        intercept = 0.504458549838288;
        slope = -0.7273438582202154 - 0.504458549838288;
        return intercept + slope * (time - 0.504458549838288);
    }
    else if(time <= 15){
        intercept = -0.7273438582202154;
        slope = 1.0627400426642626 - -0.7273438582202154;
        return intercept + slope * (time - -0.7273438582202154);
    }
    else if(time <= 16){
        intercept = 1.0627400426642626;
        slope = 0.8616608076171609 - 1.0627400426642626;
        return intercept + slope * (time - 1.0627400426642626);
    }
    else if(time <= 17){
        intercept = 0.8616608076171609;
        slope = -1.4820854629181228 - 0.8616608076171609;
        return intercept + slope * (time - 0.8616608076171609);
    }
    else if(time <= 18){
        intercept = -1.4820854629181228;
        slope = -0.07027404331826083 - -1.4820854629181228;
        return intercept + slope * (time - -1.4820854629181228);
    }
    else if(time <= 19){
        intercept = -0.07027404331826083;
        slope = -2.2876864801706644 - -0.07027404331826083;
        return intercept + slope * (time - -0.07027404331826083);
    }
    return -2.2876864801706644;
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
        intercept = 0.5684082759711195;
        slope = 0.15597104039164036 - 0.5684082759711195;
        return intercept + slope * (time - 0.5684082759711195);
    }
    else if(time <= 2){
        intercept = 0.15597104039164036;
        slope = 0.6978076718870873 - 0.15597104039164036;
        return intercept + slope * (time - 0.15597104039164036);
    }
    else if(time <= 3){
        intercept = 0.6978076718870873;
        slope = 1.5848526584712535 - 0.6978076718870873;
        return intercept + slope * (time - 0.6978076718870873);
    }
    else if(time <= 4){
        intercept = 1.5848526584712535;
        slope = 0.7061975195614616 - 1.5848526584712535;
        return intercept + slope * (time - 1.5848526584712535);
    }
    else if(time <= 5){
        intercept = 0.7061975195614616;
        slope = 0.10616054552353986 - 0.7061975195614616;
        return intercept + slope * (time - 0.7061975195614616);
    }
    else if(time <= 6){
        intercept = 0.10616054552353986;
        slope = 0.23226250242790422 - 0.10616054552353986;
        return intercept + slope * (time - 0.10616054552353986);
    }
    else if(time <= 7){
        intercept = 0.23226250242790422;
        slope = 0.3004725663111118 - 0.23226250242790422;
        return intercept + slope * (time - 0.23226250242790422);
    }
    else if(time <= 8){
        intercept = 0.3004725663111118;
        slope = 0.7727416641029247 - 0.3004725663111118;
        return intercept + slope * (time - 0.3004725663111118);
    }
    else if(time <= 9){
        intercept = 0.7727416641029247;
        slope = 0.6176437997568848 - 0.7727416641029247;
        return intercept + slope * (time - 0.7727416641029247);
    }
    else if(time <= 10){
        intercept = 0.6176437997568848;
        slope = 0.7066765990177573 - 0.6176437997568848;
        return intercept + slope * (time - 0.6176437997568848);
    }
    else if(time <= 11){
        intercept = 0.7066765990177573;
        slope = 1.2989985437218177 - 0.7066765990177573;
        return intercept + slope * (time - 0.7066765990177573);
    }
    else if(time <= 12){
        intercept = 1.2989985437218177;
        slope = 0.361587649965106 - 1.2989985437218177;
        return intercept + slope * (time - 1.2989985437218177);
    }
    else if(time <= 13){
        intercept = 0.361587649965106;
        slope = 1.4700804505464233 - 0.361587649965106;
        return intercept + slope * (time - 0.361587649965106);
    }
    else if(time <= 14){
        intercept = 1.4700804505464233;
        slope = 0.26982854219703406 - 1.4700804505464233;
        return intercept + slope * (time - 1.4700804505464233);
    }
    else if(time <= 15){
        intercept = 0.26982854219703406;
        slope = 1.186116775679415 - 0.26982854219703406;
        return intercept + slope * (time - 0.26982854219703406);
    }
    else if(time <= 16){
        intercept = 1.186116775679415;
        slope = 0.4356950384937879 - 1.186116775679415;
        return intercept + slope * (time - 1.186116775679415);
    }
    else if(time <= 17){
        intercept = 0.4356950384937879;
        slope = 0.4696653499668456 - 0.4356950384937879;
        return intercept + slope * (time - 0.4356950384937879);
    }
    else if(time <= 18){
        intercept = 0.4696653499668456;
        slope = 1.7073453328878692 - 0.4696653499668456;
        return intercept + slope * (time - 0.4696653499668456);
    }
    else if(time <= 19){
        intercept = 1.7073453328878692;
        slope = 1.653930309495693 - 1.7073453328878692;
        return intercept + slope * (time - 1.7073453328878692);
    }
    return 1.653930309495693;
}

real dataFunc__production_start_rate_m_noise_trun_norm_data(real time){
    // DataStructure for variable production_start_rate_m_noise_trun_norm_data
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.756232590362006;
        slope = 0.27935376273154783 - 0.756232590362006;
        return intercept + slope * (time - 0.756232590362006);
    }
    else if(time <= 2){
        intercept = 0.27935376273154783;
        slope = 1.2276331165897068 - 0.27935376273154783;
        return intercept + slope * (time - 0.27935376273154783);
    }
    else if(time <= 3){
        intercept = 1.2276331165897068;
        slope = 0.10695648985126789 - 1.2276331165897068;
        return intercept + slope * (time - 1.2276331165897068);
    }
    else if(time <= 4){
        intercept = 0.10695648985126789;
        slope = 0.5123228618462089 - 0.10695648985126789;
        return intercept + slope * (time - 0.10695648985126789);
    }
    else if(time <= 5){
        intercept = 0.5123228618462089;
        slope = 0.1633455126350238 - 0.5123228618462089;
        return intercept + slope * (time - 0.5123228618462089);
    }
    else if(time <= 6){
        intercept = 0.1633455126350238;
        slope = 1.8823061751285959 - 0.1633455126350238;
        return intercept + slope * (time - 0.1633455126350238);
    }
    else if(time <= 7){
        intercept = 1.8823061751285959;
        slope = 0.37528231344035556 - 1.8823061751285959;
        return intercept + slope * (time - 1.8823061751285959);
    }
    else if(time <= 8){
        intercept = 0.37528231344035556;
        slope = 0.805466176958498 - 0.37528231344035556;
        return intercept + slope * (time - 0.37528231344035556);
    }
    else if(time <= 9){
        intercept = 0.805466176958498;
        slope = 0.04584961784851766 - 0.805466176958498;
        return intercept + slope * (time - 0.805466176958498);
    }
    else if(time <= 10){
        intercept = 0.04584961784851766;
        slope = 0.8428697072848791 - 0.04584961784851766;
        return intercept + slope * (time - 0.04584961784851766);
    }
    else if(time <= 11){
        intercept = 0.8428697072848791;
        slope = 0.648724525491945 - 0.8428697072848791;
        return intercept + slope * (time - 0.8428697072848791);
    }
    else if(time <= 12){
        intercept = 0.648724525491945;
        slope = 0.2100966088813132 - 0.648724525491945;
        return intercept + slope * (time - 0.648724525491945);
    }
    else if(time <= 13){
        intercept = 0.2100966088813132;
        slope = 0.8509057410109052 - 0.2100966088813132;
        return intercept + slope * (time - 0.2100966088813132);
    }
    else if(time <= 14){
        intercept = 0.8509057410109052;
        slope = 0.7894911975248124 - 0.8509057410109052;
        return intercept + slope * (time - 0.8509057410109052);
    }
    else if(time <= 15){
        intercept = 0.7894911975248124;
        slope = 0.14503445404558316 - 0.7894911975248124;
        return intercept + slope * (time - 0.7894911975248124);
    }
    else if(time <= 16){
        intercept = 0.14503445404558316;
        slope = 0.4105417541697551 - 0.14503445404558316;
        return intercept + slope * (time - 0.14503445404558316);
    }
    else if(time <= 17){
        intercept = 0.4105417541697551;
        slope = 0.2294186712952453 - 0.4105417541697551;
        return intercept + slope * (time - 0.4105417541697551);
    }
    else if(time <= 18){
        intercept = 0.2294186712952453;
        slope = 1.5357358596587432 - 0.2294186712952453;
        return intercept + slope * (time - 0.2294186712952453);
    }
    else if(time <= 19){
        intercept = 1.5357358596587432;
        slope = 0.12903029072753508 - 1.5357358596587432;
        return intercept + slope * (time - 1.5357358596587432);
    }
    return 0.12903029072753508;
}

vector vensim_ode_func(real time, vector outcome, real minimum_order_processing_time, real inventory_adjustment_time){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real work_in_process_inventory = outcome[1];
    real inventory = outcome[2];
    real process_noise = outcome[3];
    real backlog = outcome[4];
    real production_rate_stocked = outcome[5];
    real production_start_rate_stocked = outcome[6];
    real expected_order_rate = outcome[7];

    real process_noise_scale = 1;
    real manufacturing_cycle_time = 8;
    real production_rate = process_noise * work_in_process_inventory / manufacturing_cycle_time;
    real time_step = 0.0625;
    real production_rate_stocked_change_rate = production_rate - production_rate_stocked / time_step;
    real production_rate_stocked_dydt = production_rate_stocked_change_rate;
    real time_to_average_order_rate = 8;
    real correlation_time = 10;
    real dt_tc = time_step / correlation_time;
    real white_noise = process_noise_scale * dataFunc__process_noise_std_norm_data(time) * 2 - dt_tc / dt_tc ^ 0.5;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real production_start_rate_stocked_change_rate = production_start_rate - production_start_rate_stocked / time_step;
    real expected_order_rate_dydt = change_in_exp_orders;
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real order_rate = dataFunc__customer_order_rate(time);
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_start_rate_stocked_dydt = production_start_rate_stocked_change_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real process_noise_change_rate = white_noise - process_noise / correlation_time;
    real process_noise_dydt = process_noise_change_rate;

    dydt[1] = work_in_process_inventory_dydt;
    dydt[2] = inventory_dydt;
    dydt[3] = process_noise_dydt;
    dydt[4] = backlog_dydt;
    dydt[5] = production_rate_stocked_dydt;
    dydt[6] = production_start_rate_stocked_dydt;
    dydt[7] = expected_order_rate_dydt;

    return dydt;
}
