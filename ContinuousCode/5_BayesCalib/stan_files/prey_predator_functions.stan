// Begin ODE declaration
real dataFunc__std_normal_data_delta(real time){
    // DataStructure for variable std_normal_data_delta
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -1.472927598139252;
        slope = 0.7962143627634507 - -1.472927598139252;
        return intercept + slope * (time - -1.472927598139252);
    }
    else if(time <= 2){
        intercept = 0.7962143627634507;
        slope = 0.012801074639866229 - 0.7962143627634507;
        return intercept + slope * (time - 0.7962143627634507);
    }
    else if(time <= 3){
        intercept = 0.012801074639866229;
        slope = 0.34887219030747746 - 0.012801074639866229;
        return intercept + slope * (time - 0.012801074639866229);
    }
    else if(time <= 4){
        intercept = 0.34887219030747746;
        slope = 0.6236162850952673 - 0.34887219030747746;
        return intercept + slope * (time - 0.34887219030747746);
    }
    else if(time <= 5){
        intercept = 0.6236162850952673;
        slope = -0.7504152315420469 - 0.6236162850952673;
        return intercept + slope * (time - 0.6236162850952673);
    }
    else if(time <= 6){
        intercept = -0.7504152315420469;
        slope = -1.9045326731508896 - -0.7504152315420469;
        return intercept + slope * (time - -0.7504152315420469);
    }
    else if(time <= 7){
        intercept = -1.9045326731508896;
        slope = 0.8353306329205776 - -1.9045326731508896;
        return intercept + slope * (time - -1.9045326731508896);
    }
    else if(time <= 8){
        intercept = 0.8353306329205776;
        slope = -0.027908082528074255 - 0.8353306329205776;
        return intercept + slope * (time - 0.8353306329205776);
    }
    else if(time <= 9){
        intercept = -0.027908082528074255;
        slope = -0.38574311172914344 - -0.027908082528074255;
        return intercept + slope * (time - -0.027908082528074255);
    }
    else if(time <= 10){
        intercept = -0.38574311172914344;
        slope = -1.6007014776727357 - -0.38574311172914344;
        return intercept + slope * (time - -0.38574311172914344);
    }
    else if(time <= 11){
        intercept = -1.6007014776727357;
        slope = -0.08222055589306945 - -1.6007014776727357;
        return intercept + slope * (time - -1.6007014776727357);
    }
    else if(time <= 12){
        intercept = -0.08222055589306945;
        slope = 0.17971444781659623 - -0.08222055589306945;
        return intercept + slope * (time - -0.08222055589306945);
    }
    else if(time <= 13){
        intercept = 0.17971444781659623;
        slope = -0.5820769741343101 - 0.17971444781659623;
        return intercept + slope * (time - 0.17971444781659623);
    }
    else if(time <= 14){
        intercept = -0.5820769741343101;
        slope = 2.178999635494092 - -0.5820769741343101;
        return intercept + slope * (time - -0.5820769741343101);
    }
    else if(time <= 15){
        intercept = 2.178999635494092;
        slope = -0.030778284539538816 - 2.178999635494092;
        return intercept + slope * (time - 2.178999635494092);
    }
    else if(time <= 16){
        intercept = -0.030778284539538816;
        slope = -1.8073811936522073 - -0.030778284539538816;
        return intercept + slope * (time - -0.030778284539538816);
    }
    else if(time <= 17){
        intercept = -1.8073811936522073;
        slope = -1.4292418053157385 - -1.8073811936522073;
        return intercept + slope * (time - -1.8073811936522073);
    }
    else if(time <= 18){
        intercept = -1.4292418053157385;
        slope = 1.0137123464503672 - -1.4292418053157385;
        return intercept + slope * (time - -1.4292418053157385);
    }
    else if(time <= 19){
        intercept = 1.0137123464503672;
        slope = 0.3810928352806446 - 1.0137123464503672;
        return intercept + slope * (time - 1.0137123464503672);
    }
    return 0.3810928352806446;
}

