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
        intercept = -0.23495698734136272;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (0.09455172698284542 - -0.23495698734136272) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = 0.09455172698284542;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (-0.40052907912484825 - 0.09455172698284542) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = -0.40052907912484825;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (-0.32358864543908805 - -0.40052907912484825) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = -0.32358864543908805;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (0.3842819226325519 - -0.32358864543908805) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = 0.3842819226325519;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (-0.3057586240061675 - 0.3842819226325519) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = -0.3057586240061675;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (-0.00800929651007809 - -0.3057586240061675) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = -0.00800929651007809;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (0.20936551782958368 - -0.00800929651007809) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = 0.20936551782958368;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (-0.0007553887686153615 - 0.20936551782958368) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = -0.0007553887686153615;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (-0.2728578372395569 - -0.0007553887686153615) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = -0.2728578372395569;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (-0.4846717219478155 - -0.2728578372395569) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = -0.4846717219478155;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (-0.22454770369596488 - -0.4846717219478155) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = -0.22454770369596488;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (0.027669017055004907 - -0.22454770369596488) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = 0.027669017055004907;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (0.19726402278956723 - 0.027669017055004907) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = 0.19726402278956723;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (-0.3120618982048744 - 0.19726402278956723) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = -0.3120618982048744;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (0.3155713805989592 - -0.3120618982048744) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = 0.3155713805989592;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (-0.3668138671716298 - 0.3155713805989592) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = -0.3668138671716298;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (-0.314031125458202 - -0.3668138671716298) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = -0.314031125458202;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (-0.3918715841051428 - -0.314031125458202) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = -0.3918715841051428;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (-0.12078317796218863 - -0.3918715841051428) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    else if(time <= time_step * 20){
        intercept = -0.12078317796218863;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (0.3687025244421982 - -0.12078317796218863) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = 0.3687025244421982;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (-0.1703724663953755 - 0.3687025244421982) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = -0.1703724663953755;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (0.07524744468647249 - -0.1703724663953755) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = 0.07524744468647249;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (0.22099637193118482 - 0.07524744468647249) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = 0.22099637193118482;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (-0.17452617207756416 - 0.22099637193118482) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = -0.17452617207756416;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (-0.1692475107076099 - -0.17452617207756416) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = -0.1692475107076099;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (0.21557464749785327 - -0.1692475107076099) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = 0.21557464749785327;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (-0.26544423362050384 - 0.21557464749785327) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = -0.26544423362050384;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (-0.040256035450240146 - -0.26544423362050384) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = -0.040256035450240146;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (0.12683060958193915 - -0.040256035450240146) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = 0.12683060958193915;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (0.06437655810714349 - 0.12683060958193915) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = 0.06437655810714349;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (-0.020916829168939666 - 0.06437655810714349) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = -0.020916829168939666;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (-0.2936143898175323 - -0.020916829168939666) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = -0.2936143898175323;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (0.17507336359590608 - -0.2936143898175323) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 0.17507336359590608;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (-0.18345476238720593 - 0.17507336359590608) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = -0.18345476238720593;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (0.33719436242077505 - -0.18345476238720593) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = 0.33719436242077505;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (0.20822990850836076 - 0.33719436242077505) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = 0.20822990850836076;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (-0.37191463331994057 - 0.20822990850836076) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = -0.37191463331994057;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (0.07482389492441044 - -0.37191463331994057) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = 0.07482389492441044;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (0.4174352777661222 - 0.07482389492441044) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = 0.4174352777661222;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (-0.33307370795273494 - 0.4174352777661222) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = -0.33307370795273494;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (-0.12720846177716583 - -0.33307370795273494) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = -0.12720846177716583;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (0.3877749574475169 - -0.12720846177716583) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = 0.3877749574475169;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (0.06814679549097447 - 0.3877749574475169) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = 0.06814679549097447;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (0.4466774160674092 - 0.06814679549097447) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = 0.4466774160674092;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (-0.25430398637097684 - 0.4466774160674092) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = -0.25430398637097684;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (0.03591741181516561 - -0.25430398637097684) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = 0.03591741181516561;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (-0.44822634922077664 - 0.03591741181516561) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = -0.44822634922077664;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (0.2745844262900473 - -0.44822634922077664) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = 0.2745844262900473;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (0.4880427146052446 - 0.2745844262900473) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = 0.4880427146052446;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (-0.07829648118660604 - 0.4880427146052446) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = -0.07829648118660604;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (0.4903576142644822 - -0.07829648118660604) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 0.4903576142644822;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (-0.4835986425297425 - 0.4903576142644822) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = -0.4835986425297425;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (-0.22419309310722346 - -0.4835986425297425) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = -0.22419309310722346;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (0.3635397782613068 - -0.22419309310722346) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = 0.3635397782613068;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (-0.378260846389635 - 0.3635397782613068) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = -0.378260846389635;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (0.4208783280255227 - -0.378260846389635) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = 0.4208783280255227;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (-0.3291520260258525 - 0.4208783280255227) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = -0.3291520260258525;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (-0.3848102500072649 - -0.3291520260258525) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = -0.3848102500072649;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (-0.1862300819542435 - -0.3848102500072649) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = -0.1862300819542435;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (0.2599273157413988 - -0.1862300819542435) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = 0.2599273157413988;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (-0.46423992656197655 - 0.2599273157413988) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = -0.46423992656197655;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (-0.28086267964396405 - -0.46423992656197655) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = -0.28086267964396405;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (-0.3952392847303936 - -0.28086267964396405) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = -0.3952392847303936;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (0.3936333844554687 - -0.3952392847303936) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = 0.3936333844554687;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (-0.28538950115841544 - 0.3936333844554687) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = -0.28538950115841544;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (0.17947293517197727 - -0.28538950115841544) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = 0.17947293517197727;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (0.27884894030286944 - 0.17947293517197727) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = 0.27884894030286944;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (-0.10841464677146062 - 0.27884894030286944) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = -0.10841464677146062;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (-0.34966819104335745 - -0.10841464677146062) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = -0.34966819104335745;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (-0.09010839661947367 - -0.34966819104335745) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = -0.09010839661947367;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (-0.4226740338215399 - -0.09010839661947367) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = -0.4226740338215399;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (-0.23199049767703062 - -0.4226740338215399) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = -0.23199049767703062;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (0.4805109525751081 - -0.23199049767703062) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = 0.4805109525751081;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (-0.20210936146605885 - 0.4805109525751081) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = -0.20210936146605885;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (-0.2045051532726112 - -0.20210936146605885) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = -0.2045051532726112;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (0.0005316855734072146 - -0.2045051532726112) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = 0.0005316855734072146;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (-0.2465364931174696 - 0.0005316855734072146) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = -0.2465364931174696;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (-0.4899844800970319 - -0.2465364931174696) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = -0.4899844800970319;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (-0.33572620151908505 - -0.4899844800970319) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = -0.33572620151908505;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (-0.2847557452303455 - -0.33572620151908505) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = -0.2847557452303455;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (-0.11216123512794696 - -0.2847557452303455) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = -0.11216123512794696;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (-0.2925975276478322 - -0.11216123512794696) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = -0.2925975276478322;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (-0.44311647757239914 - -0.2925975276478322) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = -0.44311647757239914;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (-0.254345813362426 - -0.44311647757239914) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = -0.254345813362426;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (0.2118046859824828 - -0.254345813362426) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = 0.2118046859824828;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (-0.47034978506910374 - 0.2118046859824828) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = -0.47034978506910374;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (0.1641628272046517 - -0.47034978506910374) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = 0.1641628272046517;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (0.3960361436258286 - 0.1641628272046517) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = 0.3960361436258286;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (-0.4525549533366916 - 0.3960361436258286) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = -0.4525549533366916;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (0.418772444867233 - -0.4525549533366916) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 0.418772444867233;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (0.30421891552765024 - 0.418772444867233) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = 0.30421891552765024;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (0.1290729537751656 - 0.30421891552765024) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = 0.1290729537751656;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (0.2441815581080259 - 0.1290729537751656) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 0.2441815581080259;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (-0.0674657801892915 - 0.2441815581080259) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = -0.0674657801892915;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (0.20424705144568545 - -0.0674657801892915) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = 0.20424705144568545;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (0.1481784332773458 - 0.20424705144568545) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = 0.1481784332773458;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (0.15458978642990717 - 0.1481784332773458) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = 0.15458978642990717;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (0.43287269604444345 - 0.15458978642990717) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = 0.43287269604444345;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (-0.4310627543402974 - 0.43287269604444345) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    else if(time <= time_step * 100){
        intercept = -0.4310627543402974;
        real local_time_step = time_step * 100 - time_step * 99;
        slope = (0.32376107381655717 - -0.4310627543402974) / local_time_step;
        return intercept + slope * (time - time_step * 99);
    }
    else if(time <= time_step * 101){
        intercept = 0.32376107381655717;
        real local_time_step = time_step * 101 - time_step * 100;
        slope = (0.33794322941075217 - 0.32376107381655717) / local_time_step;
        return intercept + slope * (time - time_step * 100);
    }
    else if(time <= time_step * 102){
        intercept = 0.33794322941075217;
        real local_time_step = time_step * 102 - time_step * 101;
        slope = (-0.4677361042370659 - 0.33794322941075217) / local_time_step;
        return intercept + slope * (time - time_step * 101);
    }
    else if(time <= time_step * 103){
        intercept = -0.4677361042370659;
        real local_time_step = time_step * 103 - time_step * 102;
        slope = (0.2504383987826272 - -0.4677361042370659) / local_time_step;
        return intercept + slope * (time - time_step * 102);
    }
    else if(time <= time_step * 104){
        intercept = 0.2504383987826272;
        real local_time_step = time_step * 104 - time_step * 103;
        slope = (-0.018834570856340993 - 0.2504383987826272) / local_time_step;
        return intercept + slope * (time - time_step * 103);
    }
    else if(time <= time_step * 105){
        intercept = -0.018834570856340993;
        real local_time_step = time_step * 105 - time_step * 104;
        slope = (-0.4307764362112799 - -0.018834570856340993) / local_time_step;
        return intercept + slope * (time - time_step * 104);
    }
    else if(time <= time_step * 106){
        intercept = -0.4307764362112799;
        real local_time_step = time_step * 106 - time_step * 105;
        slope = (-0.3287992062875892 - -0.4307764362112799) / local_time_step;
        return intercept + slope * (time - time_step * 105);
    }
    else if(time <= time_step * 107){
        intercept = -0.3287992062875892;
        real local_time_step = time_step * 107 - time_step * 106;
        slope = (-0.40579603160046807 - -0.3287992062875892) / local_time_step;
        return intercept + slope * (time - time_step * 106);
    }
    else if(time <= time_step * 108){
        intercept = -0.40579603160046807;
        real local_time_step = time_step * 108 - time_step * 107;
        slope = (0.30230443531646267 - -0.40579603160046807) / local_time_step;
        return intercept + slope * (time - time_step * 107);
    }
    else if(time <= time_step * 109){
        intercept = 0.30230443531646267;
        real local_time_step = time_step * 109 - time_step * 108;
        slope = (0.058302489273884484 - 0.30230443531646267) / local_time_step;
        return intercept + slope * (time - time_step * 108);
    }
    else if(time <= time_step * 110){
        intercept = 0.058302489273884484;
        real local_time_step = time_step * 110 - time_step * 109;
        slope = (0.08058105975221064 - 0.058302489273884484) / local_time_step;
        return intercept + slope * (time - time_step * 109);
    }
    else if(time <= time_step * 111){
        intercept = 0.08058105975221064;
        real local_time_step = time_step * 111 - time_step * 110;
        slope = (-0.4036675780691148 - 0.08058105975221064) / local_time_step;
        return intercept + slope * (time - time_step * 110);
    }
    else if(time <= time_step * 112){
        intercept = -0.4036675780691148;
        real local_time_step = time_step * 112 - time_step * 111;
        slope = (-0.1411492985983931 - -0.4036675780691148) / local_time_step;
        return intercept + slope * (time - time_step * 111);
    }
    else if(time <= time_step * 113){
        intercept = -0.1411492985983931;
        real local_time_step = time_step * 113 - time_step * 112;
        slope = (-0.11676836741648766 - -0.1411492985983931) / local_time_step;
        return intercept + slope * (time - time_step * 112);
    }
    else if(time <= time_step * 114){
        intercept = -0.11676836741648766;
        real local_time_step = time_step * 114 - time_step * 113;
        slope = (0.12882512183375883 - -0.11676836741648766) / local_time_step;
        return intercept + slope * (time - time_step * 113);
    }
    else if(time <= time_step * 115){
        intercept = 0.12882512183375883;
        real local_time_step = time_step * 115 - time_step * 114;
        slope = (0.3436715625636291 - 0.12882512183375883) / local_time_step;
        return intercept + slope * (time - time_step * 114);
    }
    else if(time <= time_step * 116){
        intercept = 0.3436715625636291;
        real local_time_step = time_step * 116 - time_step * 115;
        slope = (0.1612028419137138 - 0.3436715625636291) / local_time_step;
        return intercept + slope * (time - time_step * 115);
    }
    else if(time <= time_step * 117){
        intercept = 0.1612028419137138;
        real local_time_step = time_step * 117 - time_step * 116;
        slope = (0.003923561959188637 - 0.1612028419137138) / local_time_step;
        return intercept + slope * (time - time_step * 116);
    }
    else if(time <= time_step * 118){
        intercept = 0.003923561959188637;
        real local_time_step = time_step * 118 - time_step * 117;
        slope = (0.1743346088384653 - 0.003923561959188637) / local_time_step;
        return intercept + slope * (time - time_step * 117);
    }
    else if(time <= time_step * 119){
        intercept = 0.1743346088384653;
        real local_time_step = time_step * 119 - time_step * 118;
        slope = (-0.4737970006527452 - 0.1743346088384653) / local_time_step;
        return intercept + slope * (time - time_step * 118);
    }
    else if(time <= time_step * 120){
        intercept = -0.4737970006527452;
        real local_time_step = time_step * 120 - time_step * 119;
        slope = (-0.38028276197876987 - -0.4737970006527452) / local_time_step;
        return intercept + slope * (time - time_step * 119);
    }
    else if(time <= time_step * 121){
        intercept = -0.38028276197876987;
        real local_time_step = time_step * 121 - time_step * 120;
        slope = (-0.05424664253262457 - -0.38028276197876987) / local_time_step;
        return intercept + slope * (time - time_step * 120);
    }
    else if(time <= time_step * 122){
        intercept = -0.05424664253262457;
        real local_time_step = time_step * 122 - time_step * 121;
        slope = (0.31704535514095655 - -0.05424664253262457) / local_time_step;
        return intercept + slope * (time - time_step * 121);
    }
    else if(time <= time_step * 123){
        intercept = 0.31704535514095655;
        real local_time_step = time_step * 123 - time_step * 122;
        slope = (-0.22736009339583085 - 0.31704535514095655) / local_time_step;
        return intercept + slope * (time - time_step * 122);
    }
    else if(time <= time_step * 124){
        intercept = -0.22736009339583085;
        real local_time_step = time_step * 124 - time_step * 123;
        slope = (-0.35437618503361257 - -0.22736009339583085) / local_time_step;
        return intercept + slope * (time - time_step * 123);
    }
    else if(time <= time_step * 125){
        intercept = -0.35437618503361257;
        real local_time_step = time_step * 125 - time_step * 124;
        slope = (-0.30953969175896223 - -0.35437618503361257) / local_time_step;
        return intercept + slope * (time - time_step * 124);
    }
    else if(time <= time_step * 126){
        intercept = -0.30953969175896223;
        real local_time_step = time_step * 126 - time_step * 125;
        slope = (0.3495593422289184 - -0.30953969175896223) / local_time_step;
        return intercept + slope * (time - time_step * 125);
    }
    else if(time <= time_step * 127){
        intercept = 0.3495593422289184;
        real local_time_step = time_step * 127 - time_step * 126;
        slope = (0.049542443292502125 - 0.3495593422289184) / local_time_step;
        return intercept + slope * (time - time_step * 126);
    }
    else if(time <= time_step * 128){
        intercept = 0.049542443292502125;
        real local_time_step = time_step * 128 - time_step * 127;
        slope = (-0.46936247248902563 - 0.049542443292502125) / local_time_step;
        return intercept + slope * (time - time_step * 127);
    }
    else if(time <= time_step * 129){
        intercept = -0.46936247248902563;
        real local_time_step = time_step * 129 - time_step * 128;
        slope = (-0.28654993109814164 - -0.46936247248902563) / local_time_step;
        return intercept + slope * (time - time_step * 128);
    }
    else if(time <= time_step * 130){
        intercept = -0.28654993109814164;
        real local_time_step = time_step * 130 - time_step * 129;
        slope = (0.300248470403508 - -0.28654993109814164) / local_time_step;
        return intercept + slope * (time - time_step * 129);
    }
    else if(time <= time_step * 131){
        intercept = 0.300248470403508;
        real local_time_step = time_step * 131 - time_step * 130;
        slope = (-0.22355233955105347 - 0.300248470403508) / local_time_step;
        return intercept + slope * (time - time_step * 130);
    }
    else if(time <= time_step * 132){
        intercept = -0.22355233955105347;
        real local_time_step = time_step * 132 - time_step * 131;
        slope = (0.1565988536952343 - -0.22355233955105347) / local_time_step;
        return intercept + slope * (time - time_step * 131);
    }
    else if(time <= time_step * 133){
        intercept = 0.1565988536952343;
        real local_time_step = time_step * 133 - time_step * 132;
        slope = (0.0200179262356478 - 0.1565988536952343) / local_time_step;
        return intercept + slope * (time - time_step * 132);
    }
    else if(time <= time_step * 134){
        intercept = 0.0200179262356478;
        real local_time_step = time_step * 134 - time_step * 133;
        slope = (-0.4152799921501604 - 0.0200179262356478) / local_time_step;
        return intercept + slope * (time - time_step * 133);
    }
    else if(time <= time_step * 135){
        intercept = -0.4152799921501604;
        real local_time_step = time_step * 135 - time_step * 134;
        slope = (-0.06372585001019615 - -0.4152799921501604) / local_time_step;
        return intercept + slope * (time - time_step * 134);
    }
    else if(time <= time_step * 136){
        intercept = -0.06372585001019615;
        real local_time_step = time_step * 136 - time_step * 135;
        slope = (-0.14953700273214565 - -0.06372585001019615) / local_time_step;
        return intercept + slope * (time - time_step * 135);
    }
    else if(time <= time_step * 137){
        intercept = -0.14953700273214565;
        real local_time_step = time_step * 137 - time_step * 136;
        slope = (0.14110255609901223 - -0.14953700273214565) / local_time_step;
        return intercept + slope * (time - time_step * 136);
    }
    else if(time <= time_step * 138){
        intercept = 0.14110255609901223;
        real local_time_step = time_step * 138 - time_step * 137;
        slope = (0.08451071665617116 - 0.14110255609901223) / local_time_step;
        return intercept + slope * (time - time_step * 137);
    }
    else if(time <= time_step * 139){
        intercept = 0.08451071665617116;
        real local_time_step = time_step * 139 - time_step * 138;
        slope = (-0.4197300505687449 - 0.08451071665617116) / local_time_step;
        return intercept + slope * (time - time_step * 138);
    }
    else if(time <= time_step * 140){
        intercept = -0.4197300505687449;
        real local_time_step = time_step * 140 - time_step * 139;
        slope = (-0.3651656656466906 - -0.4197300505687449) / local_time_step;
        return intercept + slope * (time - time_step * 139);
    }
    else if(time <= time_step * 141){
        intercept = -0.3651656656466906;
        real local_time_step = time_step * 141 - time_step * 140;
        slope = (-0.3005620113097194 - -0.3651656656466906) / local_time_step;
        return intercept + slope * (time - time_step * 140);
    }
    else if(time <= time_step * 142){
        intercept = -0.3005620113097194;
        real local_time_step = time_step * 142 - time_step * 141;
        slope = (0.19790472325996122 - -0.3005620113097194) / local_time_step;
        return intercept + slope * (time - time_step * 141);
    }
    else if(time <= time_step * 143){
        intercept = 0.19790472325996122;
        real local_time_step = time_step * 143 - time_step * 142;
        slope = (0.015591316879162154 - 0.19790472325996122) / local_time_step;
        return intercept + slope * (time - time_step * 142);
    }
    else if(time <= time_step * 144){
        intercept = 0.015591316879162154;
        real local_time_step = time_step * 144 - time_step * 143;
        slope = (-0.251186637763656 - 0.015591316879162154) / local_time_step;
        return intercept + slope * (time - time_step * 143);
    }
    else if(time <= time_step * 145){
        intercept = -0.251186637763656;
        real local_time_step = time_step * 145 - time_step * 144;
        slope = (0.27208498501872846 - -0.251186637763656) / local_time_step;
        return intercept + slope * (time - time_step * 144);
    }
    else if(time <= time_step * 146){
        intercept = 0.27208498501872846;
        real local_time_step = time_step * 146 - time_step * 145;
        slope = (-0.005755759041143893 - 0.27208498501872846) / local_time_step;
        return intercept + slope * (time - time_step * 145);
    }
    else if(time <= time_step * 147){
        intercept = -0.005755759041143893;
        real local_time_step = time_step * 147 - time_step * 146;
        slope = (-0.4321432046349073 - -0.005755759041143893) / local_time_step;
        return intercept + slope * (time - time_step * 146);
    }
    else if(time <= time_step * 148){
        intercept = -0.4321432046349073;
        real local_time_step = time_step * 148 - time_step * 147;
        slope = (-0.06161356122413353 - -0.4321432046349073) / local_time_step;
        return intercept + slope * (time - time_step * 147);
    }
    else if(time <= time_step * 149){
        intercept = -0.06161356122413353;
        real local_time_step = time_step * 149 - time_step * 148;
        slope = (-0.4732763616406268 - -0.06161356122413353) / local_time_step;
        return intercept + slope * (time - time_step * 148);
    }
    else if(time <= time_step * 150){
        intercept = -0.4732763616406268;
        real local_time_step = time_step * 150 - time_step * 149;
        slope = (-0.3830812490681387 - -0.4732763616406268) / local_time_step;
        return intercept + slope * (time - time_step * 149);
    }
    else if(time <= time_step * 151){
        intercept = -0.3830812490681387;
        real local_time_step = time_step * 151 - time_step * 150;
        slope = (0.2993122752726375 - -0.3830812490681387) / local_time_step;
        return intercept + slope * (time - time_step * 150);
    }
    else if(time <= time_step * 152){
        intercept = 0.2993122752726375;
        real local_time_step = time_step * 152 - time_step * 151;
        slope = (0.09162265696607108 - 0.2993122752726375) / local_time_step;
        return intercept + slope * (time - time_step * 151);
    }
    else if(time <= time_step * 153){
        intercept = 0.09162265696607108;
        real local_time_step = time_step * 153 - time_step * 152;
        slope = (-0.13743411986363885 - 0.09162265696607108) / local_time_step;
        return intercept + slope * (time - time_step * 152);
    }
    else if(time <= time_step * 154){
        intercept = -0.13743411986363885;
        real local_time_step = time_step * 154 - time_step * 153;
        slope = (-0.17533104239895259 - -0.13743411986363885) / local_time_step;
        return intercept + slope * (time - time_step * 153);
    }
    else if(time <= time_step * 155){
        intercept = -0.17533104239895259;
        real local_time_step = time_step * 155 - time_step * 154;
        slope = (-0.3496151920955298 - -0.17533104239895259) / local_time_step;
        return intercept + slope * (time - time_step * 154);
    }
    else if(time <= time_step * 156){
        intercept = -0.3496151920955298;
        real local_time_step = time_step * 156 - time_step * 155;
        slope = (-0.38043072878899264 - -0.3496151920955298) / local_time_step;
        return intercept + slope * (time - time_step * 155);
    }
    else if(time <= time_step * 157){
        intercept = -0.38043072878899264;
        real local_time_step = time_step * 157 - time_step * 156;
        slope = (-0.10325505492826947 - -0.38043072878899264) / local_time_step;
        return intercept + slope * (time - time_step * 156);
    }
    else if(time <= time_step * 158){
        intercept = -0.10325505492826947;
        real local_time_step = time_step * 158 - time_step * 157;
        slope = (-0.40168632526526604 - -0.10325505492826947) / local_time_step;
        return intercept + slope * (time - time_step * 157);
    }
    else if(time <= time_step * 159){
        intercept = -0.40168632526526604;
        real local_time_step = time_step * 159 - time_step * 158;
        slope = (-0.255175943124643 - -0.40168632526526604) / local_time_step;
        return intercept + slope * (time - time_step * 158);
    }
    else if(time <= time_step * 160){
        intercept = -0.255175943124643;
        real local_time_step = time_step * 160 - time_step * 159;
        slope = (-0.06833622682743978 - -0.255175943124643) / local_time_step;
        return intercept + slope * (time - time_step * 159);
    }
    else if(time <= time_step * 161){
        intercept = -0.06833622682743978;
        real local_time_step = time_step * 161 - time_step * 160;
        slope = (-0.3598565564520003 - -0.06833622682743978) / local_time_step;
        return intercept + slope * (time - time_step * 160);
    }
    else if(time <= time_step * 162){
        intercept = -0.3598565564520003;
        real local_time_step = time_step * 162 - time_step * 161;
        slope = (0.14763558206769611 - -0.3598565564520003) / local_time_step;
        return intercept + slope * (time - time_step * 161);
    }
    else if(time <= time_step * 163){
        intercept = 0.14763558206769611;
        real local_time_step = time_step * 163 - time_step * 162;
        slope = (-0.08124178406448312 - 0.14763558206769611) / local_time_step;
        return intercept + slope * (time - time_step * 162);
    }
    else if(time <= time_step * 164){
        intercept = -0.08124178406448312;
        real local_time_step = time_step * 164 - time_step * 163;
        slope = (-0.27903403478285194 - -0.08124178406448312) / local_time_step;
        return intercept + slope * (time - time_step * 163);
    }
    else if(time <= time_step * 165){
        intercept = -0.27903403478285194;
        real local_time_step = time_step * 165 - time_step * 164;
        slope = (-0.482619023101147 - -0.27903403478285194) / local_time_step;
        return intercept + slope * (time - time_step * 164);
    }
    else if(time <= time_step * 166){
        intercept = -0.482619023101147;
        real local_time_step = time_step * 166 - time_step * 165;
        slope = (0.04342707967277537 - -0.482619023101147) / local_time_step;
        return intercept + slope * (time - time_step * 165);
    }
    else if(time <= time_step * 167){
        intercept = 0.04342707967277537;
        real local_time_step = time_step * 167 - time_step * 166;
        slope = (-0.22742857581170095 - 0.04342707967277537) / local_time_step;
        return intercept + slope * (time - time_step * 166);
    }
    else if(time <= time_step * 168){
        intercept = -0.22742857581170095;
        real local_time_step = time_step * 168 - time_step * 167;
        slope = (-0.418342442844177 - -0.22742857581170095) / local_time_step;
        return intercept + slope * (time - time_step * 167);
    }
    else if(time <= time_step * 169){
        intercept = -0.418342442844177;
        real local_time_step = time_step * 169 - time_step * 168;
        slope = (0.23093833189034285 - -0.418342442844177) / local_time_step;
        return intercept + slope * (time - time_step * 168);
    }
    else if(time <= time_step * 170){
        intercept = 0.23093833189034285;
        real local_time_step = time_step * 170 - time_step * 169;
        slope = (0.04698573099189107 - 0.23093833189034285) / local_time_step;
        return intercept + slope * (time - time_step * 169);
    }
    else if(time <= time_step * 171){
        intercept = 0.04698573099189107;
        real local_time_step = time_step * 171 - time_step * 170;
        slope = (-0.3774597630099431 - 0.04698573099189107) / local_time_step;
        return intercept + slope * (time - time_step * 170);
    }
    else if(time <= time_step * 172){
        intercept = -0.3774597630099431;
        real local_time_step = time_step * 172 - time_step * 171;
        slope = (0.12711687065005262 - -0.3774597630099431) / local_time_step;
        return intercept + slope * (time - time_step * 171);
    }
    else if(time <= time_step * 173){
        intercept = 0.12711687065005262;
        real local_time_step = time_step * 173 - time_step * 172;
        slope = (0.15886332975301853 - 0.12711687065005262) / local_time_step;
        return intercept + slope * (time - time_step * 172);
    }
    else if(time <= time_step * 174){
        intercept = 0.15886332975301853;
        real local_time_step = time_step * 174 - time_step * 173;
        slope = (0.029498941525669897 - 0.15886332975301853) / local_time_step;
        return intercept + slope * (time - time_step * 173);
    }
    else if(time <= time_step * 175){
        intercept = 0.029498941525669897;
        real local_time_step = time_step * 175 - time_step * 174;
        slope = (-0.03295021147836008 - 0.029498941525669897) / local_time_step;
        return intercept + slope * (time - time_step * 174);
    }
    else if(time <= time_step * 176){
        intercept = -0.03295021147836008;
        real local_time_step = time_step * 176 - time_step * 175;
        slope = (0.22979651537852408 - -0.03295021147836008) / local_time_step;
        return intercept + slope * (time - time_step * 175);
    }
    else if(time <= time_step * 177){
        intercept = 0.22979651537852408;
        real local_time_step = time_step * 177 - time_step * 176;
        slope = (-0.43680000644536054 - 0.22979651537852408) / local_time_step;
        return intercept + slope * (time - time_step * 176);
    }
    else if(time <= time_step * 178){
        intercept = -0.43680000644536054;
        real local_time_step = time_step * 178 - time_step * 177;
        slope = (0.25543666074422844 - -0.43680000644536054) / local_time_step;
        return intercept + slope * (time - time_step * 177);
    }
    else if(time <= time_step * 179){
        intercept = 0.25543666074422844;
        real local_time_step = time_step * 179 - time_step * 178;
        slope = (-0.29685533428131083 - 0.25543666074422844) / local_time_step;
        return intercept + slope * (time - time_step * 178);
    }
    else if(time <= time_step * 180){
        intercept = -0.29685533428131083;
        real local_time_step = time_step * 180 - time_step * 179;
        slope = (0.3238703399446099 - -0.29685533428131083) / local_time_step;
        return intercept + slope * (time - time_step * 179);
    }
    else if(time <= time_step * 181){
        intercept = 0.3238703399446099;
        real local_time_step = time_step * 181 - time_step * 180;
        slope = (0.33541930652669294 - 0.3238703399446099) / local_time_step;
        return intercept + slope * (time - time_step * 180);
    }
    else if(time <= time_step * 182){
        intercept = 0.33541930652669294;
        real local_time_step = time_step * 182 - time_step * 181;
        slope = (0.17657063301254394 - 0.33541930652669294) / local_time_step;
        return intercept + slope * (time - time_step * 181);
    }
    else if(time <= time_step * 183){
        intercept = 0.17657063301254394;
        real local_time_step = time_step * 183 - time_step * 182;
        slope = (-0.48378700030422317 - 0.17657063301254394) / local_time_step;
        return intercept + slope * (time - time_step * 182);
    }
    else if(time <= time_step * 184){
        intercept = -0.48378700030422317;
        real local_time_step = time_step * 184 - time_step * 183;
        slope = (0.17494441761324753 - -0.48378700030422317) / local_time_step;
        return intercept + slope * (time - time_step * 183);
    }
    else if(time <= time_step * 185){
        intercept = 0.17494441761324753;
        real local_time_step = time_step * 185 - time_step * 184;
        slope = (0.12918813968012066 - 0.17494441761324753) / local_time_step;
        return intercept + slope * (time - time_step * 184);
    }
    else if(time <= time_step * 186){
        intercept = 0.12918813968012066;
        real local_time_step = time_step * 186 - time_step * 185;
        slope = (0.1621072710034236 - 0.12918813968012066) / local_time_step;
        return intercept + slope * (time - time_step * 185);
    }
    else if(time <= time_step * 187){
        intercept = 0.1621072710034236;
        real local_time_step = time_step * 187 - time_step * 186;
        slope = (-0.35053605887397143 - 0.1621072710034236) / local_time_step;
        return intercept + slope * (time - time_step * 186);
    }
    else if(time <= time_step * 188){
        intercept = -0.35053605887397143;
        real local_time_step = time_step * 188 - time_step * 187;
        slope = (-0.02511508759003933 - -0.35053605887397143) / local_time_step;
        return intercept + slope * (time - time_step * 187);
    }
    else if(time <= time_step * 189){
        intercept = -0.02511508759003933;
        real local_time_step = time_step * 189 - time_step * 188;
        slope = (-0.4549410657343783 - -0.02511508759003933) / local_time_step;
        return intercept + slope * (time - time_step * 188);
    }
    else if(time <= time_step * 190){
        intercept = -0.4549410657343783;
        real local_time_step = time_step * 190 - time_step * 189;
        slope = (0.3961830275153141 - -0.4549410657343783) / local_time_step;
        return intercept + slope * (time - time_step * 189);
    }
    else if(time <= time_step * 191){
        intercept = 0.3961830275153141;
        real local_time_step = time_step * 191 - time_step * 190;
        slope = (0.46174947486521933 - 0.3961830275153141) / local_time_step;
        return intercept + slope * (time - time_step * 190);
    }
    else if(time <= time_step * 192){
        intercept = 0.46174947486521933;
        real local_time_step = time_step * 192 - time_step * 191;
        slope = (0.025333236335048026 - 0.46174947486521933) / local_time_step;
        return intercept + slope * (time - time_step * 191);
    }
    else if(time <= time_step * 193){
        intercept = 0.025333236335048026;
        real local_time_step = time_step * 193 - time_step * 192;
        slope = (-0.4532297425322982 - 0.025333236335048026) / local_time_step;
        return intercept + slope * (time - time_step * 192);
    }
    else if(time <= time_step * 194){
        intercept = -0.4532297425322982;
        real local_time_step = time_step * 194 - time_step * 193;
        slope = (-0.3586318987056256 - -0.4532297425322982) / local_time_step;
        return intercept + slope * (time - time_step * 193);
    }
    else if(time <= time_step * 195){
        intercept = -0.3586318987056256;
        real local_time_step = time_step * 195 - time_step * 194;
        slope = (-0.43329553368411533 - -0.3586318987056256) / local_time_step;
        return intercept + slope * (time - time_step * 194);
    }
    else if(time <= time_step * 196){
        intercept = -0.43329553368411533;
        real local_time_step = time_step * 196 - time_step * 195;
        slope = (0.43231581092818394 - -0.43329553368411533) / local_time_step;
        return intercept + slope * (time - time_step * 195);
    }
    else if(time <= time_step * 197){
        intercept = 0.43231581092818394;
        real local_time_step = time_step * 197 - time_step * 196;
        slope = (-0.18814829745181283 - 0.43231581092818394) / local_time_step;
        return intercept + slope * (time - time_step * 196);
    }
    else if(time <= time_step * 198){
        intercept = -0.18814829745181283;
        real local_time_step = time_step * 198 - time_step * 197;
        slope = (-0.27195161472717644 - -0.18814829745181283) / local_time_step;
        return intercept + slope * (time - time_step * 197);
    }
    else if(time <= time_step * 199){
        intercept = -0.27195161472717644;
        real local_time_step = time_step * 199 - time_step * 198;
        slope = (0.3504462377482992 - -0.27195161472717644) / local_time_step;
        return intercept + slope * (time - time_step * 198);
    }
    return 0.3504462377482992;
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
    else if(time <= time_step * 20){
        intercept = 82.74389331670727;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (129.09923809971474 - 82.74389331670727) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = 129.09923809971474;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (149.98571196985435 - 129.09923809971474) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = 149.98571196985435;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (127.1225989509649 - 149.98571196985435) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = 127.1225989509649;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (80.52065231943931 - 127.1225989509649) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = 80.52065231943931;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (50.96784593835677 - 80.52065231943931) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = 50.96784593835677;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (64.33003266109996 - 50.96784593835677) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = 64.33003266109996;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (108.91206749490294 - 64.33003266109996) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = 108.91206749490294;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (145.69388791014785 - 108.91206749490294) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = 145.69388791014785;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (142.4825054551768 - 145.69388791014785) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = 142.4825054551768;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (102.08865644264631 - 142.4825054551768) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = 102.08865644264631;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (59.8667279066313 - 102.08865644264631) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = 59.8667279066313;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (52.771118580569414 - 59.8667279066313) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = 52.771118580569414;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (87.01220267956366 - 52.771118580569414) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = 87.01220267956366;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (132.62075049919486 - 87.01220267956366) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 132.62075049919486;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (149.67825238772974 - 132.62075049919486) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = 149.67825238772974;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (123.25526887990085 - 149.67825238772974) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = 123.25526887990085;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (76.4783008754114 - 123.25526887990085) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = 76.4783008754114;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (50.2885082671512 - 76.4783008754114) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = 50.2885082671512;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (67.60829352108374 - 50.2885082671512) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = 67.60829352108374;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (113.27865579466379 - 67.60829352108374) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = 113.27865579466379;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (147.3269828392867 - 113.27865579466379) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = 147.3269828392867;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (139.9527539909042 - 147.3269828392867) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = 139.9527539909042;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (97.61020293006212 - 139.9527539909042) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = 97.61020293006212;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (57.359302271668014 - 97.61020293006212) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = 57.359302271668014;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (54.42932466823704 - 57.359302271668014) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = 54.42932466823704;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (91.38470913029123 - 54.42932466823704) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = 91.38470913029123;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (135.88055668919787 - 91.38470913029123) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = 135.88055668919787;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (148.9722395250434 - 135.88055668919787) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = 148.9722395250434;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (119.20136896676402 - 148.9722395250434) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = 119.20136896676402;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (72.62465676104807 - 119.20136896676402) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = 72.62465676104807;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (50.00799054551052 - 72.62465676104807) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = 50.00799054551052;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (71.14642304108816 - 50.00799054551052) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 71.14642304108816;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (117.53871353881837 - 71.14642304108816) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = 117.53871353881837;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (148.5803879974877 - 117.53871353881837) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = 148.5803879974877;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (137.10247391692377 - 148.5803879974877) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = 137.10247391692377;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (93.1509220215113 - 137.10247391692377) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = 93.1509220215113;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (55.19396978910528 - 93.1509220215113) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = 55.19396978910528;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (56.45313021397609 - 55.19396978910528) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = 56.45313021397609;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (95.82633339966341 - 56.45313021397609) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = 95.82633339966341;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (138.8525042511386 - 95.82633339966341) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = 138.8525042511386;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (147.8733375050085 - 138.8525042511386) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = 147.8733375050085;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (114.99342239890086 - 147.8733375050085) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = 114.99342239890086;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (68.99063657325192 - 114.99342239890086) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = 68.99063657325192;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (50.12854328050456 - 68.99063657325192) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = 50.12854328050456;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (74.91603590038484 - 50.12854328050456) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = 74.91603590038484;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (121.65806359939398 - 74.91603590038484) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = 121.65806359939398;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (149.44404770216013 - 121.65806359939398) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = 149.44404770216013;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (133.95453215023457 - 149.44404770216013) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = 133.95453215023457;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (88.74658915090365 - 133.95453215023457) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = 88.74658915090365;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (53.38810225289627 - 88.74658915090365) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = 53.38810225289627;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (58.82629885075056 - 53.38810225289627) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = 58.82629885075056;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (100.30144170753502 - 58.82629885075056) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = 100.30144170753502;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (141.5127501673275 - 100.30144170753502) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = 141.5127501673275;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (146.39036247924173 - 141.5127501673275) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = 146.39036247924173;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (110.66518823240618 - 146.39036247924173) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = 110.66518823240618;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (65.6053949339724 - 110.66518823240618) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = 65.6053949339724;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (50.64919931476155 - 65.6053949339724) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = 50.64919931476155;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (78.88688965888562 - 50.64919931476155) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = 78.88688965888562;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (125.60365770271926 - 78.88688965888562) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = 125.60365770271926;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (149.91103307815158 - 125.60365770271926) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = 149.91103307815158;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (130.53418365569195 - 149.91103307815158) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = 130.53418365569195;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (84.43253892100587 - 130.53418365569195) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = 84.43253892100587;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (51.956187580715664 - 84.43253892100587) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = 51.956187580715664;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (61.52979137931227 - 51.956187580715664) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = 61.52979137931227;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (104.77413164165833 - 61.52979137931227) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = 104.77413164165833;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (143.83995210613978 - 104.77413164165833) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = 143.83995210613978;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (144.5352118985008 - 143.83995210613978) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = 144.5352118985008;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (106.2513905536394 - 144.5352118985008) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = 106.2513905536394;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (62.496090591675525 - 106.2513905536394) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = 62.496090591675525;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (51.56578158567316 - 62.496090591675525) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = 51.56578158567316;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (83.0271273829019 - 51.56578158567316) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 83.0271273829019;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (129.34384156552005 - 83.0271273829019) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = 129.34384156552005;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (149.9775976459739 - 129.34384156552005) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = 149.9775976459739;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (126.86886883322238 - 149.9775976459739) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 126.86886883322238;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (80.24338162483342 - 126.86886883322238) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = 80.24338162483342;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (50.9097135818694 - 80.24338162483342) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = 50.9097135818694;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (64.5419185138179 - 50.9097135818694) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = 64.5419185138179;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (109.20852019165149 - 64.5419185138179) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = 109.20852019165149;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (145.8154396449526 - 109.20852019165149) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = 145.8154396449526;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (142.3227690631103 - 145.8154396449526) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    else if(time <= time_step * 100){
        intercept = 142.3227690631103;
        real local_time_step = time_step * 100 - time_step * 99;
        slope = (101.78743989860082 - 142.3227690631103) / local_time_step;
        return intercept + slope * (time - time_step * 99);
    }
    else if(time <= time_step * 101){
        intercept = 101.78743989860082;
        real local_time_step = time_step * 101 - time_step * 100;
        slope = (59.68766853509027 - 101.78743989860082) / local_time_step;
        return intercept + slope * (time - time_step * 100);
    }
    else if(time <= time_step * 102){
        intercept = 59.68766853509027;
        real local_time_step = time_step * 102 - time_step * 101;
        slope = (52.870936636678024 - 59.68766853509027) / local_time_step;
        return intercept + slope * (time - time_step * 101);
    }
    else if(time <= time_step * 103){
        intercept = 52.870936636678024;
        real local_time_step = time_step * 103 - time_step * 102;
        slope = (87.30353322348768 - 52.870936636678024) / local_time_step;
        return intercept + slope * (time - time_step * 102);
    }
    else if(time <= time_step * 104){
        intercept = 87.30353322348768;
        real local_time_step = time_step * 104 - time_step * 103;
        slope = (132.84860884746078 - 87.30353322348768) / local_time_step;
        return intercept + slope * (time - time_step * 103);
    }
    else if(time <= time_step * 105){
        intercept = 132.84860884746078;
        real local_time_step = time_step * 105 - time_step * 104;
        slope = (149.64320737865154 - 132.84860884746078) / local_time_step;
        return intercept + slope * (time - time_step * 104);
    }
    else if(time <= time_step * 106){
        intercept = 149.64320737865154;
        real local_time_step = time_step * 106 - time_step * 105;
        slope = (122.98799337196695 - 149.64320737865154) / local_time_step;
        return intercept + slope * (time - time_step * 105);
    }
    else if(time <= time_step * 107){
        intercept = 122.98799337196695;
        real local_time_step = time_step * 107 - time_step * 106;
        slope = (76.21272557795561 - 122.98799337196695) / local_time_step;
        return intercept + slope * (time - time_step * 106);
    }
    else if(time <= time_step * 108){
        intercept = 76.21272557795561;
        real local_time_step = time_step * 108 - time_step * 107;
        slope = (50.257075794147475 - 76.21272557795561) / local_time_step;
        return intercept + slope * (time - time_step * 107);
    }
    else if(time <= time_step * 109){
        intercept = 50.257075794147475;
        real local_time_step = time_step * 109 - time_step * 108;
        slope = (67.83851488827281 - 50.257075794147475) / local_time_step;
        return intercept + slope * (time - time_step * 108);
    }
    else if(time <= time_step * 110){
        intercept = 67.83851488827281;
        real local_time_step = time_step * 110 - time_step * 109;
        slope = (113.56903162731186 - 67.83851488827281) / local_time_step;
        return intercept + slope * (time - time_step * 109);
    }
    else if(time <= time_step * 111){
        intercept = 113.56903162731186;
        real local_time_step = time_step * 111 - time_step * 110;
        slope = (147.42336405718115 - 113.56903162731186) / local_time_step;
        return intercept + slope * (time - time_step * 110);
    }
    else if(time <= time_step * 112){
        intercept = 147.42336405718115;
        real local_time_step = time_step * 112 - time_step * 111;
        slope = (139.77078371883866 - 147.42336405718115) / local_time_step;
        return intercept + slope * (time - time_step * 111);
    }
    else if(time <= time_step * 113){
        intercept = 139.77078371883866;
        real local_time_step = time_step * 113 - time_step * 112;
        slope = (97.30914916513449 - 139.77078371883866) / local_time_step;
        return intercept + slope * (time - time_step * 112);
    }
    else if(time <= time_step * 114){
        intercept = 97.30914916513449;
        real local_time_step = time_step * 114 - time_step * 113;
        slope = (57.20265986726587 - 97.30914916513449) / local_time_step;
        return intercept + slope * (time - time_step * 113);
    }
    else if(time <= time_step * 115){
        intercept = 57.20265986726587;
        real local_time_step = time_step * 115 - time_step * 114;
        slope = (54.554193611773414 - 57.20265986726587) / local_time_step;
        return intercept + slope * (time - time_step * 114);
    }
    else if(time <= time_step * 116){
        intercept = 54.554193611773414;
        real local_time_step = time_step * 116 - time_step * 115;
        slope = (91.68179889694014 - 54.554193611773414) / local_time_step;
        return intercept + slope * (time - time_step * 115);
    }
    else if(time <= time_step * 117){
        intercept = 91.68179889694014;
        real local_time_step = time_step * 117 - time_step * 116;
        slope = (136.08984188274837 - 91.68179889694014) / local_time_step;
        return intercept + slope * (time - time_step * 116);
    }
    else if(time <= time_step * 118){
        intercept = 136.08984188274837;
        real local_time_step = time_step * 118 - time_step * 117;
        slope = (148.91054498605496 - 136.08984188274837) / local_time_step;
        return intercept + slope * (time - time_step * 117);
    }
    else if(time <= time_step * 119){
        intercept = 148.91054498605496;
        real local_time_step = time_step * 119 - time_step * 118;
        slope = (118.92269233751657 - 148.91054498605496) / local_time_step;
        return intercept + slope * (time - time_step * 118);
    }
    else if(time <= time_step * 120){
        intercept = 118.92269233751657;
        real local_time_step = time_step * 120 - time_step * 119;
        slope = (72.3729074893565 - 118.92269233751657) / local_time_step;
        return intercept + slope * (time - time_step * 119);
    }
    else if(time <= time_step * 121){
        intercept = 72.3729074893565;
        real local_time_step = time_step * 121 - time_step * 120;
        slope = (50.003510129016455 - 72.3729074893565) / local_time_step;
        return intercept + slope * (time - time_step * 120);
    }
    else if(time <= time_step * 122){
        intercept = 50.003510129016455;
        real local_time_step = time_step * 122 - time_step * 121;
        slope = (71.39313292780106 - 50.003510129016455) / local_time_step;
        return intercept + slope * (time - time_step * 121);
    }
    else if(time <= time_step * 123){
        intercept = 71.39313292780106;
        real local_time_step = time_step * 123 - time_step * 122;
        slope = (117.82068291171522 - 71.39313292780106) / local_time_step;
        return intercept + slope * (time - time_step * 122);
    }
    else if(time <= time_step * 124){
        intercept = 117.82068291171522;
        real local_time_step = time_step * 124 - time_step * 123;
        slope = (148.65082546171877 - 117.82068291171522) / local_time_step;
        return intercept + slope * (time - time_step * 123);
    }
    else if(time <= time_step * 125){
        intercept = 148.65082546171877;
        real local_time_step = time_step * 125 - time_step * 124;
        slope = (136.899729656168 - 148.65082546171877) / local_time_step;
        return intercept + slope * (time - time_step * 124);
    }
    else if(time <= time_step * 126){
        intercept = 136.899729656168;
        real local_time_step = time_step * 126 - time_step * 125;
        slope = (92.85244629710608 - 136.899729656168) / local_time_step;
        return intercept + slope * (time - time_step * 125);
    }
    else if(time <= time_step * 127){
        intercept = 92.85244629710608;
        real local_time_step = time_step * 127 - time_step * 126;
        slope = (55.06100104548863 - 92.85244629710608) / local_time_step;
        return intercept + slope * (time - time_step * 126);
    }
    else if(time <= time_step * 128){
        intercept = 55.06100104548863;
        real local_time_step = time_step * 128 - time_step * 127;
        slope = (56.60204825995997 - 55.06100104548863) / local_time_step;
        return intercept + slope * (time - time_step * 127);
    }
    else if(time <= time_step * 129){
        intercept = 56.60204825995997;
        real local_time_step = time_step * 129 - time_step * 128;
        slope = (96.12679892956693 - 56.60204825995997) / local_time_step;
        return intercept + slope * (time - time_step * 128);
    }
    else if(time <= time_step * 130){
        intercept = 96.12679892956693;
        real local_time_step = time_step * 130 - time_step * 129;
        slope = (139.0415372594834 - 96.12679892956693) / local_time_step;
        return intercept + slope * (time - time_step * 129);
    }
    else if(time <= time_step * 131){
        intercept = 139.0415372594834;
        real local_time_step = time_step * 131 - time_step * 130;
        slope = (147.78548839234776 - 139.0415372594834) / local_time_step;
        return intercept + slope * (time - time_step * 130);
    }
    else if(time <= time_step * 132){
        intercept = 147.78548839234776;
        real local_time_step = time_step * 132 - time_step * 131;
        slope = (114.70558038489386 - 147.78548839234776) / local_time_step;
        return intercept + slope * (time - time_step * 131);
    }
    else if(time <= time_step * 133){
        intercept = 114.70558038489386;
        real local_time_step = time_step * 133 - time_step * 132;
        slope = (68.75473303400284 - 114.70558038489386) / local_time_step;
        return intercept + slope * (time - time_step * 132);
    }
    else if(time <= time_step * 134){
        intercept = 68.75473303400284;
        real local_time_step = time_step * 134 - time_step * 133;
        slope = (50.15105086551833 - 68.75473303400284) / local_time_step;
        return intercept + slope * (time - time_step * 133);
    }
    else if(time <= time_step * 135){
        intercept = 50.15105086551833;
        real local_time_step = time_step * 135 - time_step * 134;
        slope = (75.17725502937309 - 50.15105086551833) / local_time_step;
        return intercept + slope * (time - time_step * 134);
    }
    else if(time <= time_step * 136){
        intercept = 75.17725502937309;
        real local_time_step = time_step * 136 - time_step * 135;
        slope = (121.92936435931995 - 75.17725502937309) / local_time_step;
        return intercept + slope * (time - time_step * 135);
    }
    else if(time <= time_step * 137){
        intercept = 121.92936435931995;
        real local_time_step = time_step * 137 - time_step * 136;
        slope = (149.48797631470015 - 121.92936435931995) / local_time_step;
        return intercept + slope * (time - time_step * 136);
    }
    else if(time <= time_step * 138){
        intercept = 149.48797631470015;
        real local_time_step = time_step * 138 - time_step * 137;
        slope = (133.73264045539457 - 149.48797631470015) / local_time_step;
        return intercept + slope * (time - time_step * 137);
    }
    else if(time <= time_step * 139){
        intercept = 133.73264045539457;
        real local_time_step = time_step * 139 - time_step * 138;
        slope = (88.45308604560223 - 133.73264045539457) / local_time_step;
        return intercept + slope * (time - time_step * 138);
    }
    else if(time <= time_step * 140){
        intercept = 88.45308604560223;
        real local_time_step = time_step * 140 - time_step * 139;
        slope = (53.27987393724055 - 88.45308604560223) / local_time_step;
        return intercept + slope * (time - time_step * 139);
    }
    else if(time <= time_step * 141){
        intercept = 53.27987393724055;
        real local_time_step = time_step * 141 - time_step * 140;
        slope = (58.99807127567805 - 53.27987393724055) / local_time_step;
        return intercept + slope * (time - time_step * 140);
    }
    else if(time <= time_step * 142){
        intercept = 58.99807127567805;
        real local_time_step = time_step * 142 - time_step * 141;
        slope = (100.6028724585166 - 58.99807127567805) / local_time_step;
        return intercept + slope * (time - time_step * 141);
    }
    else if(time <= time_step * 143){
        intercept = 100.6028724585166;
        real local_time_step = time_step * 143 - time_step * 142;
        slope = (141.6800144370053 - 100.6028724585166) / local_time_step;
        return intercept + slope * (time - time_step * 142);
    }
    else if(time <= time_step * 144){
        intercept = 141.6800144370053;
        real local_time_step = time_step * 144 - time_step * 143;
        slope = (146.2770635792158 - 141.6800144370053) / local_time_step;
        return intercept + slope * (time - time_step * 143);
    }
    else if(time <= time_step * 145){
        intercept = 146.2770635792158;
        real local_time_step = time_step * 145 - time_step * 144;
        slope = (110.37049010124574 - 146.2770635792158) / local_time_step;
        return intercept + slope * (time - time_step * 144);
    }
    else if(time <= time_step * 146){
        intercept = 110.37049010124574;
        real local_time_step = time_step * 146 - time_step * 145;
        slope = (65.38722970842511 - 110.37049010124574) / local_time_step;
        return intercept + slope * (time - time_step * 145);
    }
    else if(time <= time_step * 147){
        intercept = 65.38722970842511;
        real local_time_step = time_step * 147 - time_step * 146;
        slope = (50.698514329877916 - 65.38722970842511) / local_time_step;
        return intercept + slope * (time - time_step * 146);
    }
    else if(time <= time_step * 148){
        intercept = 50.698514329877916;
        real local_time_step = time_step * 148 - time_step * 147;
        slope = (79.16052234972972 - 50.698514329877916) / local_time_step;
        return intercept + slope * (time - time_step * 147);
    }
    else if(time <= time_step * 149){
        intercept = 79.16052234972972;
        real local_time_step = time_step * 149 - time_step * 148;
        slope = (125.86211328744258 - 79.16052234972972) / local_time_step;
        return intercept + slope * (time - time_step * 148);
    }
    else if(time <= time_step * 150){
        intercept = 125.86211328744258;
        real local_time_step = time_step * 150 - time_step * 149;
        slope = (149.92810041330523 - 125.86211328744258) / local_time_step;
        return intercept + slope * (time - time_step * 149);
    }
    else if(time <= time_step * 151){
        intercept = 149.92810041330523;
        real local_time_step = time_step * 151 - time_step * 150;
        slope = (130.29492469532556 - 149.92810041330523) / local_time_step;
        return intercept + slope * (time - time_step * 150);
    }
    else if(time <= time_step * 152){
        intercept = 130.29492469532556;
        real local_time_step = time_step * 152 - time_step * 151;
        slope = (84.14636311960194 - 130.29492469532556) / local_time_step;
        return intercept + slope * (time - time_step * 151);
    }
    else if(time <= time_step * 153){
        intercept = 84.14636311960194;
        real local_time_step = time_step * 153 - time_step * 152;
        slope = (51.873567975381484 - 84.14636311960194) / local_time_step;
        return intercept + slope * (time - time_step * 152);
    }
    else if(time <= time_step * 154){
        intercept = 51.873567975381484;
        real local_time_step = time_step * 154 - time_step * 153;
        slope = (61.72304010605353 - 51.873567975381484) / local_time_step;
        return intercept + slope * (time - time_step * 153);
    }
    else if(time <= time_step * 155){
        intercept = 61.72304010605353;
        real local_time_step = time_step * 155 - time_step * 154;
        slope = (105.0741093278707 - 61.72304010605353) / local_time_step;
        return intercept + slope * (time - time_step * 154);
    }
    else if(time <= time_step * 156){
        intercept = 105.0741093278707;
        real local_time_step = time_step * 156 - time_step * 155;
        slope = (143.98410572755841 - 105.0741093278707) / local_time_step;
        return intercept + slope * (time - time_step * 155);
    }
    else if(time <= time_step * 157){
        intercept = 143.98410572755841;
        real local_time_step = time_step * 157 - time_step * 156;
        slope = (144.3973721732031 - 143.98410572755841) / local_time_step;
        return intercept + slope * (time - time_step * 156);
    }
    else if(time <= time_step * 158){
        intercept = 144.3973721732031;
        real local_time_step = time_step * 158 - time_step * 157;
        slope = (105.95220057744267 - 144.3973721732031) / local_time_step;
        return intercept + slope * (time - time_step * 157);
    }
    else if(time <= time_step * 159){
        intercept = 105.95220057744267;
        real local_time_step = time_step * 159 - time_step * 158;
        slope = (62.29741395207526 - 105.95220057744267) / local_time_step;
        return intercept + slope * (time - time_step * 158);
    }
    else if(time <= time_step * 160){
        intercept = 62.29741395207526;
        real local_time_step = time_step * 160 - time_step * 159;
        slope = (51.64150839175201 - 62.29741395207526) / local_time_step;
        return intercept + slope * (time - time_step * 159);
    }
    else if(time <= time_step * 161){
        intercept = 51.64150839175201;
        real local_time_step = time_step * 161 - time_step * 160;
        slope = (83.31097836500831 - 51.64150839175201) / local_time_step;
        return intercept + slope * (time - time_step * 160);
    }
    else if(time <= time_step * 162){
        intercept = 83.31097836500831;
        real local_time_step = time_step * 162 - time_step * 161;
        slope = (129.58737846568363 - 83.31097836500831) / local_time_step;
        return intercept + slope * (time - time_step * 161);
    }
    else if(time <= time_step * 163){
        intercept = 129.58737846568363;
        real local_time_step = time_step * 163 - time_step * 162;
        slope = (149.96766677778086 - 129.58737846568363) / local_time_step;
        return intercept + slope * (time - time_step * 162);
    }
    else if(time <= time_step * 164){
        intercept = 149.96766677778086;
        real local_time_step = time_step * 164 - time_step * 163;
        slope = (126.61416210809648 - 149.96766677778086) / local_time_step;
        return intercept + slope * (time - time_step * 163);
    }
    else if(time <= time_step * 165){
        intercept = 126.61416210809648;
        real local_time_step = time_step * 165 - time_step * 164;
        slope = (79.96682902742378 - 126.61416210809648) / local_time_step;
        return intercept + slope * (time - time_step * 164);
    }
    else if(time <= time_step * 166){
        intercept = 79.96682902742378;
        real local_time_step = time_step * 166 - time_step * 165;
        slope = (50.853365518441244 - 79.96682902742378) / local_time_step;
        return intercept + slope * (time - time_step * 165);
    }
    else if(time <= time_step * 167){
        intercept = 50.853365518441244;
        real local_time_step = time_step * 167 - time_step * 166;
        slope = (64.75509316750455 - 50.853365518441244) / local_time_step;
        return intercept + slope * (time - time_step * 166);
    }
    else if(time <= time_step * 168){
        intercept = 64.75509316750455;
        real local_time_step = time_step * 168 - time_step * 167;
        slope = (109.50463818473742 - 64.75509316750455) / local_time_step;
        return intercept + slope * (time - time_step * 167);
    }
    else if(time <= time_step * 169){
        intercept = 109.50463818473742;
        real local_time_step = time_step * 169 - time_step * 168;
        slope = (145.93532611811537 - 109.50463818473742) / local_time_step;
        return intercept + slope * (time - time_step * 168);
    }
    else if(time <= time_step * 170){
        intercept = 145.93532611811537;
        real local_time_step = time_step * 170 - time_step * 169;
        slope = (142.16149435809845 - 145.93532611811537) / local_time_step;
        return intercept + slope * (time - time_step * 169);
    }
    else if(time <= time_step * 171){
        intercept = 142.16149435809845;
        real local_time_step = time_step * 171 - time_step * 170;
        slope = (101.4861583861708 - 142.16149435809845) / local_time_step;
        return intercept + slope * (time - time_step * 170);
    }
    else if(time <= time_step * 172){
        intercept = 101.4861583861708;
        real local_time_step = time_step * 172 - time_step * 171;
        slope = (59.51007440277439 - 101.4861583861708) / local_time_step;
        return intercept + slope * (time - time_step * 171);
    }
    else if(time <= time_step * 173){
        intercept = 59.51007440277439;
        real local_time_step = time_step * 173 - time_step * 172;
        slope = (52.97246770093514 - 59.51007440277439) / local_time_step;
        return intercept + slope * (time - time_step * 172);
    }
    else if(time <= time_step * 174){
        intercept = 52.97246770093514;
        real local_time_step = time_step * 174 - time_step * 173;
        slope = (87.59532524806701 - 52.97246770093514) / local_time_step;
        return intercept + slope * (time - time_step * 173);
    }
    else if(time <= time_step * 175){
        intercept = 87.59532524806701;
        real local_time_step = time_step * 175 - time_step * 174;
        slope = (133.07527324170752 - 87.59532524806701) / local_time_step;
        return intercept + slope * (time - time_step * 174);
    }
    else if(time <= time_step * 176){
        intercept = 133.07527324170752;
        real local_time_step = time_step * 176 - time_step * 175;
        slope = (149.60635797940114 - 133.07527324170752) / local_time_step;
        return intercept + slope * (time - time_step * 175);
    }
    else if(time <= time_step * 177){
        intercept = 149.60635797940114;
        real local_time_step = time_step * 177 - time_step * 176;
        slope = (122.7198823154956 - 149.60635797940114) / local_time_step;
        return intercept + slope * (time - time_step * 176);
    }
    else if(time <= time_step * 178){
        intercept = 122.7198823154956;
        real local_time_step = time_step * 178 - time_step * 177;
        slope = (75.94801488064265 - 122.7198823154956) / local_time_step;
        return intercept + slope * (time - time_step * 177);
    }
    else if(time <= time_step * 179){
        intercept = 75.94801488064265;
        real local_time_step = time_step * 179 - time_step * 178;
        slope = (50.22745133574056 - 75.94801488064265) / local_time_step;
        return intercept + slope * (time - time_step * 178);
    }
    else if(time <= time_step * 180){
        intercept = 50.22745133574056;
        real local_time_step = time_step * 180 - time_step * 179;
        slope = (68.06990523447678 - 50.22745133574056) / local_time_step;
        return intercept + slope * (time - time_step * 179);
    }
    else if(time <= time_step * 181){
        intercept = 68.06990523447678;
        real local_time_step = time_step * 181 - time_step * 180;
        slope = (113.85891426404032 - 68.06990523447678) / local_time_step;
        return intercept + slope * (time - time_step * 180);
    }
    else if(time <= time_step * 182){
        intercept = 113.85891426404032;
        real local_time_step = time_step * 182 - time_step * 181;
        slope = (147.51802156992932 - 113.85891426404032) / local_time_step;
        return intercept + slope * (time - time_step * 181);
    }
    else if(time <= time_step * 183){
        intercept = 147.51802156992932;
        real local_time_step = time_step * 183 - time_step * 182;
        slope = (139.58736789127676 - 147.51802156992932) / local_time_step;
        return intercept + slope * (time - time_step * 182);
    }
    else if(time <= time_step * 184){
        intercept = 139.58736789127676;
        real local_time_step = time_step * 184 - time_step * 183;
        slope = (97.00819320502363 - 139.58736789127676) / local_time_step;
        return intercept + slope * (time - time_step * 183);
    }
    else if(time <= time_step * 185){
        intercept = 97.00819320502363;
        real local_time_step = time_step * 185 - time_step * 184;
        slope = (57.04757302512511 - 97.00819320502363) / local_time_step;
        return intercept + slope * (time - time_step * 184);
    }
    else if(time <= time_step * 186){
        intercept = 57.04757302512511;
        real local_time_step = time_step * 186 - time_step * 185;
        slope = (54.680714381828345 - 57.04757302512511) / local_time_step;
        return intercept + slope * (time - time_step * 185);
    }
    else if(time <= time_step * 187){
        intercept = 54.680714381828345;
        real local_time_step = time_step * 187 - time_step * 186;
        slope = (91.97919100667106 - 54.680714381828345) / local_time_step;
        return intercept + slope * (time - time_step * 186);
    }
    else if(time <= time_step * 188){
        intercept = 91.97919100667106;
        real local_time_step = time_step * 188 - time_step * 187;
        slope = (136.29781531262665 - 91.97919100667106) / local_time_step;
        return intercept + slope * (time - time_step * 187);
    }
    else if(time <= time_step * 189){
        intercept = 136.29781531262665;
        real local_time_step = time_step * 189 - time_step * 188;
        slope = (148.8470726871 - 136.29781531262665) / local_time_step;
        return intercept + slope * (time - time_step * 188);
    }
    else if(time <= time_step * 190){
        intercept = 148.8470726871;
        real local_time_step = time_step * 190 - time_step * 189;
        slope = (118.64332792192556 - 148.8470726871) / local_time_step;
        return intercept + slope * (time - time_step * 189);
    }
    else if(time <= time_step * 191){
        intercept = 118.64332792192556;
        real local_time_step = time_step * 191 - time_step * 190;
        slope = (72.12216238433436 - 118.64332792192556) / local_time_step;
        return intercept + slope * (time - time_step * 190);
    }
    else if(time <= time_step * 192){
        intercept = 72.12216238433436;
        real local_time_step = time_step * 192 - time_step * 191;
        slope = (50.00084694351392 - 72.12216238433436) / local_time_step;
        return intercept + slope * (time - time_step * 191);
    }
    else if(time <= time_step * 193){
        intercept = 50.00084694351392;
        real local_time_step = time_step * 193 - time_step * 192;
        slope = (71.6408825932174 - 50.00084694351392) / local_time_step;
        return intercept + slope * (time - time_step * 192);
    }
    else if(time <= time_step * 194){
        intercept = 71.6408825932174;
        real local_time_step = time_step * 194 - time_step * 193;
        slope = (118.10200455319409 - 71.6408825932174) / local_time_step;
        return intercept + slope * (time - time_step * 193);
    }
    else if(time <= time_step * 195){
        intercept = 118.10200455319409;
        real local_time_step = time_step * 195 - time_step * 194;
        slope = (148.7194946060534 - 118.10200455319409) / local_time_step;
        return intercept + slope * (time - time_step * 194);
    }
    else if(time <= time_step * 196){
        intercept = 148.7194946060534;
        real local_time_step = time_step * 196 - time_step * 195;
        slope = (136.69564419461028 - 148.7194946060534) / local_time_step;
        return intercept + slope * (time - time_step * 195);
    }
    else if(time <= time_step * 197){
        intercept = 136.69564419461028;
        real local_time_step = time_step * 197 - time_step * 196;
        slope = (92.55423036606108 - 136.69564419461028) / local_time_step;
        return intercept + slope * (time - time_step * 196);
    }
    else if(time <= time_step * 198){
        intercept = 92.55423036606108;
        real local_time_step = time_step * 198 - time_step * 197;
        slope = (54.929665707373836 - 92.55423036606108) / local_time_step;
        return intercept + slope * (time - time_step * 197);
    }
    else if(time <= time_step * 199){
        intercept = 54.929665707373836;
        real local_time_step = time_step * 199 - time_step * 198;
        slope = (56.752543698738336 - 54.929665707373836) / local_time_step;
        return intercept + slope * (time - time_step * 198);
    }
    return 56.752543698738336;
}

vector vensim_ode_func(real time, vector outcome, real process_noise_scale, real time_step){
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
    real minimum_order_processing_time = 2;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real manufacturing_cycle_time = 8;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time * fmax(0, 1 + process_noise);
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real fractional_inventory_adjustment = 1 / 8;
    real adjustment_from_inventory = (desired_inventory - inventory) * fractional_inventory_adjustment;
    real corr_time = corr_time_over_time_step * time_step;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real fractional_wip_adjustment = 1 / 2;
    real adjustment_for_wip = (desired_wip - work_in_process_inventory) * fractional_wip_adjustment;
    real desired_production_start_rate = fmax(0, desired_production + adjustment_for_wip);
    real desired_minus_shadow_pr = production_rate - production_rate_stocked;
    real production_rate_stocked_change_rate = desired_minus_shadow_pr / time_step;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real order_rate = dataFunc__customer_order_rate(time, time_step);
    real process_noise_in = (white_noise - process_noise) / corr_time;
    real production_rate_stocked_dydt = production_rate + production_rate_stocked_change_rate;
    real desired_minus_shadow_psr = production_start_rate - production_start_rate_stocked;
    real production_start_rate_stocked_change_rate = desired_minus_shadow_psr / time_step;
    real production_start_rate_stocked_dydt = production_start_rate + production_start_rate_stocked_change_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real process_noise_dydt = process_noise_in;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = (dataFunc__customer_order_rate(time, time_step) - expected_order_rate) / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;

    dydt[1] = backlog_dydt;
    dydt[2] = expected_order_rate_dydt;
    dydt[3] = inventory_dydt;
    dydt[4] = process_noise_dydt;
    dydt[5] = production_rate_stocked_dydt;
    dydt[6] = production_start_rate_stocked_dydt;
    dydt[7] = work_in_process_inventory_dydt;

    return dydt;
}
