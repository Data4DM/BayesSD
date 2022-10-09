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
        intercept = -0.9056459930267704;
        slope = -1.3626321818948894 - -0.9056459930267704;
        return intercept + slope * (time - -0.9056459930267704);
    }
    else if(time <= 2){
        intercept = -1.3626321818948894;
        slope = -0.9520562436957929 - -1.3626321818948894;
        return intercept + slope * (time - -1.3626321818948894);
    }
    else if(time <= 3){
        intercept = -0.9520562436957929;
        slope = 1.0125715635352845 - -0.9520562436957929;
        return intercept + slope * (time - -0.9520562436957929);
    }
    else if(time <= 4){
        intercept = 1.0125715635352845;
        slope = 0.7889260238230563 - 1.0125715635352845;
        return intercept + slope * (time - 1.0125715635352845);
    }
    else if(time <= 5){
        intercept = 0.7889260238230563;
        slope = -0.2657631033953859 - 0.7889260238230563;
        return intercept + slope * (time - 0.7889260238230563);
    }
    else if(time <= 6){
        intercept = -0.2657631033953859;
        slope = -0.36005133411262835 - -0.2657631033953859;
        return intercept + slope * (time - -0.2657631033953859);
    }
    else if(time <= 7){
        intercept = -0.36005133411262835;
        slope = 1.5058457311460383 - -0.36005133411262835;
        return intercept + slope * (time - -0.36005133411262835);
    }
    else if(time <= 8){
        intercept = 1.5058457311460383;
        slope = -0.3446913554741103 - 1.5058457311460383;
        return intercept + slope * (time - 1.5058457311460383);
    }
    else if(time <= 9){
        intercept = -0.3446913554741103;
        slope = 0.479331918147344 - -0.3446913554741103;
        return intercept + slope * (time - -0.3446913554741103);
    }
    else if(time <= 10){
        intercept = 0.479331918147344;
        slope = 0.29297082950045483 - 0.479331918147344;
        return intercept + slope * (time - 0.479331918147344);
    }
    else if(time <= 11){
        intercept = 0.29297082950045483;
        slope = -1.1098902117731562 - 0.29297082950045483;
        return intercept + slope * (time - 0.29297082950045483);
    }
    else if(time <= 12){
        intercept = -1.1098902117731562;
        slope = -0.2149989368691347 - -1.1098902117731562;
        return intercept + slope * (time - -1.1098902117731562);
    }
    else if(time <= 13){
        intercept = -0.2149989368691347;
        slope = -0.12768054672972365 - -0.2149989368691347;
        return intercept + slope * (time - -0.2149989368691347);
    }
    else if(time <= 14){
        intercept = -0.12768054672972365;
        slope = -0.02345048315803525 - -0.12768054672972365;
        return intercept + slope * (time - -0.12768054672972365);
    }
    else if(time <= 15){
        intercept = -0.02345048315803525;
        slope = 0.3197408691727334 - -0.02345048315803525;
        return intercept + slope * (time - -0.02345048315803525);
    }
    else if(time <= 16){
        intercept = 0.3197408691727334;
        slope = 0.6747442779813076 - 0.3197408691727334;
        return intercept + slope * (time - 0.3197408691727334);
    }
    else if(time <= 17){
        intercept = 0.6747442779813076;
        slope = -0.1290404325458334 - 0.6747442779813076;
        return intercept + slope * (time - 0.6747442779813076);
    }
    else if(time <= 18){
        intercept = -0.1290404325458334;
        slope = -0.6856090117223909 - -0.1290404325458334;
        return intercept + slope * (time - -0.1290404325458334);
    }
    else if(time <= 19){
        intercept = -0.6856090117223909;
        slope = 0.2594285231064042 - -0.6856090117223909;
        return intercept + slope * (time - -0.6856090117223909);
    }
    return 0.2594285231064042;
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
        intercept = 0.7365757315174168;
        slope = 0.5218457331636457 - 0.7365757315174168;
        return intercept + slope * (time - 0.7365757315174168);
    }
    else if(time <= 2){
        intercept = 0.5218457331636457;
        slope = 0.506514638134523 - 0.5218457331636457;
        return intercept + slope * (time - 0.5218457331636457);
    }
    else if(time <= 3){
        intercept = 0.506514638134523;
        slope = 0.8344987145388532 - 0.506514638134523;
        return intercept + slope * (time - 0.506514638134523);
    }
    else if(time <= 4){
        intercept = 0.8344987145388532;
        slope = 0.7677490654035639 - 0.8344987145388532;
        return intercept + slope * (time - 0.8344987145388532);
    }
    else if(time <= 5){
        intercept = 0.7677490654035639;
        slope = 0.6207221891683575 - 0.7677490654035639;
        return intercept + slope * (time - 0.7677490654035639);
    }
    else if(time <= 6){
        intercept = 0.6207221891683575;
        slope = 0.8596889830176185 - 0.6207221891683575;
        return intercept + slope * (time - 0.6207221891683575);
    }
    else if(time <= 7){
        intercept = 0.8596889830176185;
        slope = 0.32557358817630055 - 0.8596889830176185;
        return intercept + slope * (time - 0.8596889830176185);
    }
    else if(time <= 8){
        intercept = 0.32557358817630055;
        slope = 0.25307848988791354 - 0.32557358817630055;
        return intercept + slope * (time - 0.32557358817630055);
    }
    else if(time <= 9){
        intercept = 0.25307848988791354;
        slope = 0.753749342823029 - 0.25307848988791354;
        return intercept + slope * (time - 0.25307848988791354);
    }
    else if(time <= 10){
        intercept = 0.753749342823029;
        slope = 0.30919868255161204 - 0.753749342823029;
        return intercept + slope * (time - 0.753749342823029);
    }
    else if(time <= 11){
        intercept = 0.30919868255161204;
        slope = 0.4144644115757794 - 0.30919868255161204;
        return intercept + slope * (time - 0.30919868255161204);
    }
    else if(time <= 12){
        intercept = 0.4144644115757794;
        slope = 0.4794374769650632 - 0.4144644115757794;
        return intercept + slope * (time - 0.4144644115757794);
    }
    else if(time <= 13){
        intercept = 0.4794374769650632;
        slope = 0.42878815859765146 - 0.4794374769650632;
        return intercept + slope * (time - 0.4794374769650632);
    }
    else if(time <= 14){
        intercept = 0.42878815859765146;
        slope = 0.14784722418098728 - 0.42878815859765146;
        return intercept + slope * (time - 0.42878815859765146);
    }
    else if(time <= 15){
        intercept = 0.14784722418098728;
        slope = 0.5698226477203134 - 0.14784722418098728;
        return intercept + slope * (time - 0.14784722418098728);
    }
    else if(time <= 16){
        intercept = 0.5698226477203134;
        slope = 0.5561124062132053 - 0.5698226477203134;
        return intercept + slope * (time - 0.5698226477203134);
    }
    else if(time <= 17){
        intercept = 0.5561124062132053;
        slope = 0.7177153819113886 - 0.5561124062132053;
        return intercept + slope * (time - 0.5561124062132053);
    }
    else if(time <= 18){
        intercept = 0.7177153819113886;
        slope = 0.3094283522690975 - 0.7177153819113886;
        return intercept + slope * (time - 0.7177153819113886);
    }
    else if(time <= 19){
        intercept = 0.3094283522690975;
        slope = 0.6556720342250691 - 0.3094283522690975;
        return intercept + slope * (time - 0.3094283522690975);
    }
    return 0.6556720342250691;
}