real dataFunc__std_normal_data_beta(real time){
    // DataStructure for variable std_normal_data_beta
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -0.41673211692871426;
        slope = -1.0779871633298108 - -0.41673211692871426;
        return intercept + slope * (time - -0.41673211692871426);
    }
    else if(time <= 2){
        intercept = -1.0779871633298108;
        slope = 1.449054378495051 - -1.0779871633298108;
        return intercept + slope * (time - -1.0779871633298108);
    }
    else if(time <= 3){
        intercept = 1.449054378495051;
        slope = 0.0050418585472178255 - 1.449054378495051;
        return intercept + slope * (time - 1.449054378495051);
    }
    else if(time <= 4){
        intercept = 0.0050418585472178255;
        slope = 0.4531285805928503 - 0.0050418585472178255;
        return intercept + slope * (time - 0.0050418585472178255);
    }
    else if(time <= 5){
        intercept = 0.4531285805928503;
        slope = -0.37653403725241813 - 0.4531285805928503;
        return intercept + slope * (time - 0.4531285805928503);
    }
    else if(time <= 6){
        intercept = -0.37653403725241813;
        slope = 1.2893837800310537 - -0.37653403725241813;
        return intercept + slope * (time - -0.37653403725241813);
    }
    else if(time <= 7){
        intercept = 1.2893837800310537;
        slope = 1.8090936800736475 - 1.2893837800310537;
        return intercept + slope * (time - 1.2893837800310537);
    }
    else if(time <= 8){
        intercept = 1.8090936800736475;
        slope = -0.6407971079076076 - 1.8090936800736475;
        return intercept + slope * (time - 1.8090936800736475);
    }
    else if(time <= 9){
        intercept = -0.6407971079076076;
        slope = -0.44955145970583243 - -0.6407971079076076;
        return intercept + slope * (time - -0.6407971079076076);
    }
    else if(time <= 10){
        intercept = -0.44955145970583243;
        slope = -0.42680554119474884 - -0.44955145970583243;
        return intercept + slope * (time - -0.44955145970583243);
    }
    else if(time <= 11){
        intercept = -0.42680554119474884;
        slope = -1.9510907931019539 - -0.42680554119474884;
        return intercept + slope * (time - -0.42680554119474884);
    }
    else if(time <= 12){
        intercept = -1.9510907931019539;
        slope = 0.32365328671641036 - -1.9510907931019539;
        return intercept + slope * (time - -1.9510907931019539);
    }
    else if(time <= 13){
        intercept = 0.32365328671641036;
        slope = 1.6796286252466517 - 0.32365328671641036;
        return intercept + slope * (time - 0.32365328671641036);
    }
    else if(time <= 14){
        intercept = 1.6796286252466517;
        slope = -0.8076383350193799 - 1.6796286252466517;
        return intercept + slope * (time - 1.6796286252466517);
    }
    else if(time <= 15){
        intercept = -0.8076383350193799;
        slope = 0.2848361060769676 - -0.8076383350193799;
        return intercept + slope * (time - -0.8076383350193799);
    }
    else if(time <= 16){
        intercept = 0.2848361060769676;
        slope = 0.6485446475696921 - 0.2848361060769676;
        return intercept + slope * (time - 0.2848361060769676);
    }
    else if(time <= 17){
        intercept = 0.6485446475696921;
        slope = 1.2027512048940692 - 0.6485446475696921;
        return intercept + slope * (time - 0.6485446475696921);
    }
    else if(time <= 18){
        intercept = 1.2027512048940692;
        slope = 0.14781609760015432 - 1.2027512048940692;
        return intercept + slope * (time - 1.2027512048940692);
    }
    else if(time <= 19){
        intercept = 0.14781609760015432;
        slope = -0.7717965180929988 - 0.14781609760015432;
        return intercept + slope * (time - 0.14781609760015432);
    }
    return -0.7717965180929988;
}

