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
        intercept = -0.3953047394674323;
        real local_time_step = time_step * 1 - time_step * 0;
        slope = (-0.24943750032746015 - -0.3953047394674323) / local_time_step;
        return intercept + slope * (time - time_step * 0);
    }
    else if(time <= time_step * 2){
        intercept = -0.24943750032746015;
        real local_time_step = time_step * 2 - time_step * 1;
        slope = (-0.31206093122317236 - -0.24943750032746015) / local_time_step;
        return intercept + slope * (time - time_step * 1);
    }
    else if(time <= time_step * 3){
        intercept = -0.31206093122317236;
        real local_time_step = time_step * 3 - time_step * 2;
        slope = (-0.2500669931802615 - -0.31206093122317236) / local_time_step;
        return intercept + slope * (time - time_step * 2);
    }
    else if(time <= time_step * 4){
        intercept = -0.2500669931802615;
        real local_time_step = time_step * 4 - time_step * 3;
        slope = (0.39230484421219936 - -0.2500669931802615) / local_time_step;
        return intercept + slope * (time - time_step * 3);
    }
    else if(time <= time_step * 5){
        intercept = 0.39230484421219936;
        real local_time_step = time_step * 5 - time_step * 4;
        slope = (-0.28469928912310305 - 0.39230484421219936) / local_time_step;
        return intercept + slope * (time - time_step * 4);
    }
    else if(time <= time_step * 6){
        intercept = -0.28469928912310305;
        real local_time_step = time_step * 6 - time_step * 5;
        slope = (-0.3972581508306342 - -0.28469928912310305) / local_time_step;
        return intercept + slope * (time - time_step * 5);
    }
    else if(time <= time_step * 7){
        intercept = -0.3972581508306342;
        real local_time_step = time_step * 7 - time_step * 6;
        slope = (-0.37737988394137545 - -0.3972581508306342) / local_time_step;
        return intercept + slope * (time - time_step * 6);
    }
    else if(time <= time_step * 8){
        intercept = -0.37737988394137545;
        real local_time_step = time_step * 8 - time_step * 7;
        slope = (0.3756169401383155 - -0.37737988394137545) / local_time_step;
        return intercept + slope * (time - time_step * 7);
    }
    else if(time <= time_step * 9){
        intercept = 0.3756169401383155;
        real local_time_step = time_step * 9 - time_step * 8;
        slope = (0.1565816799412606 - 0.3756169401383155) / local_time_step;
        return intercept + slope * (time - time_step * 8);
    }
    else if(time <= time_step * 10){
        intercept = 0.1565816799412606;
        real local_time_step = time_step * 10 - time_step * 9;
        slope = (-0.280637579965064 - 0.1565816799412606) / local_time_step;
        return intercept + slope * (time - time_step * 9);
    }
    else if(time <= time_step * 11){
        intercept = -0.280637579965064;
        real local_time_step = time_step * 11 - time_step * 10;
        slope = (-0.05935497771913523 - -0.280637579965064) / local_time_step;
        return intercept + slope * (time - time_step * 10);
    }
    else if(time <= time_step * 12){
        intercept = -0.05935497771913523;
        real local_time_step = time_step * 12 - time_step * 11;
        slope = (-0.023823635694115164 - -0.05935497771913523) / local_time_step;
        return intercept + slope * (time - time_step * 11);
    }
    else if(time <= time_step * 13){
        intercept = -0.023823635694115164;
        real local_time_step = time_step * 13 - time_step * 12;
        slope = (-0.22802854467641187 - -0.023823635694115164) / local_time_step;
        return intercept + slope * (time - time_step * 12);
    }
    else if(time <= time_step * 14){
        intercept = -0.22802854467641187;
        real local_time_step = time_step * 14 - time_step * 13;
        slope = (0.00990003305110676 - -0.22802854467641187) / local_time_step;
        return intercept + slope * (time - time_step * 13);
    }
    else if(time <= time_step * 15){
        intercept = 0.00990003305110676;
        real local_time_step = time_step * 15 - time_step * 14;
        slope = (-0.057324107834879956 - 0.00990003305110676) / local_time_step;
        return intercept + slope * (time - time_step * 14);
    }
    else if(time <= time_step * 16){
        intercept = -0.057324107834879956;
        real local_time_step = time_step * 16 - time_step * 15;
        slope = (-0.2198293430115238 - -0.057324107834879956) / local_time_step;
        return intercept + slope * (time - time_step * 15);
    }
    else if(time <= time_step * 17){
        intercept = -0.2198293430115238;
        real local_time_step = time_step * 17 - time_step * 16;
        slope = (0.10156508227611383 - -0.2198293430115238) / local_time_step;
        return intercept + slope * (time - time_step * 16);
    }
    else if(time <= time_step * 18){
        intercept = 0.10156508227611383;
        real local_time_step = time_step * 18 - time_step * 17;
        slope = (-0.0042889276897711825 - 0.10156508227611383) / local_time_step;
        return intercept + slope * (time - time_step * 17);
    }
    else if(time <= time_step * 19){
        intercept = -0.0042889276897711825;
        real local_time_step = time_step * 19 - time_step * 18;
        slope = (-0.42546852828463033 - -0.0042889276897711825) / local_time_step;
        return intercept + slope * (time - time_step * 18);
    }
    else if(time <= time_step * 20){
        intercept = -0.42546852828463033;
        real local_time_step = time_step * 20 - time_step * 19;
        slope = (-0.11124067619647526 - -0.42546852828463033) / local_time_step;
        return intercept + slope * (time - time_step * 19);
    }
    else if(time <= time_step * 21){
        intercept = -0.11124067619647526;
        real local_time_step = time_step * 21 - time_step * 20;
        slope = (-0.4905393354188302 - -0.11124067619647526) / local_time_step;
        return intercept + slope * (time - time_step * 20);
    }
    else if(time <= time_step * 22){
        intercept = -0.4905393354188302;
        real local_time_step = time_step * 22 - time_step * 21;
        slope = (-0.23023480871683477 - -0.4905393354188302) / local_time_step;
        return intercept + slope * (time - time_step * 21);
    }
    else if(time <= time_step * 23){
        intercept = -0.23023480871683477;
        real local_time_step = time_step * 23 - time_step * 22;
        slope = (0.1324904913747028 - -0.23023480871683477) / local_time_step;
        return intercept + slope * (time - time_step * 22);
    }
    else if(time <= time_step * 24){
        intercept = 0.1324904913747028;
        real local_time_step = time_step * 24 - time_step * 23;
        slope = (-0.2594818024094857 - 0.1324904913747028) / local_time_step;
        return intercept + slope * (time - time_step * 23);
    }
    else if(time <= time_step * 25){
        intercept = -0.2594818024094857;
        real local_time_step = time_step * 25 - time_step * 24;
        slope = (0.45922459261737514 - -0.2594818024094857) / local_time_step;
        return intercept + slope * (time - time_step * 24);
    }
    else if(time <= time_step * 26){
        intercept = 0.45922459261737514;
        real local_time_step = time_step * 26 - time_step * 25;
        slope = (0.2414507276898401 - 0.45922459261737514) / local_time_step;
        return intercept + slope * (time - time_step * 25);
    }
    else if(time <= time_step * 27){
        intercept = 0.2414507276898401;
        real local_time_step = time_step * 27 - time_step * 26;
        slope = (-0.309280077312176 - 0.2414507276898401) / local_time_step;
        return intercept + slope * (time - time_step * 26);
    }
    else if(time <= time_step * 28){
        intercept = -0.309280077312176;
        real local_time_step = time_step * 28 - time_step * 27;
        slope = (-0.04487052049165752 - -0.309280077312176) / local_time_step;
        return intercept + slope * (time - time_step * 27);
    }
    else if(time <= time_step * 29){
        intercept = -0.04487052049165752;
        real local_time_step = time_step * 29 - time_step * 28;
        slope = (-0.38033267091439216 - -0.04487052049165752) / local_time_step;
        return intercept + slope * (time - time_step * 28);
    }
    else if(time <= time_step * 30){
        intercept = -0.38033267091439216;
        real local_time_step = time_step * 30 - time_step * 29;
        slope = (-0.44668314782989726 - -0.38033267091439216) / local_time_step;
        return intercept + slope * (time - time_step * 29);
    }
    else if(time <= time_step * 31){
        intercept = -0.44668314782989726;
        real local_time_step = time_step * 31 - time_step * 30;
        slope = (0.09694999732697074 - -0.44668314782989726) / local_time_step;
        return intercept + slope * (time - time_step * 30);
    }
    else if(time <= time_step * 32){
        intercept = 0.09694999732697074;
        real local_time_step = time_step * 32 - time_step * 31;
        slope = (-0.35775283690680826 - 0.09694999732697074) / local_time_step;
        return intercept + slope * (time - time_step * 31);
    }
    else if(time <= time_step * 33){
        intercept = -0.35775283690680826;
        real local_time_step = time_step * 33 - time_step * 32;
        slope = (0.2630742563907943 - -0.35775283690680826) / local_time_step;
        return intercept + slope * (time - time_step * 32);
    }
    else if(time <= time_step * 34){
        intercept = 0.2630742563907943;
        real local_time_step = time_step * 34 - time_step * 33;
        slope = (-0.2131898707095391 - 0.2630742563907943) / local_time_step;
        return intercept + slope * (time - time_step * 33);
    }
    else if(time <= time_step * 35){
        intercept = -0.2131898707095391;
        real local_time_step = time_step * 35 - time_step * 34;
        slope = (0.11570095186607399 - -0.2131898707095391) / local_time_step;
        return intercept + slope * (time - time_step * 34);
    }
    else if(time <= time_step * 36){
        intercept = 0.11570095186607399;
        real local_time_step = time_step * 36 - time_step * 35;
        slope = (-0.08519073069542982 - 0.11570095186607399) / local_time_step;
        return intercept + slope * (time - time_step * 35);
    }
    else if(time <= time_step * 37){
        intercept = -0.08519073069542982;
        real local_time_step = time_step * 37 - time_step * 36;
        slope = (0.12164521885134238 - -0.08519073069542982) / local_time_step;
        return intercept + slope * (time - time_step * 36);
    }
    else if(time <= time_step * 38){
        intercept = 0.12164521885134238;
        real local_time_step = time_step * 38 - time_step * 37;
        slope = (-0.37986396566686587 - 0.12164521885134238) / local_time_step;
        return intercept + slope * (time - time_step * 37);
    }
    else if(time <= time_step * 39){
        intercept = -0.37986396566686587;
        real local_time_step = time_step * 39 - time_step * 38;
        slope = (0.1439234357470397 - -0.37986396566686587) / local_time_step;
        return intercept + slope * (time - time_step * 38);
    }
    else if(time <= time_step * 40){
        intercept = 0.1439234357470397;
        real local_time_step = time_step * 40 - time_step * 39;
        slope = (-0.3647282904096696 - 0.1439234357470397) / local_time_step;
        return intercept + slope * (time - time_step * 39);
    }
    else if(time <= time_step * 41){
        intercept = -0.3647282904096696;
        real local_time_step = time_step * 41 - time_step * 40;
        slope = (-0.27332906047394223 - -0.3647282904096696) / local_time_step;
        return intercept + slope * (time - time_step * 40);
    }
    else if(time <= time_step * 42){
        intercept = -0.27332906047394223;
        real local_time_step = time_step * 42 - time_step * 41;
        slope = (0.48953924754719724 - -0.27332906047394223) / local_time_step;
        return intercept + slope * (time - time_step * 41);
    }
    else if(time <= time_step * 43){
        intercept = 0.48953924754719724;
        real local_time_step = time_step * 43 - time_step * 42;
        slope = (-0.13628810937874647 - 0.48953924754719724) / local_time_step;
        return intercept + slope * (time - time_step * 42);
    }
    else if(time <= time_step * 44){
        intercept = -0.13628810937874647;
        real local_time_step = time_step * 44 - time_step * 43;
        slope = (-0.04783541575053285 - -0.13628810937874647) / local_time_step;
        return intercept + slope * (time - time_step * 43);
    }
    else if(time <= time_step * 45){
        intercept = -0.04783541575053285;
        real local_time_step = time_step * 45 - time_step * 44;
        slope = (0.21274968804157346 - -0.04783541575053285) / local_time_step;
        return intercept + slope * (time - time_step * 44);
    }
    else if(time <= time_step * 46){
        intercept = 0.21274968804157346;
        real local_time_step = time_step * 46 - time_step * 45;
        slope = (-0.3043686836931341 - 0.21274968804157346) / local_time_step;
        return intercept + slope * (time - time_step * 45);
    }
    else if(time <= time_step * 47){
        intercept = -0.3043686836931341;
        real local_time_step = time_step * 47 - time_step * 46;
        slope = (0.20067164682246474 - -0.3043686836931341) / local_time_step;
        return intercept + slope * (time - time_step * 46);
    }
    else if(time <= time_step * 48){
        intercept = 0.20067164682246474;
        real local_time_step = time_step * 48 - time_step * 47;
        slope = (-0.17908836673767559 - 0.20067164682246474) / local_time_step;
        return intercept + slope * (time - time_step * 47);
    }
    else if(time <= time_step * 49){
        intercept = -0.17908836673767559;
        real local_time_step = time_step * 49 - time_step * 48;
        slope = (0.21000462958979815 - -0.17908836673767559) / local_time_step;
        return intercept + slope * (time - time_step * 48);
    }
    else if(time <= time_step * 50){
        intercept = 0.21000462958979815;
        real local_time_step = time_step * 50 - time_step * 49;
        slope = (-0.007732216355440635 - 0.21000462958979815) / local_time_step;
        return intercept + slope * (time - time_step * 49);
    }
    else if(time <= time_step * 51){
        intercept = -0.007732216355440635;
        real local_time_step = time_step * 51 - time_step * 50;
        slope = (0.2817731609618933 - -0.007732216355440635) / local_time_step;
        return intercept + slope * (time - time_step * 50);
    }
    else if(time <= time_step * 52){
        intercept = 0.2817731609618933;
        real local_time_step = time_step * 52 - time_step * 51;
        slope = (-0.4385136028730129 - 0.2817731609618933) / local_time_step;
        return intercept + slope * (time - time_step * 51);
    }
    else if(time <= time_step * 53){
        intercept = -0.4385136028730129;
        real local_time_step = time_step * 53 - time_step * 52;
        slope = (-0.1908912314161788 - -0.4385136028730129) / local_time_step;
        return intercept + slope * (time - time_step * 52);
    }
    else if(time <= time_step * 54){
        intercept = -0.1908912314161788;
        real local_time_step = time_step * 54 - time_step * 53;
        slope = (-0.08164244973986134 - -0.1908912314161788) / local_time_step;
        return intercept + slope * (time - time_step * 53);
    }
    else if(time <= time_step * 55){
        intercept = -0.08164244973986134;
        real local_time_step = time_step * 55 - time_step * 54;
        slope = (-0.08705655229139697 - -0.08164244973986134) / local_time_step;
        return intercept + slope * (time - time_step * 54);
    }
    else if(time <= time_step * 56){
        intercept = -0.08705655229139697;
        real local_time_step = time_step * 56 - time_step * 55;
        slope = (-0.4318236012423028 - -0.08705655229139697) / local_time_step;
        return intercept + slope * (time - time_step * 55);
    }
    else if(time <= time_step * 57){
        intercept = -0.4318236012423028;
        real local_time_step = time_step * 57 - time_step * 56;
        slope = (-0.1518361993479178 - -0.4318236012423028) / local_time_step;
        return intercept + slope * (time - time_step * 56);
    }
    else if(time <= time_step * 58){
        intercept = -0.1518361993479178;
        real local_time_step = time_step * 58 - time_step * 57;
        slope = (0.14411306481021402 - -0.1518361993479178) / local_time_step;
        return intercept + slope * (time - time_step * 57);
    }
    else if(time <= time_step * 59){
        intercept = 0.14411306481021402;
        real local_time_step = time_step * 59 - time_step * 58;
        slope = (-0.4130856808596931 - 0.14411306481021402) / local_time_step;
        return intercept + slope * (time - time_step * 58);
    }
    else if(time <= time_step * 60){
        intercept = -0.4130856808596931;
        real local_time_step = time_step * 60 - time_step * 59;
        slope = (0.30573867138911925 - -0.4130856808596931) / local_time_step;
        return intercept + slope * (time - time_step * 59);
    }
    else if(time <= time_step * 61){
        intercept = 0.30573867138911925;
        real local_time_step = time_step * 61 - time_step * 60;
        slope = (0.432457030894403 - 0.30573867138911925) / local_time_step;
        return intercept + slope * (time - time_step * 60);
    }
    else if(time <= time_step * 62){
        intercept = 0.432457030894403;
        real local_time_step = time_step * 62 - time_step * 61;
        slope = (-0.40000757966608946 - 0.432457030894403) / local_time_step;
        return intercept + slope * (time - time_step * 61);
    }
    else if(time <= time_step * 63){
        intercept = -0.40000757966608946;
        real local_time_step = time_step * 63 - time_step * 62;
        slope = (0.33720705537396456 - -0.40000757966608946) / local_time_step;
        return intercept + slope * (time - time_step * 62);
    }
    else if(time <= time_step * 64){
        intercept = 0.33720705537396456;
        real local_time_step = time_step * 64 - time_step * 63;
        slope = (0.19863773419221342 - 0.33720705537396456) / local_time_step;
        return intercept + slope * (time - time_step * 63);
    }
    else if(time <= time_step * 65){
        intercept = 0.19863773419221342;
        real local_time_step = time_step * 65 - time_step * 64;
        slope = (0.04360661352473638 - 0.19863773419221342) / local_time_step;
        return intercept + slope * (time - time_step * 64);
    }
    else if(time <= time_step * 66){
        intercept = 0.04360661352473638;
        real local_time_step = time_step * 66 - time_step * 65;
        slope = (-0.4202755929266534 - 0.04360661352473638) / local_time_step;
        return intercept + slope * (time - time_step * 65);
    }
    else if(time <= time_step * 67){
        intercept = -0.4202755929266534;
        real local_time_step = time_step * 67 - time_step * 66;
        slope = (0.338650649992286 - -0.4202755929266534) / local_time_step;
        return intercept + slope * (time - time_step * 66);
    }
    else if(time <= time_step * 68){
        intercept = 0.338650649992286;
        real local_time_step = time_step * 68 - time_step * 67;
        slope = (0.2920489801809525 - 0.338650649992286) / local_time_step;
        return intercept + slope * (time - time_step * 67);
    }
    else if(time <= time_step * 69){
        intercept = 0.2920489801809525;
        real local_time_step = time_step * 69 - time_step * 68;
        slope = (-0.44521421366486247 - 0.2920489801809525) / local_time_step;
        return intercept + slope * (time - time_step * 68);
    }
    else if(time <= time_step * 70){
        intercept = -0.44521421366486247;
        real local_time_step = time_step * 70 - time_step * 69;
        slope = (-0.08919685133584954 - -0.44521421366486247) / local_time_step;
        return intercept + slope * (time - time_step * 69);
    }
    else if(time <= time_step * 71){
        intercept = -0.08919685133584954;
        real local_time_step = time_step * 71 - time_step * 70;
        slope = (0.2775640654906718 - -0.08919685133584954) / local_time_step;
        return intercept + slope * (time - time_step * 70);
    }
    else if(time <= time_step * 72){
        intercept = 0.2775640654906718;
        real local_time_step = time_step * 72 - time_step * 71;
        slope = (-0.2897074011645233 - 0.2775640654906718) / local_time_step;
        return intercept + slope * (time - time_step * 71);
    }
    else if(time <= time_step * 73){
        intercept = -0.2897074011645233;
        real local_time_step = time_step * 73 - time_step * 72;
        slope = (0.2655947662766578 - -0.2897074011645233) / local_time_step;
        return intercept + slope * (time - time_step * 72);
    }
    else if(time <= time_step * 74){
        intercept = 0.2655947662766578;
        real local_time_step = time_step * 74 - time_step * 73;
        slope = (-0.34456577455741144 - 0.2655947662766578) / local_time_step;
        return intercept + slope * (time - time_step * 73);
    }
    else if(time <= time_step * 75){
        intercept = -0.34456577455741144;
        real local_time_step = time_step * 75 - time_step * 74;
        slope = (-0.41169314384804 - -0.34456577455741144) / local_time_step;
        return intercept + slope * (time - time_step * 74);
    }
    else if(time <= time_step * 76){
        intercept = -0.41169314384804;
        real local_time_step = time_step * 76 - time_step * 75;
        slope = (0.46286311693916304 - -0.41169314384804) / local_time_step;
        return intercept + slope * (time - time_step * 75);
    }
    else if(time <= time_step * 77){
        intercept = 0.46286311693916304;
        real local_time_step = time_step * 77 - time_step * 76;
        slope = (-0.11085786669174369 - 0.46286311693916304) / local_time_step;
        return intercept + slope * (time - time_step * 76);
    }
    else if(time <= time_step * 78){
        intercept = -0.11085786669174369;
        real local_time_step = time_step * 78 - time_step * 77;
        slope = (-0.47835140783662755 - -0.11085786669174369) / local_time_step;
        return intercept + slope * (time - time_step * 77);
    }
    else if(time <= time_step * 79){
        intercept = -0.47835140783662755;
        real local_time_step = time_step * 79 - time_step * 78;
        slope = (0.23353489443144326 - -0.47835140783662755) / local_time_step;
        return intercept + slope * (time - time_step * 78);
    }
    else if(time <= time_step * 80){
        intercept = 0.23353489443144326;
        real local_time_step = time_step * 80 - time_step * 79;
        slope = (-0.26537801821810403 - 0.23353489443144326) / local_time_step;
        return intercept + slope * (time - time_step * 79);
    }
    else if(time <= time_step * 81){
        intercept = -0.26537801821810403;
        real local_time_step = time_step * 81 - time_step * 80;
        slope = (-0.4198070085052584 - -0.26537801821810403) / local_time_step;
        return intercept + slope * (time - time_step * 80);
    }
    else if(time <= time_step * 82){
        intercept = -0.4198070085052584;
        real local_time_step = time_step * 82 - time_step * 81;
        slope = (-0.42376011792578727 - -0.4198070085052584) / local_time_step;
        return intercept + slope * (time - time_step * 81);
    }
    else if(time <= time_step * 83){
        intercept = -0.42376011792578727;
        real local_time_step = time_step * 83 - time_step * 82;
        slope = (-0.33325324891657393 - -0.42376011792578727) / local_time_step;
        return intercept + slope * (time - time_step * 82);
    }
    else if(time <= time_step * 84){
        intercept = -0.33325324891657393;
        real local_time_step = time_step * 84 - time_step * 83;
        slope = (0.30724949017034553 - -0.33325324891657393) / local_time_step;
        return intercept + slope * (time - time_step * 83);
    }
    else if(time <= time_step * 85){
        intercept = 0.30724949017034553;
        real local_time_step = time_step * 85 - time_step * 84;
        slope = (0.08092976687502695 - 0.30724949017034553) / local_time_step;
        return intercept + slope * (time - time_step * 84);
    }
    else if(time <= time_step * 86){
        intercept = 0.08092976687502695;
        real local_time_step = time_step * 86 - time_step * 85;
        slope = (0.24644023128545278 - 0.08092976687502695) / local_time_step;
        return intercept + slope * (time - time_step * 85);
    }
    else if(time <= time_step * 87){
        intercept = 0.24644023128545278;
        real local_time_step = time_step * 87 - time_step * 86;
        slope = (-0.2736997633633953 - 0.24644023128545278) / local_time_step;
        return intercept + slope * (time - time_step * 86);
    }
    else if(time <= time_step * 88){
        intercept = -0.2736997633633953;
        real local_time_step = time_step * 88 - time_step * 87;
        slope = (-0.08603804716934815 - -0.2736997633633953) / local_time_step;
        return intercept + slope * (time - time_step * 87);
    }
    else if(time <= time_step * 89){
        intercept = -0.08603804716934815;
        real local_time_step = time_step * 89 - time_step * 88;
        slope = (-0.03837362686554546 - -0.08603804716934815) / local_time_step;
        return intercept + slope * (time - time_step * 88);
    }
    else if(time <= time_step * 90){
        intercept = -0.03837362686554546;
        real local_time_step = time_step * 90 - time_step * 89;
        slope = (0.2500933583963675 - -0.03837362686554546) / local_time_step;
        return intercept + slope * (time - time_step * 89);
    }
    else if(time <= time_step * 91){
        intercept = 0.2500933583963675;
        real local_time_step = time_step * 91 - time_step * 90;
        slope = (-0.393291622384088 - 0.2500933583963675) / local_time_step;
        return intercept + slope * (time - time_step * 90);
    }
    else if(time <= time_step * 92){
        intercept = -0.393291622384088;
        real local_time_step = time_step * 92 - time_step * 91;
        slope = (-0.41135662800001327 - -0.393291622384088) / local_time_step;
        return intercept + slope * (time - time_step * 91);
    }
    else if(time <= time_step * 93){
        intercept = -0.41135662800001327;
        real local_time_step = time_step * 93 - time_step * 92;
        slope = (0.08339229229077028 - -0.41135662800001327) / local_time_step;
        return intercept + slope * (time - time_step * 92);
    }
    else if(time <= time_step * 94){
        intercept = 0.08339229229077028;
        real local_time_step = time_step * 94 - time_step * 93;
        slope = (0.1553327246140278 - 0.08339229229077028) / local_time_step;
        return intercept + slope * (time - time_step * 93);
    }
    else if(time <= time_step * 95){
        intercept = 0.1553327246140278;
        real local_time_step = time_step * 95 - time_step * 94;
        slope = (0.10650494154192636 - 0.1553327246140278) / local_time_step;
        return intercept + slope * (time - time_step * 94);
    }
    else if(time <= time_step * 96){
        intercept = 0.10650494154192636;
        real local_time_step = time_step * 96 - time_step * 95;
        slope = (-0.43896663357953514 - 0.10650494154192636) / local_time_step;
        return intercept + slope * (time - time_step * 95);
    }
    else if(time <= time_step * 97){
        intercept = -0.43896663357953514;
        real local_time_step = time_step * 97 - time_step * 96;
        slope = (-0.3072427767061098 - -0.43896663357953514) / local_time_step;
        return intercept + slope * (time - time_step * 96);
    }
    else if(time <= time_step * 98){
        intercept = -0.3072427767061098;
        real local_time_step = time_step * 98 - time_step * 97;
        slope = (-0.11822248015400438 - -0.3072427767061098) / local_time_step;
        return intercept + slope * (time - time_step * 97);
    }
    else if(time <= time_step * 99){
        intercept = -0.11822248015400438;
        real local_time_step = time_step * 99 - time_step * 98;
        slope = (-0.3541675632446033 - -0.11822248015400438) / local_time_step;
        return intercept + slope * (time - time_step * 98);
    }
    else if(time <= time_step * 100){
        intercept = -0.3541675632446033;
        real local_time_step = time_step * 100 - time_step * 99;
        slope = (-0.3083292309586566 - -0.3541675632446033) / local_time_step;
        return intercept + slope * (time - time_step * 99);
    }
    else if(time <= time_step * 101){
        intercept = -0.3083292309586566;
        real local_time_step = time_step * 101 - time_step * 100;
        slope = (-0.05266820610194456 - -0.3083292309586566) / local_time_step;
        return intercept + slope * (time - time_step * 100);
    }
    else if(time <= time_step * 102){
        intercept = -0.05266820610194456;
        real local_time_step = time_step * 102 - time_step * 101;
        slope = (0.08555556301294587 - -0.05266820610194456) / local_time_step;
        return intercept + slope * (time - time_step * 101);
    }
    else if(time <= time_step * 103){
        intercept = 0.08555556301294587;
        real local_time_step = time_step * 103 - time_step * 102;
        slope = (-0.051995485396253205 - 0.08555556301294587) / local_time_step;
        return intercept + slope * (time - time_step * 102);
    }
    else if(time <= time_step * 104){
        intercept = -0.051995485396253205;
        real local_time_step = time_step * 104 - time_step * 103;
        slope = (0.3550798862147426 - -0.051995485396253205) / local_time_step;
        return intercept + slope * (time - time_step * 103);
    }
    else if(time <= time_step * 105){
        intercept = 0.3550798862147426;
        real local_time_step = time_step * 105 - time_step * 104;
        slope = (0.3991257674072618 - 0.3550798862147426) / local_time_step;
        return intercept + slope * (time - time_step * 104);
    }
    else if(time <= time_step * 106){
        intercept = 0.3991257674072618;
        real local_time_step = time_step * 106 - time_step * 105;
        slope = (-0.4109901449744182 - 0.3991257674072618) / local_time_step;
        return intercept + slope * (time - time_step * 105);
    }
    else if(time <= time_step * 107){
        intercept = -0.4109901449744182;
        real local_time_step = time_step * 107 - time_step * 106;
        slope = (-0.2332015718802749 - -0.4109901449744182) / local_time_step;
        return intercept + slope * (time - time_step * 106);
    }
    else if(time <= time_step * 108){
        intercept = -0.2332015718802749;
        real local_time_step = time_step * 108 - time_step * 107;
        slope = (-0.12283089206721631 - -0.2332015718802749) / local_time_step;
        return intercept + slope * (time - time_step * 107);
    }
    else if(time <= time_step * 109){
        intercept = -0.12283089206721631;
        real local_time_step = time_step * 109 - time_step * 108;
        slope = (-0.12724115285836934 - -0.12283089206721631) / local_time_step;
        return intercept + slope * (time - time_step * 108);
    }
    else if(time <= time_step * 110){
        intercept = -0.12724115285836934;
        real local_time_step = time_step * 110 - time_step * 109;
        slope = (-0.11992270582927023 - -0.12724115285836934) / local_time_step;
        return intercept + slope * (time - time_step * 109);
    }
    else if(time <= time_step * 111){
        intercept = -0.11992270582927023;
        real local_time_step = time_step * 111 - time_step * 110;
        slope = (0.06692612929526787 - -0.11992270582927023) / local_time_step;
        return intercept + slope * (time - time_step * 110);
    }
    else if(time <= time_step * 112){
        intercept = 0.06692612929526787;
        real local_time_step = time_step * 112 - time_step * 111;
        slope = (-0.3018576349926172 - 0.06692612929526787) / local_time_step;
        return intercept + slope * (time - time_step * 111);
    }
    else if(time <= time_step * 113){
        intercept = -0.3018576349926172;
        real local_time_step = time_step * 113 - time_step * 112;
        slope = (0.06598077217237275 - -0.3018576349926172) / local_time_step;
        return intercept + slope * (time - time_step * 112);
    }
    else if(time <= time_step * 114){
        intercept = 0.06598077217237275;
        real local_time_step = time_step * 114 - time_step * 113;
        slope = (-0.35464217402394305 - 0.06598077217237275) / local_time_step;
        return intercept + slope * (time - time_step * 113);
    }
    else if(time <= time_step * 115){
        intercept = -0.35464217402394305;
        real local_time_step = time_step * 115 - time_step * 114;
        slope = (0.11268131158047168 - -0.35464217402394305) / local_time_step;
        return intercept + slope * (time - time_step * 114);
    }
    else if(time <= time_step * 116){
        intercept = 0.11268131158047168;
        real local_time_step = time_step * 116 - time_step * 115;
        slope = (0.31001205126200637 - 0.11268131158047168) / local_time_step;
        return intercept + slope * (time - time_step * 115);
    }
    else if(time <= time_step * 117){
        intercept = 0.31001205126200637;
        real local_time_step = time_step * 117 - time_step * 116;
        slope = (-0.25687938437183644 - 0.31001205126200637) / local_time_step;
        return intercept + slope * (time - time_step * 116);
    }
    else if(time <= time_step * 118){
        intercept = -0.25687938437183644;
        real local_time_step = time_step * 118 - time_step * 117;
        slope = (0.25798470391344963 - -0.25687938437183644) / local_time_step;
        return intercept + slope * (time - time_step * 117);
    }
    else if(time <= time_step * 119){
        intercept = 0.25798470391344963;
        real local_time_step = time_step * 119 - time_step * 118;
        slope = (-0.45444342984895836 - 0.25798470391344963) / local_time_step;
        return intercept + slope * (time - time_step * 118);
    }
    else if(time <= time_step * 120){
        intercept = -0.45444342984895836;
        real local_time_step = time_step * 120 - time_step * 119;
        slope = (0.31353507163617045 - -0.45444342984895836) / local_time_step;
        return intercept + slope * (time - time_step * 119);
    }
    else if(time <= time_step * 121){
        intercept = 0.31353507163617045;
        real local_time_step = time_step * 121 - time_step * 120;
        slope = (-0.22554992153010722 - 0.31353507163617045) / local_time_step;
        return intercept + slope * (time - time_step * 120);
    }
    else if(time <= time_step * 122){
        intercept = -0.22554992153010722;
        real local_time_step = time_step * 122 - time_step * 121;
        slope = (-0.4975140606528988 - -0.22554992153010722) / local_time_step;
        return intercept + slope * (time - time_step * 121);
    }
    else if(time <= time_step * 123){
        intercept = -0.4975140606528988;
        real local_time_step = time_step * 123 - time_step * 122;
        slope = (0.17426276196840762 - -0.4975140606528988) / local_time_step;
        return intercept + slope * (time - time_step * 122);
    }
    else if(time <= time_step * 124){
        intercept = 0.17426276196840762;
        real local_time_step = time_step * 124 - time_step * 123;
        slope = (0.05029419583636652 - 0.17426276196840762) / local_time_step;
        return intercept + slope * (time - time_step * 123);
    }
    else if(time <= time_step * 125){
        intercept = 0.05029419583636652;
        real local_time_step = time_step * 125 - time_step * 124;
        slope = (-0.25158639471724953 - 0.05029419583636652) / local_time_step;
        return intercept + slope * (time - time_step * 124);
    }
    else if(time <= time_step * 126){
        intercept = -0.25158639471724953;
        real local_time_step = time_step * 126 - time_step * 125;
        slope = (-0.4430476006461961 - -0.25158639471724953) / local_time_step;
        return intercept + slope * (time - time_step * 125);
    }
    else if(time <= time_step * 127){
        intercept = -0.4430476006461961;
        real local_time_step = time_step * 127 - time_step * 126;
        slope = (-0.0313654881799339 - -0.4430476006461961) / local_time_step;
        return intercept + slope * (time - time_step * 126);
    }
    else if(time <= time_step * 128){
        intercept = -0.0313654881799339;
        real local_time_step = time_step * 128 - time_step * 127;
        slope = (0.3379840205951804 - -0.0313654881799339) / local_time_step;
        return intercept + slope * (time - time_step * 127);
    }
    else if(time <= time_step * 129){
        intercept = 0.3379840205951804;
        real local_time_step = time_step * 129 - time_step * 128;
        slope = (0.03775020916970351 - 0.3379840205951804) / local_time_step;
        return intercept + slope * (time - time_step * 128);
    }
    else if(time <= time_step * 130){
        intercept = 0.03775020916970351;
        real local_time_step = time_step * 130 - time_step * 129;
        slope = (-0.4438480931616122 - 0.03775020916970351) / local_time_step;
        return intercept + slope * (time - time_step * 129);
    }
    else if(time <= time_step * 131){
        intercept = -0.4438480931616122;
        real local_time_step = time_step * 131 - time_step * 130;
        slope = (-0.23793688047624817 - -0.4438480931616122) / local_time_step;
        return intercept + slope * (time - time_step * 130);
    }
    else if(time <= time_step * 132){
        intercept = -0.23793688047624817;
        real local_time_step = time_step * 132 - time_step * 131;
        slope = (0.3724622515411531 - -0.23793688047624817) / local_time_step;
        return intercept + slope * (time - time_step * 131);
    }
    else if(time <= time_step * 133){
        intercept = 0.3724622515411531;
        real local_time_step = time_step * 133 - time_step * 132;
        slope = (-0.4385516911655608 - 0.3724622515411531) / local_time_step;
        return intercept + slope * (time - time_step * 132);
    }
    else if(time <= time_step * 134){
        intercept = -0.4385516911655608;
        real local_time_step = time_step * 134 - time_step * 133;
        slope = (-0.3899748099070037 - -0.4385516911655608) / local_time_step;
        return intercept + slope * (time - time_step * 133);
    }
    else if(time <= time_step * 135){
        intercept = -0.3899748099070037;
        real local_time_step = time_step * 135 - time_step * 134;
        slope = (-0.3627723661601432 - -0.3899748099070037) / local_time_step;
        return intercept + slope * (time - time_step * 134);
    }
    else if(time <= time_step * 136){
        intercept = -0.3627723661601432;
        real local_time_step = time_step * 136 - time_step * 135;
        slope = (-0.35241926876648044 - -0.3627723661601432) / local_time_step;
        return intercept + slope * (time - time_step * 135);
    }
    else if(time <= time_step * 137){
        intercept = -0.35241926876648044;
        real local_time_step = time_step * 137 - time_step * 136;
        slope = (-0.10148115285269976 - -0.35241926876648044) / local_time_step;
        return intercept + slope * (time - time_step * 136);
    }
    else if(time <= time_step * 138){
        intercept = -0.10148115285269976;
        real local_time_step = time_step * 138 - time_step * 137;
        slope = (0.12684112274146953 - -0.10148115285269976) / local_time_step;
        return intercept + slope * (time - time_step * 137);
    }
    else if(time <= time_step * 139){
        intercept = 0.12684112274146953;
        real local_time_step = time_step * 139 - time_step * 138;
        slope = (-0.09799656339459761 - 0.12684112274146953) / local_time_step;
        return intercept + slope * (time - time_step * 138);
    }
    else if(time <= time_step * 140){
        intercept = -0.09799656339459761;
        real local_time_step = time_step * 140 - time_step * 139;
        slope = (0.4489574109473654 - -0.09799656339459761) / local_time_step;
        return intercept + slope * (time - time_step * 139);
    }
    else if(time <= time_step * 141){
        intercept = 0.4489574109473654;
        real local_time_step = time_step * 141 - time_step * 140;
        slope = (0.29092746223336974 - 0.4489574109473654) / local_time_step;
        return intercept + slope * (time - time_step * 140);
    }
    else if(time <= time_step * 142){
        intercept = 0.29092746223336974;
        real local_time_step = time_step * 142 - time_step * 141;
        slope = (0.49571486236899454 - 0.29092746223336974) / local_time_step;
        return intercept + slope * (time - time_step * 141);
    }
    else if(time <= time_step * 143){
        intercept = 0.49571486236899454;
        real local_time_step = time_step * 143 - time_step * 142;
        slope = (0.1920525007660816 - 0.49571486236899454) / local_time_step;
        return intercept + slope * (time - time_step * 142);
    }
    else if(time <= time_step * 144){
        intercept = 0.1920525007660816;
        real local_time_step = time_step * 144 - time_step * 143;
        slope = (0.1129674017440051 - 0.1920525007660816) / local_time_step;
        return intercept + slope * (time - time_step * 143);
    }
    else if(time <= time_step * 145){
        intercept = 0.1129674017440051;
        real local_time_step = time_step * 145 - time_step * 144;
        slope = (0.4029101052216232 - 0.1129674017440051) / local_time_step;
        return intercept + slope * (time - time_step * 144);
    }
    else if(time <= time_step * 146){
        intercept = 0.4029101052216232;
        real local_time_step = time_step * 146 - time_step * 145;
        slope = (-0.15946093132564343 - 0.4029101052216232) / local_time_step;
        return intercept + slope * (time - time_step * 145);
    }
    else if(time <= time_step * 147){
        intercept = -0.15946093132564343;
        real local_time_step = time_step * 147 - time_step * 146;
        slope = (0.26555058077028837 - -0.15946093132564343) / local_time_step;
        return intercept + slope * (time - time_step * 146);
    }
    else if(time <= time_step * 148){
        intercept = 0.26555058077028837;
        real local_time_step = time_step * 148 - time_step * 147;
        slope = (0.4257929529541685 - 0.26555058077028837) / local_time_step;
        return intercept + slope * (time - time_step * 147);
    }
    else if(time <= time_step * 149){
        intercept = 0.4257929529541685;
        real local_time_step = time_step * 149 - time_step * 148;
        slope = (0.033363215602349894 - 0.4257929529541685) / local_time_step;
        return intercept + slope * (time - time_step * 148);
    }
    else if(time <= time_step * 150){
        intercept = 0.033363215602349894;
        real local_time_step = time_step * 150 - time_step * 149;
        slope = (0.3174558571473337 - 0.033363215602349894) / local_time_step;
        return intercept + slope * (time - time_step * 149);
    }
    else if(time <= time_step * 151){
        intercept = 0.3174558571473337;
        real local_time_step = time_step * 151 - time_step * 150;
        slope = (0.13085083228852346 - 0.3174558571473337) / local_time_step;
        return intercept + slope * (time - time_step * 150);
    }
    else if(time <= time_step * 152){
        intercept = 0.13085083228852346;
        real local_time_step = time_step * 152 - time_step * 151;
        slope = (-0.23384229602056705 - 0.13085083228852346) / local_time_step;
        return intercept + slope * (time - time_step * 151);
    }
    else if(time <= time_step * 153){
        intercept = -0.23384229602056705;
        real local_time_step = time_step * 153 - time_step * 152;
        slope = (-0.46857356542613204 - -0.23384229602056705) / local_time_step;
        return intercept + slope * (time - time_step * 152);
    }
    else if(time <= time_step * 154){
        intercept = -0.46857356542613204;
        real local_time_step = time_step * 154 - time_step * 153;
        slope = (-0.21171987968191264 - -0.46857356542613204) / local_time_step;
        return intercept + slope * (time - time_step * 153);
    }
    else if(time <= time_step * 155){
        intercept = -0.21171987968191264;
        real local_time_step = time_step * 155 - time_step * 154;
        slope = (0.161270184981275 - -0.21171987968191264) / local_time_step;
        return intercept + slope * (time - time_step * 154);
    }
    else if(time <= time_step * 156){
        intercept = 0.161270184981275;
        real local_time_step = time_step * 156 - time_step * 155;
        slope = (0.2733222157516032 - 0.161270184981275) / local_time_step;
        return intercept + slope * (time - time_step * 155);
    }
    else if(time <= time_step * 157){
        intercept = 0.2733222157516032;
        real local_time_step = time_step * 157 - time_step * 156;
        slope = (-0.22999165412582334 - 0.2733222157516032) / local_time_step;
        return intercept + slope * (time - time_step * 156);
    }
    else if(time <= time_step * 158){
        intercept = -0.22999165412582334;
        real local_time_step = time_step * 158 - time_step * 157;
        slope = (-0.098068881385862 - -0.22999165412582334) / local_time_step;
        return intercept + slope * (time - time_step * 157);
    }
    else if(time <= time_step * 159){
        intercept = -0.098068881385862;
        real local_time_step = time_step * 159 - time_step * 158;
        slope = (0.43265400120562814 - -0.098068881385862) / local_time_step;
        return intercept + slope * (time - time_step * 158);
    }
    else if(time <= time_step * 160){
        intercept = 0.43265400120562814;
        real local_time_step = time_step * 160 - time_step * 159;
        slope = (-0.28948393569820596 - 0.43265400120562814) / local_time_step;
        return intercept + slope * (time - time_step * 159);
    }
    else if(time <= time_step * 161){
        intercept = -0.28948393569820596;
        real local_time_step = time_step * 161 - time_step * 160;
        slope = (0.053634216412009605 - -0.28948393569820596) / local_time_step;
        return intercept + slope * (time - time_step * 160);
    }
    else if(time <= time_step * 162){
        intercept = 0.053634216412009605;
        real local_time_step = time_step * 162 - time_step * 161;
        slope = (0.133235092393587 - 0.053634216412009605) / local_time_step;
        return intercept + slope * (time - time_step * 161);
    }
    else if(time <= time_step * 163){
        intercept = 0.133235092393587;
        real local_time_step = time_step * 163 - time_step * 162;
        slope = (-0.2569061132010301 - 0.133235092393587) / local_time_step;
        return intercept + slope * (time - time_step * 162);
    }
    else if(time <= time_step * 164){
        intercept = -0.2569061132010301;
        real local_time_step = time_step * 164 - time_step * 163;
        slope = (-0.17061175339124646 - -0.2569061132010301) / local_time_step;
        return intercept + slope * (time - time_step * 163);
    }
    else if(time <= time_step * 165){
        intercept = -0.17061175339124646;
        real local_time_step = time_step * 165 - time_step * 164;
        slope = (-0.37229296731495864 - -0.17061175339124646) / local_time_step;
        return intercept + slope * (time - time_step * 164);
    }
    else if(time <= time_step * 166){
        intercept = -0.37229296731495864;
        real local_time_step = time_step * 166 - time_step * 165;
        slope = (0.18119004404999917 - -0.37229296731495864) / local_time_step;
        return intercept + slope * (time - time_step * 165);
    }
    else if(time <= time_step * 167){
        intercept = 0.18119004404999917;
        real local_time_step = time_step * 167 - time_step * 166;
        slope = (-0.007050288176228547 - 0.18119004404999917) / local_time_step;
        return intercept + slope * (time - time_step * 166);
    }
    else if(time <= time_step * 168){
        intercept = -0.007050288176228547;
        real local_time_step = time_step * 168 - time_step * 167;
        slope = (-0.3794088716297698 - -0.007050288176228547) / local_time_step;
        return intercept + slope * (time - time_step * 167);
    }
    else if(time <= time_step * 169){
        intercept = -0.3794088716297698;
        real local_time_step = time_step * 169 - time_step * 168;
        slope = (0.259300700594687 - -0.3794088716297698) / local_time_step;
        return intercept + slope * (time - time_step * 168);
    }
    else if(time <= time_step * 170){
        intercept = 0.259300700594687;
        real local_time_step = time_step * 170 - time_step * 169;
        slope = (-0.05380615738875605 - 0.259300700594687) / local_time_step;
        return intercept + slope * (time - time_step * 169);
    }
    else if(time <= time_step * 171){
        intercept = -0.05380615738875605;
        real local_time_step = time_step * 171 - time_step * 170;
        slope = (-0.3103033466370646 - -0.05380615738875605) / local_time_step;
        return intercept + slope * (time - time_step * 170);
    }
    else if(time <= time_step * 172){
        intercept = -0.3103033466370646;
        real local_time_step = time_step * 172 - time_step * 171;
        slope = (0.2954178912456238 - -0.3103033466370646) / local_time_step;
        return intercept + slope * (time - time_step * 171);
    }
    else if(time <= time_step * 173){
        intercept = 0.2954178912456238;
        real local_time_step = time_step * 173 - time_step * 172;
        slope = (-0.4658663746545173 - 0.2954178912456238) / local_time_step;
        return intercept + slope * (time - time_step * 172);
    }
    else if(time <= time_step * 174){
        intercept = -0.4658663746545173;
        real local_time_step = time_step * 174 - time_step * 173;
        slope = (-0.21822018429018464 - -0.4658663746545173) / local_time_step;
        return intercept + slope * (time - time_step * 173);
    }
    else if(time <= time_step * 175){
        intercept = -0.21822018429018464;
        real local_time_step = time_step * 175 - time_step * 174;
        slope = (0.23842995836924807 - -0.21822018429018464) / local_time_step;
        return intercept + slope * (time - time_step * 174);
    }
    else if(time <= time_step * 176){
        intercept = 0.23842995836924807;
        real local_time_step = time_step * 176 - time_step * 175;
        slope = (-0.028069558388790217 - 0.23842995836924807) / local_time_step;
        return intercept + slope * (time - time_step * 175);
    }
    else if(time <= time_step * 177){
        intercept = -0.028069558388790217;
        real local_time_step = time_step * 177 - time_step * 176;
        slope = (-0.02912744394401201 - -0.028069558388790217) / local_time_step;
        return intercept + slope * (time - time_step * 176);
    }
    else if(time <= time_step * 178){
        intercept = -0.02912744394401201;
        real local_time_step = time_step * 178 - time_step * 177;
        slope = (-0.25601696803011187 - -0.02912744394401201) / local_time_step;
        return intercept + slope * (time - time_step * 177);
    }
    else if(time <= time_step * 179){
        intercept = -0.25601696803011187;
        real local_time_step = time_step * 179 - time_step * 178;
        slope = (-0.3230315807750057 - -0.25601696803011187) / local_time_step;
        return intercept + slope * (time - time_step * 178);
    }
    else if(time <= time_step * 180){
        intercept = -0.3230315807750057;
        real local_time_step = time_step * 180 - time_step * 179;
        slope = (-0.1425373324033058 - -0.3230315807750057) / local_time_step;
        return intercept + slope * (time - time_step * 179);
    }
    else if(time <= time_step * 181){
        intercept = -0.1425373324033058;
        real local_time_step = time_step * 181 - time_step * 180;
        slope = (0.2994966607187308 - -0.1425373324033058) / local_time_step;
        return intercept + slope * (time - time_step * 180);
    }
    else if(time <= time_step * 182){
        intercept = 0.2994966607187308;
        real local_time_step = time_step * 182 - time_step * 181;
        slope = (-0.368524562012129 - 0.2994966607187308) / local_time_step;
        return intercept + slope * (time - time_step * 181);
    }
    else if(time <= time_step * 183){
        intercept = -0.368524562012129;
        real local_time_step = time_step * 183 - time_step * 182;
        slope = (0.22203130336111032 - -0.368524562012129) / local_time_step;
        return intercept + slope * (time - time_step * 182);
    }
    else if(time <= time_step * 184){
        intercept = 0.22203130336111032;
        real local_time_step = time_step * 184 - time_step * 183;
        slope = (-0.17836454352857323 - 0.22203130336111032) / local_time_step;
        return intercept + slope * (time - time_step * 183);
    }
    else if(time <= time_step * 185){
        intercept = -0.17836454352857323;
        real local_time_step = time_step * 185 - time_step * 184;
        slope = (-0.20547074667870102 - -0.17836454352857323) / local_time_step;
        return intercept + slope * (time - time_step * 184);
    }
    else if(time <= time_step * 186){
        intercept = -0.20547074667870102;
        real local_time_step = time_step * 186 - time_step * 185;
        slope = (-0.19726944797570423 - -0.20547074667870102) / local_time_step;
        return intercept + slope * (time - time_step * 185);
    }
    else if(time <= time_step * 187){
        intercept = -0.19726944797570423;
        real local_time_step = time_step * 187 - time_step * 186;
        slope = (-0.29747802708808224 - -0.19726944797570423) / local_time_step;
        return intercept + slope * (time - time_step * 186);
    }
    else if(time <= time_step * 188){
        intercept = -0.29747802708808224;
        real local_time_step = time_step * 188 - time_step * 187;
        slope = (0.15361023206817037 - -0.29747802708808224) / local_time_step;
        return intercept + slope * (time - time_step * 187);
    }
    else if(time <= time_step * 189){
        intercept = 0.15361023206817037;
        real local_time_step = time_step * 189 - time_step * 188;
        slope = (-0.4436375390259223 - 0.15361023206817037) / local_time_step;
        return intercept + slope * (time - time_step * 188);
    }
    else if(time <= time_step * 190){
        intercept = -0.4436375390259223;
        real local_time_step = time_step * 190 - time_step * 189;
        slope = (-0.15913579626535934 - -0.4436375390259223) / local_time_step;
        return intercept + slope * (time - time_step * 189);
    }
    else if(time <= time_step * 191){
        intercept = -0.15913579626535934;
        real local_time_step = time_step * 191 - time_step * 190;
        slope = (0.3545055625960666 - -0.15913579626535934) / local_time_step;
        return intercept + slope * (time - time_step * 190);
    }
    else if(time <= time_step * 192){
        intercept = 0.3545055625960666;
        real local_time_step = time_step * 192 - time_step * 191;
        slope = (-0.12573920549833184 - 0.3545055625960666) / local_time_step;
        return intercept + slope * (time - time_step * 191);
    }
    else if(time <= time_step * 193){
        intercept = -0.12573920549833184;
        real local_time_step = time_step * 193 - time_step * 192;
        slope = (0.4665655148325738 - -0.12573920549833184) / local_time_step;
        return intercept + slope * (time - time_step * 192);
    }
    else if(time <= time_step * 194){
        intercept = 0.4665655148325738;
        real local_time_step = time_step * 194 - time_step * 193;
        slope = (0.2991353132337313 - 0.4665655148325738) / local_time_step;
        return intercept + slope * (time - time_step * 193);
    }
    else if(time <= time_step * 195){
        intercept = 0.2991353132337313;
        real local_time_step = time_step * 195 - time_step * 194;
        slope = (0.028222782427369197 - 0.2991353132337313) / local_time_step;
        return intercept + slope * (time - time_step * 194);
    }
    else if(time <= time_step * 196){
        intercept = 0.028222782427369197;
        real local_time_step = time_step * 196 - time_step * 195;
        slope = (0.2027067226841529 - 0.028222782427369197) / local_time_step;
        return intercept + slope * (time - time_step * 195);
    }
    else if(time <= time_step * 197){
        intercept = 0.2027067226841529;
        real local_time_step = time_step * 197 - time_step * 196;
        slope = (0.3621506984082742 - 0.2027067226841529) / local_time_step;
        return intercept + slope * (time - time_step * 196);
    }
    else if(time <= time_step * 198){
        intercept = 0.3621506984082742;
        real local_time_step = time_step * 198 - time_step * 197;
        slope = (-0.0816789856157707 - 0.3621506984082742) / local_time_step;
        return intercept + slope * (time - time_step * 197);
    }
    else if(time <= time_step * 199){
        intercept = -0.0816789856157707;
        real local_time_step = time_step * 199 - time_step * 198;
        slope = (0.2265956119846061 - -0.0816789856157707) / local_time_step;
        return intercept + slope * (time - time_step * 198);
    }
    return 0.2265956119846061;
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
    real safety_stock_coverage = 2;
    real minimum_order_processing_time = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real fractional_inventory_adjustment = 1 / 8;
    real adjustment_from_inventory = (desired_inventory - inventory) * fractional_inventory_adjustment;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real fractional_wip_adjustment = 1 / 2;
    real manufacturing_cycle_time = 8;
    real desired_wip = manufacturing_cycle_time * desired_production;
    real adjustment_for_wip = (desired_wip - work_in_process_inventory) * fractional_wip_adjustment;
    real desired_production_start_rate = fmax(0, desired_production + adjustment_for_wip);
    real production_start_rate = fmax(0, desired_production_start_rate);
    real desired_minus_shadow_psr = production_start_rate - production_start_rate_stocked;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_rate = dataFunc__customer_order_rate(time, time_step);
    real order_fulfillment_rate = shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_start_rate_stocked_change_rate = desired_minus_shadow_psr / time_step;
    real production_start_rate_stocked_dydt = production_start_rate + production_start_rate_stocked_change_rate;
    real time_to_average_order_rate = 8;
    real corr_time = corr_time_over_time_step * time_step;
    real process_noise_in = (white_noise - process_noise) / corr_time;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time * fmax(0, 1 + process_noise);
    real desired_minus_shadow_pr = production_rate - production_rate_stocked;
    real production_rate_stocked_change_rate = desired_minus_shadow_pr / time_step;
    real production_rate_stocked_dydt = production_rate + production_rate_stocked_change_rate;
    real change_in_exp_orders = (dataFunc__customer_order_rate(time, time_step) - expected_order_rate) / time_to_average_order_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
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