real dataFunc__beta22shift1_4_production_start_rate_m_noise(real time){
    // DataStructure for variable beta22shift1_4_production_start_rate_m_noise
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.7446951987854649;
        slope = 0.6883948722261527 - 0.7446951987854649;
        return intercept + slope * (time - 0.7446951987854649);
    }
    else if(time <= 2){
        intercept = 0.6883948722261527;
        slope = 0.4035150343778193 - 0.6883948722261527;
        return intercept + slope * (time - 0.6883948722261527);
    }
    else if(time <= 3){
        intercept = 0.4035150343778193;
        slope = 0.4180224234434094 - 0.4035150343778193;
        return intercept + slope * (time - 0.4035150343778193);
    }
    else if(time <= 4){
        intercept = 0.4180224234434094;
        slope = 0.14097083391873041 - 0.4180224234434094;
        return intercept + slope * (time - 0.4180224234434094);
    }
    else if(time <= 5){
        intercept = 0.14097083391873041;
        slope = 0.6705595753858641 - 0.14097083391873041;
        return intercept + slope * (time - 0.14097083391873041);
    }
    else if(time <= 6){
        intercept = 0.6705595753858641;
        slope = 0.3373558334180697 - 0.6705595753858641;
        return intercept + slope * (time - 0.6705595753858641);
    }
    else if(time <= 7){
        intercept = 0.3373558334180697;
        slope = 0.5525268576970859 - 0.3373558334180697;
        return intercept + slope * (time - 0.3373558334180697);
    }
    else if(time <= 8){
        intercept = 0.5525268576970859;
        slope = 0.05906202904249965 - 0.5525268576970859;
        return intercept + slope * (time - 0.5525268576970859);
    }
    else if(time <= 9){
        intercept = 0.05906202904249965;
        slope = 0.5769838008876901 - 0.05906202904249965;
        return intercept + slope * (time - 0.05906202904249965);
    }
    else if(time <= 10){
        intercept = 0.5769838008876901;
        slope = 0.20763373937901689 - 0.5769838008876901;
        return intercept + slope * (time - 0.5769838008876901);
    }
    else if(time <= 11){
        intercept = 0.20763373937901689;
        slope = 0.677965939187817 - 0.20763373937901689;
        return intercept + slope * (time - 0.20763373937901689);
    }
    else if(time <= 12){
        intercept = 0.677965939187817;
        slope = 0.3409647148070116 - 0.677965939187817;
        return intercept + slope * (time - 0.677965939187817);
    }
    else if(time <= 13){
        intercept = 0.3409647148070116;
        slope = 0.8305389387641781 - 0.3409647148070116;
        return intercept + slope * (time - 0.3409647148070116);
    }
    else if(time <= 14){
        intercept = 0.8305389387641781;
        slope = 0.4615963284213936 - 0.8305389387641781;
        return intercept + slope * (time - 0.8305389387641781);
    }
    else if(time <= 15){
        intercept = 0.4615963284213936;
        slope = 0.48941411260051326 - 0.4615963284213936;
        return intercept + slope * (time - 0.4615963284213936);
    }
    else if(time <= 16){
        intercept = 0.48941411260051326;
        slope = 0.5376346871759544 - 0.48941411260051326;
        return intercept + slope * (time - 0.48941411260051326);
    }
    else if(time <= 17){
        intercept = 0.5376346871759544;
        slope = 0.7333521704356144 - 0.5376346871759544;
        return intercept + slope * (time - 0.5376346871759544);
    }
    else if(time <= 18){
        intercept = 0.7333521704356144;
        slope = 0.7677446698350139 - 0.7333521704356144;
        return intercept + slope * (time - 0.7333521704356144);
    }
    else if(time <= 19){
        intercept = 0.7677446698350139;
        slope = 0.39683169718900296 - 0.7677446698350139;
        return intercept + slope * (time - 0.7677446698350139);
    }
    return 0.39683169718900296;
}

vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real inventory = outcome[1];
    real production_rate_stocked = outcome[2];
    real production_start_rate_stocked = outcome[3];
    real work_in_process_inventory = outcome[4];
    real backlog = outcome[5];
    real process_noise = outcome[6];
    real expected_order_rate = outcome[7];

    real process_noise_scale = 1;
    real time_step = 0.0625;
    real correlation_time = 10;
    real dt_tc = time_step / correlation_time;
    real white_noise = process_noise_scale * dataFunc__standard_normal_for_process_noise(time) * 2 - dt_tc / dt_tc ^ 0.5;
    real process_noise_change_rate = white_noise - process_noise / correlation_time;
    real minimum_order_processing_time = 2;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real manufacturing_cycle_time = 8;
    real production_rate = process_noise * work_in_process_inventory / manufacturing_cycle_time;
    real inventory_dydt = production_rate - shipment_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real order_rate = dataFunc__customer_order_rate(time);
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_start_rate_stocked_change_rate = production_start_rate - production_start_rate_stocked / time_step;
    real production_start_rate_stocked_dydt = production_start_rate_stocked_change_rate;
    real production_rate_stocked_change_rate = production_rate - production_rate_stocked / time_step;
    real process_noise_dydt = process_noise_change_rate;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real production_rate_stocked_dydt = production_rate_stocked_change_rate;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real order_fulfillment_rate = shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real expected_order_rate_dydt = change_in_exp_orders;

    dydt[1] = inventory_dydt;
    dydt[2] = production_rate_stocked_dydt;
    dydt[3] = production_start_rate_stocked_dydt;
    dydt[4] = work_in_process_inventory_dydt;
    dydt[5] = backlog_dydt;
    dydt[6] = process_noise_dydt;
    dydt[7] = expected_order_rate_dydt;

    return dydt;
}