real dataFunc__std_normal_data_alpha(real time){
    // DataStructure for variable std_normal_data_alpha
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.8537281465642652;
        slope = -0.3308526933629193 - 0.8537281465642652;
        return intercept + slope * (time - 0.8537281465642652);
    }
    else if(time <= 2){
        intercept = -0.3308526933629193;
        slope = -0.4690194760240636 - -0.3308526933629193;
        return intercept + slope * (time - -0.3308526933629193);
    }
    else if(time <= 3){
        intercept = -0.4690194760240636;
        slope = -0.8679265631277089 - -0.4690194760240636;
        return intercept + slope * (time - -0.4690194760240636);
    }
    else if(time <= 4){
        intercept = -0.8679265631277089;
        slope = 0.021639116402496678 - -0.8679265631277089;
        return intercept + slope * (time - -0.8679265631277089);
    }
    else if(time <= 5){
        intercept = 0.021639116402496678;
        slope = -0.34934531195995505 - 0.021639116402496678;
        return intercept + slope * (time - 0.021639116402496678);
    }
    else if(time <= 6){
        intercept = -0.34934531195995505;
        slope = 0.5864180167240846 - -0.34934531195995505;
        return intercept + slope * (time - -0.34934531195995505);
    }
    else if(time <= 7){
        intercept = 0.5864180167240846;
        slope = -0.27479618470582234 - 0.5864180167240846;
        return intercept + slope * (time - 0.5864180167240846);
    }
    else if(time <= 8){
        intercept = -0.27479618470582234;
        slope = -0.42327786292327507 - -0.27479618470582234;
        return intercept + slope * (time - -0.27479618470582234);
    }
    else if(time <= 9){
        intercept = -0.42327786292327507;
        slope = 0.8278159086600347 - -0.42327786292327507;
        return intercept + slope * (time - -0.42327786292327507);
    }
    else if(time <= 10){
        intercept = 0.8278159086600347;
        slope = 0.24662037139448167 - 0.8278159086600347;
        return intercept + slope * (time - 0.8278159086600347);
    }
    else if(time <= 11){
        intercept = 0.24662037139448167;
        slope = -0.6167669902633917 - 0.24662037139448167;
        return intercept + slope * (time - 0.24662037139448167);
    }
    else if(time <= 12){
        intercept = -0.6167669902633917;
        slope = 1.5338798614961486 - -0.6167669902633917;
        return intercept + slope * (time - -0.6167669902633917);
    }
    else if(time <= 13){
        intercept = 1.5338798614961486;
        slope = 0.7316511453155254 - 1.5338798614961486;
        return intercept + slope * (time - 1.5338798614961486);
    }
    else if(time <= 14){
        intercept = 0.7316511453155254;
        slope = -0.07204112034112445 - 0.7316511453155254;
        return intercept + slope * (time - 0.7316511453155254);
    }
    else if(time <= 15){
        intercept = -0.07204112034112445;
        slope = 0.9177329771316599 - -0.07204112034112445;
        return intercept + slope * (time - -0.07204112034112445);
    }
    else if(time <= 16){
        intercept = 0.9177329771316599;
        slope = -0.9738768364251539 - 0.9177329771316599;
        return intercept + slope * (time - 0.9177329771316599);
    }
    else if(time <= 17){
        intercept = -0.9738768364251539;
        slope = -0.07129209714184556 - -0.9738768364251539;
        return intercept + slope * (time - -0.9738768364251539);
    }
    else if(time <= 18){
        intercept = -0.07129209714184556;
        slope = 0.860022762957451 - -0.07129209714184556;
        return intercept + slope * (time - -0.07129209714184556);
    }
    else if(time <= 19){
        intercept = 0.860022762957451;
        slope = -0.5119459761415321 - 0.860022762957451;
        return intercept + slope * (time - 0.860022762957451);
    }
    return -0.5119459761415321;
}

