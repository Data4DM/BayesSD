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
        intercept = -0.04677798681355819;
        slope = 0.6952351899042891 - -0.04677798681355819;
        return intercept + slope * (time - -0.04677798681355819);
    }
    else if(time <= 2){
        intercept = 0.6952351899042891;
        slope = 0.127104058729867 - 0.6952351899042891;
        return intercept + slope * (time - 0.6952351899042891);
    }
    else if(time <= 3){
        intercept = 0.127104058729867;
        slope = 0.024985544406850118 - 0.127104058729867;
        return intercept + slope * (time - 0.127104058729867);
    }
    else if(time <= 4){
        intercept = 0.024985544406850118;
        slope = -0.42433362592172347 - 0.024985544406850118;
        return intercept + slope * (time - 0.024985544406850118);
    }
    else if(time <= 5){
        intercept = -0.42433362592172347;
        slope = 0.13203933805130202 - -0.42433362592172347;
        return intercept + slope * (time - -0.42433362592172347);
    }
    else if(time <= 6){
        intercept = 0.13203933805130202;
        slope = 0.5476595916038439 - 0.13203933805130202;
        return intercept + slope * (time - 0.13203933805130202);
    }
    else if(time <= 7){
        intercept = 0.5476595916038439;
        slope = -0.1323891955228414 - 0.5476595916038439;
        return intercept + slope * (time - 0.5476595916038439);
    }
    else if(time <= 8){
        intercept = -0.1323891955228414;
        slope = 0.34812280119686007 - -0.1323891955228414;
        return intercept + slope * (time - -0.1323891955228414);
    }
    else if(time <= 9){
        intercept = 0.34812280119686007;
        slope = 2.2796535118484282 - 0.34812280119686007;
        return intercept + slope * (time - 0.34812280119686007);
    }
    else if(time <= 10){
        intercept = 2.2796535118484282;
        slope = 0.27692130467554055 - 2.2796535118484282;
        return intercept + slope * (time - 2.2796535118484282);
    }
    else if(time <= 11){
        intercept = 0.27692130467554055;
        slope = -2.4192022484551754 - 0.27692130467554055;
        return intercept + slope * (time - 0.27692130467554055);
    }
    else if(time <= 12){
        intercept = -2.4192022484551754;
        slope = 0.39885702732925943 - -2.4192022484551754;
        return intercept + slope * (time - -2.4192022484551754);
    }
    else if(time <= 13){
        intercept = 0.39885702732925943;
        slope = -0.0777003189564063 - 0.39885702732925943;
        return intercept + slope * (time - 0.39885702732925943);
    }
    else if(time <= 14){
        intercept = -0.0777003189564063;
        slope = -1.4171980428668838 - -0.0777003189564063;
        return intercept + slope * (time - -0.0777003189564063);
    }
    else if(time <= 15){
        intercept = -1.4171980428668838;
        slope = 0.8967302781669809 - -1.4171980428668838;
        return intercept + slope * (time - -1.4171980428668838);
    }
    else if(time <= 16){
        intercept = 0.8967302781669809;
        slope = 0.5129631345609051 - 0.8967302781669809;
        return intercept + slope * (time - 0.8967302781669809);
    }
    else if(time <= 17){
        intercept = 0.5129631345609051;
        slope = -0.6080489930098131 - 0.5129631345609051;
        return intercept + slope * (time - 0.5129631345609051);
    }
    else if(time <= 18){
        intercept = -0.6080489930098131;
        slope = 0.5873464090064716 - -0.6080489930098131;
        return intercept + slope * (time - -0.6080489930098131);
    }
    else if(time <= 19){
        intercept = 0.5873464090064716;
        slope = 0.9947780940147469 - 0.5873464090064716;
        return intercept + slope * (time - 0.5873464090064716);
    }
    return 0.9947780940147469;
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
        intercept = 0.33546762529188295;
        slope = 0.5849531483029753 - 0.33546762529188295;
        return intercept + slope * (time - 0.33546762529188295);
    }
    else if(time <= 2){
        intercept = 0.5849531483029753;
        slope = 0.49326645247347506 - 0.5849531483029753;
        return intercept + slope * (time - 0.5849531483029753);
    }
    else if(time <= 3){
        intercept = 0.49326645247347506;
        slope = 0.810025931799773 - 0.49326645247347506;
        return intercept + slope * (time - 0.49326645247347506);
    }
    else if(time <= 4){
        intercept = 0.810025931799773;
        slope = 0.3532299470227549 - 0.810025931799773;
        return intercept + slope * (time - 0.810025931799773);
    }
    else if(time <= 5){
        intercept = 0.3532299470227549;
        slope = 0.9091628874871748 - 0.3532299470227549;
        return intercept + slope * (time - 0.3532299470227549);
    }
    else if(time <= 6){
        intercept = 0.9091628874871748;
        slope = 0.4702335956293376 - 0.9091628874871748;
        return intercept + slope * (time - 0.9091628874871748);
    }
    else if(time <= 7){
        intercept = 0.4702335956293376;
        slope = 0.5013807499987308 - 0.4702335956293376;
        return intercept + slope * (time - 0.4702335956293376);
    }
    else if(time <= 8){
        intercept = 0.5013807499987308;
        slope = 0.18958773701915244 - 0.5013807499987308;
        return intercept + slope * (time - 0.5013807499987308);
    }
    else if(time <= 9){
        intercept = 0.18958773701915244;
        slope = 0.05371028028327565 - 0.18958773701915244;
        return intercept + slope * (time - 0.18958773701915244);
    }
    else if(time <= 10){
        intercept = 0.05371028028327565;
        slope = 0.7647084847484509 - 0.05371028028327565;
        return intercept + slope * (time - 0.05371028028327565);
    }
    else if(time <= 11){
        intercept = 0.7647084847484509;
        slope = 0.9035603437267634 - 0.7647084847484509;
        return intercept + slope * (time - 0.7647084847484509);
    }
    else if(time <= 12){
        intercept = 0.9035603437267634;
        slope = 0.3828472827689218 - 0.9035603437267634;
        return intercept + slope * (time - 0.9035603437267634);
    }
    else if(time <= 13){
        intercept = 0.3828472827689218;
        slope = 0.6176725793793938 - 0.3828472827689218;
        return intercept + slope * (time - 0.3828472827689218);
    }
    else if(time <= 14){
        intercept = 0.6176725793793938;
        slope = 0.7110982114599701 - 0.6176725793793938;
        return intercept + slope * (time - 0.6176725793793938);
    }
    else if(time <= 15){
        intercept = 0.7110982114599701;
        slope = 0.31678597289181337 - 0.7110982114599701;
        return intercept + slope * (time - 0.7110982114599701);
    }
    else if(time <= 16){
        intercept = 0.31678597289181337;
        slope = 0.2913648644746743 - 0.31678597289181337;
        return intercept + slope * (time - 0.31678597289181337);
    }
    else if(time <= 17){
        intercept = 0.2913648644746743;
        slope = 0.19729171818895586 - 0.2913648644746743;
        return intercept + slope * (time - 0.2913648644746743);
    }
    else if(time <= 18){
        intercept = 0.19729171818895586;
        slope = 0.33061019026865873 - 0.19729171818895586;
        return intercept + slope * (time - 0.19729171818895586);
    }
    else if(time <= 19){
        intercept = 0.33061019026865873;
        slope = 0.5709585591960687 - 0.33061019026865873;
        return intercept + slope * (time - 0.33061019026865873);
    }
    return 0.5709585591960687;
}