real dataFunc__std_normal_data_gamma(real time){
    // DataStructure for variable std_normal_data_gamma
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -0.18314185332405122;
        slope = -1.9112836988785138 - -0.18314185332405122;
        return intercept + slope * (time - -0.18314185332405122);
    }
    else if(time <= 2){
        intercept = -1.9112836988785138;
        slope = 0.26706682664756665 - -1.9112836988785138;
        return intercept + slope * (time - -1.9112836988785138);
    }
    else if(time <= 3){
        intercept = 0.26706682664756665;
        slope = -0.9304061062104457 - 0.26706682664756665;
        return intercept + slope * (time - 0.26706682664756665);
    }
    else if(time <= 4){
        intercept = -0.9304061062104457;
        slope = -1.089806389583858 - -0.9304061062104457;
        return intercept + slope * (time - -0.9304061062104457);
    }
    else if(time <= 5){
        intercept = -1.089806389583858;
        slope = -0.29245389903204166 - -1.089806389583858;
        return intercept + slope * (time - -1.089806389583858);
    }
    else if(time <= 6){
        intercept = -0.29245389903204166;
        slope = 1.3391053100269559 - -0.29245389903204166;
        return intercept + slope * (time - -0.29245389903204166);
    }
    else if(time <= 7){
        intercept = 1.3391053100269559;
        slope = -0.745184058926557 - 1.3391053100269559;
        return intercept + slope * (time - 1.3391053100269559);
    }
    else if(time <= 8){
        intercept = -0.745184058926557;
        slope = 0.34899875816638487 - -0.745184058926557;
        return intercept + slope * (time - -0.745184058926557);
    }
    else if(time <= 9){
        intercept = 0.34899875816638487;
        slope = 0.30856713512070905 - 0.34899875816638487;
        return intercept + slope * (time - 0.34899875816638487);
    }
    else if(time <= 10){
        intercept = 0.30856713512070905;
        slope = 0.21801377807509656 - 0.30856713512070905;
        return intercept + slope * (time - 0.30856713512070905);
    }
    else if(time <= 11){
        intercept = 0.21801377807509656;
        slope = -0.12879549104226082 - 0.21801377807509656;
        return intercept + slope * (time - 0.21801377807509656);
    }
    else if(time <= 12){
        intercept = -0.12879549104226082;
        slope = 2.2893669547566975 - -0.12879549104226082;
        return intercept + slope * (time - -0.12879549104226082);
    }
    else if(time <= 13){
        intercept = 2.2893669547566975;
        slope = -0.14692687234060678 - 2.2893669547566975;
        return intercept + slope * (time - 2.2893669547566975);
    }
    else if(time <= 14){
        intercept = -0.14692687234060678;
        slope = 0.277305685706132 - -0.14692687234060678;
        return intercept + slope * (time - -0.14692687234060678);
    }
    else if(time <= 15){
        intercept = 0.277305685706132;
        slope = 0.1406083067490915 - 0.277305685706132;
        return intercept + slope * (time - 0.277305685706132);
    }
    else if(time <= 16){
        intercept = 0.1406083067490915;
        slope = 0.47621630454207825 - 0.1406083067490915;
        return intercept + slope * (time - 0.1406083067490915);
    }
    else if(time <= 17){
        intercept = 0.47621630454207825;
        slope = 0.4235320796537578 - 0.47621630454207825;
        return intercept + slope * (time - 0.47621630454207825);
    }
    else if(time <= 18){
        intercept = 0.4235320796537578;
        slope = 0.568827206065458 - 0.4235320796537578;
        return intercept + slope * (time - 0.4235320796537578);
    }
    else if(time <= 19){
        intercept = 0.568827206065458;
        slope = -0.9710643450334032 - 0.568827206065458;
        return intercept + slope * (time - 0.568827206065458);
    }
    return -0.9710643450334032;
}

vector vensim_ode_func(real time, vector outcome, real delta, real gamma, real beta, real alpha){
    vector[2] dydt;  // Return vector of the ODE function

    // State variables
    real predator = outcome[1];
    real prey = outcome[2];

    real alpha_mean = 0.8;
    real beta_mean = 0.05;
    real delta_mean = 0.05;
    real gamma_mean = 0.8;
    real predator_birth_rate = delta * prey * predator;
    real predator_death_rate = gamma * predator;
    real predator_dydt = predator_birth_rate - predator_death_rate;
    real prey_birth_rate = alpha * prey;
    real prey_death_rate = beta * predator * prey;
    real prey_dydt = prey_birth_rate - prey_death_rate;

    dydt[1] = predator_dydt;
    dydt[2] = prey_dydt;

    return dydt;
}