real dataFunc__beta22shift1_4_production_start_rate_m_noise(real time){
    // DataStructure for variable beta22shift1_4_production_start_rate_m_noise
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.6847888775270805;
        slope = 0.7600447165251485 - 0.6847888775270805;
        return intercept + slope * (time - 0.6847888775270805);
    }
    else if(time <= 2){
        intercept = 0.7600447165251485;
        slope = 0.8924608092093553 - 0.7600447165251485;
        return intercept + slope * (time - 0.7600447165251485);
    }
    else if(time <= 3){
        intercept = 0.8924608092093553;
        slope = 0.9157176540980331 - 0.8924608092093553;
        return intercept + slope * (time - 0.8924608092093553);
    }
    else if(time <= 4){
        intercept = 0.9157176540980331;
        slope = 0.5789523924038676 - 0.9157176540980331;
        return intercept + slope * (time - 0.9157176540980331);
    }
    else if(time <= 5){
        intercept = 0.5789523924038676;
        slope = 0.10461307326955223 - 0.5789523924038676;
        return intercept + slope * (time - 0.5789523924038676);
    }
    else if(time <= 6){
        intercept = 0.10461307326955223;
        slope = 0.422030742871673 - 0.10461307326955223;
        return intercept + slope * (time - 0.10461307326955223);
    }
    else if(time <= 7){
        intercept = 0.422030742871673;
        slope = 0.41649650056547693 - 0.422030742871673;
        return intercept + slope * (time - 0.422030742871673);
    }
    else if(time <= 8){
        intercept = 0.41649650056547693;
        slope = 0.787265215255263 - 0.41649650056547693;
        return intercept + slope * (time - 0.41649650056547693);
    }
    else if(time <= 9){
        intercept = 0.787265215255263;
        slope = 0.24492000423421623 - 0.787265215255263;
        return intercept + slope * (time - 0.787265215255263);
    }
    else if(time <= 10){
        intercept = 0.24492000423421623;
        slope = 0.5836198337204955 - 0.24492000423421623;
        return intercept + slope * (time - 0.24492000423421623);
    }
    else if(time <= 11){
        intercept = 0.5836198337204955;
        slope = 0.5153479070882534 - 0.5836198337204955;
        return intercept + slope * (time - 0.5836198337204955);
    }
    else if(time <= 12){
        intercept = 0.5153479070882534;
        slope = 0.6315122270649448 - 0.5153479070882534;
        return intercept + slope * (time - 0.5153479070882534);
    }
    else if(time <= 13){
        intercept = 0.6315122270649448;
        slope = 0.650411091611227 - 0.6315122270649448;
        return intercept + slope * (time - 0.6315122270649448);
    }
    else if(time <= 14){
        intercept = 0.650411091611227;
        slope = 0.40217114444220187 - 0.650411091611227;
        return intercept + slope * (time - 0.650411091611227);
    }
    else if(time <= 15){
        intercept = 0.40217114444220187;
        slope = 0.605814269619305 - 0.40217114444220187;
        return intercept + slope * (time - 0.40217114444220187);
    }
    else if(time <= 16){
        intercept = 0.605814269619305;
        slope = 0.10886392718756507 - 0.605814269619305;
        return intercept + slope * (time - 0.605814269619305);
    }
    else if(time <= 17){
        intercept = 0.10886392718756507;
        slope = 0.5307357699996709 - 0.10886392718756507;
        return intercept + slope * (time - 0.10886392718756507);
    }
    else if(time <= 18){
        intercept = 0.5307357699996709;
        slope = 0.6657931846582231 - 0.5307357699996709;
        return intercept + slope * (time - 0.5307357699996709);
    }
    else if(time <= 19){
        intercept = 0.6657931846582231;
        slope = 0.43099216225787806 - 0.6657931846582231;
        return intercept + slope * (time - 0.6657931846582231);
    }
    return 0.43099216225787806;
}

vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time){
    vector[7] dydt;  // Return vector of the ODE function

    // State variables
    real expected_order_rate = outcome[1];
    real production_start_rate_stocked = outcome[2];
    real process_noise = outcome[3];
    real inventory = outcome[4];
    real work_in_process_inventory = outcome[5];
    real backlog = outcome[6];
    real production_rate_stocked = outcome[7];

    real time_step = 0.0625;
    real manufacturing_cycle_time = 8;
    real production_rate = process_noise * work_in_process_inventory / manufacturing_cycle_time;
    real production_rate_stocked_change_rate = production_rate - production_rate_stocked / time_step;
    real safety_stock_coverage = 2;
    real minimum_order_processing_time = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real wip_adjustment_time = 2;
    real desired_wip = manufacturing_cycle_time * desired_production;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_start_rate_stocked_change_rate = production_start_rate - production_start_rate_stocked / time_step;
    real production_start_rate_stocked_dydt = production_start_rate_stocked_change_rate;
    real correlation_time = 10;
    real dt_tc = time_step / correlation_time;
    real process_noise_scale = 1;
    real white_noise = process_noise_scale * dataFunc__standard_normal_for_process_noise(time) * 2 - dt_tc / dt_tc ^ 0.5;
    real target_delivery_delay = 2;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_rate = dataFunc__customer_order_rate(time);
    real desired_shipment_rate = backlog / target_delivery_delay;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real production_rate_stocked_dydt = production_rate_stocked_change_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real process_noise_change_rate = white_noise - process_noise / correlation_time;
    real process_noise_dydt = process_noise_change_rate;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real inventory_dydt = production_rate - shipment_rate;

    dydt[1] = expected_order_rate_dydt;
    dydt[2] = production_start_rate_stocked_dydt;
    dydt[3] = process_noise_dydt;
    dydt[4] = inventory_dydt;
    dydt[5] = work_in_process_inventory_dydt;
    dydt[6] = backlog_dydt;
    dydt[7] = production_rate_stocked_dydt;

    return dydt;
}
