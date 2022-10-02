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
real dataFunc__ran_norm4(real time){
    // DataStructure for variable ran_norm4
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.991883899327115;
        slope = -1.8572462429838432 - 0.991883899327115;
        return intercept + slope * (x - 0.991883899327115);
    }
    else if(time <= 2){
        intercept = -1.8572462429838432;
        slope = -0.8586699830989006 - -1.8572462429838432;
        return intercept + slope * (x - -1.8572462429838432);
    }
    else if(time <= 3){
        intercept = -0.8586699830989006;
        slope = 0.8992826664863608 - -0.8586699830989006;
        return intercept + slope * (x - -0.8586699830989006);
    }
    else if(time <= 4){
        intercept = 0.8992826664863608;
        slope = 0.7409782500369186 - 0.8992826664863608;
        return intercept + slope * (x - 0.8992826664863608);
    }
    else if(time <= 5){
        intercept = 0.7409782500369186;
        slope = -0.48462971842640523 - 0.7409782500369186;
        return intercept + slope * (x - 0.7409782500369186);
    }
    else if(time <= 6){
        intercept = -0.48462971842640523;
        slope = 0.41341712815882364 - -0.48462971842640523;
        return intercept + slope * (x - -0.48462971842640523);
    }
    else if(time <= 7){
        intercept = 0.41341712815882364;
        slope = -0.0418114964102677 - 0.41341712815882364;
        return intercept + slope * (x - 0.41341712815882364);
    }
    else if(time <= 8){
        intercept = -0.0418114964102677;
        slope = 0.6844932898339058 - -0.0418114964102677;
        return intercept + slope * (x - -0.0418114964102677);
    }
    else if(time <= 9){
        intercept = 0.6844932898339058;
        slope = -0.7052158450094995 - 0.6844932898339058;
        return intercept + slope * (x - 0.6844932898339058);
    }
    else if(time <= 10){
        intercept = -0.7052158450094995;
        slope = -0.3426273850069924 - -0.7052158450094995;
        return intercept + slope * (x - -0.7052158450094995);
    }
    else if(time <= 11){
        intercept = -0.3426273850069924;
        slope = -1.1710269888789298 - -0.3426273850069924;
        return intercept + slope * (x - -0.3426273850069924);
    }
    else if(time <= 12){
        intercept = -1.1710269888789298;
        slope = -0.2911725831475303 - -1.1710269888789298;
        return intercept + slope * (x - -1.1710269888789298);
    }
    else if(time <= 13){
        intercept = -0.2911725831475303;
        slope = 2.1798121779726927 - -0.2911725831475303;
        return intercept + slope * (x - -0.2911725831475303);
    }
    else if(time <= 14){
        intercept = 2.1798121779726927;
        slope = 0.15915783520031682 - 2.1798121779726927;
        return intercept + slope * (x - 2.1798121779726927);
    }
    else if(time <= 15){
        intercept = 0.15915783520031682;
        slope = 1.5128197695933687 - 0.15915783520031682;
        return intercept + slope * (x - 0.15915783520031682);
    }
    else if(time <= 16){
        intercept = 1.5128197695933687;
        slope = -0.2629139145383822 - 1.5128197695933687;
        return intercept + slope * (x - 1.5128197695933687);
    }
    else if(time <= 17){
        intercept = -0.2629139145383822;
        slope = -0.9065989508656498 - -0.2629139145383822;
        return intercept + slope * (x - -0.2629139145383822);
    }
    else if(time <= 18){
        intercept = -0.9065989508656498;
        slope = -0.2755413549501463 - -0.9065989508656498;
        return intercept + slope * (x - -0.9065989508656498);
    }
    else if(time <= 19){
        intercept = -0.2755413549501463;
        slope = 0.14766638347487204 - -0.2755413549501463;
        return intercept + slope * (x - -0.2755413549501463);
    }
    else if(time <= 20){
        intercept = 0.14766638347487204;
        slope = 1.0362824642196713 - 0.14766638347487204;
        return intercept + slope * (x - 0.14766638347487204);
    }
    else if(time <= 21){
        intercept = 1.0362824642196713;
        slope = 1.847125374436577 - 1.0362824642196713;
        return intercept + slope * (x - 1.0362824642196713);
    }
    else if(time <= 22){
        intercept = 1.847125374436577;
        slope = -2.1055706721857024 - 1.847125374436577;
        return intercept + slope * (x - 1.847125374436577);
    }
    else if(time <= 23){
        intercept = -2.1055706721857024;
        slope = 0.46527433323228 - -2.1055706721857024;
        return intercept + slope * (x - -2.1055706721857024);
    }
    else if(time <= 24){
        intercept = 0.46527433323228;
        slope = -0.6204177594557969 - 0.46527433323228;
        return intercept + slope * (x - 0.46527433323228);
    }
    else if(time <= 25){
        intercept = -0.6204177594557969;
        slope = 0.6834959364420995 - -0.6204177594557969;
        return intercept + slope * (x - -0.6204177594557969);
    }
    else if(time <= 26){
        intercept = 0.6834959364420995;
        slope = 0.5286046849691707 - 0.6834959364420995;
        return intercept + slope * (x - 0.6834959364420995);
    }
    else if(time <= 27){
        intercept = 0.5286046849691707;
        slope = -2.634622618556743 - 0.5286046849691707;
        return intercept + slope * (x - 0.5286046849691707);
    }
    else if(time <= 28){
        intercept = -2.634622618556743;
        slope = 1.0636607504572437 - -2.634622618556743;
        return intercept + slope * (x - -2.634622618556743);
    }
    else if(time <= 29){
        intercept = 1.0636607504572437;
        slope = 0.10397405408596139 - 1.0636607504572437;
        return intercept + slope * (x - 1.0636607504572437);
    }
    else if(time <= 30){
        intercept = 0.10397405408596139;
        slope = -0.7760610113445143 - 0.10397405408596139;
        return intercept + slope * (x - 0.10397405408596139);
    }
    else if(time <= 31){
        intercept = -0.7760610113445143;
        slope = -1.2948490344773618 - -0.7760610113445143;
        return intercept + slope * (x - -0.7760610113445143);
    }
    else if(time <= 32){
        intercept = -1.2948490344773618;
        slope = -0.08776769234666044 - -1.2948490344773618;
        return intercept + slope * (x - -1.2948490344773618);
    }
    else if(time <= 33){
        intercept = -0.08776769234666044;
        slope = -0.23884206034131747 - -0.08776769234666044;
        return intercept + slope * (x - -0.08776769234666044);
    }
    else if(time <= 34){
        intercept = -0.23884206034131747;
        slope = 2.2145755784830223 - -0.23884206034131747;
        return intercept + slope * (x - -0.23884206034131747);
    }
    else if(time <= 35){
        intercept = 2.2145755784830223;
        slope = -0.09138820661768574 - 2.2145755784830223;
        return intercept + slope * (x - 2.2145755784830223);
    }
    else if(time <= 36){
        intercept = -0.09138820661768574;
        slope = -0.6504342560709402 - -0.09138820661768574;
        return intercept + slope * (x - -0.09138820661768574);
    }
    else if(time <= 37){
        intercept = -0.6504342560709402;
        slope = 0.41442454776994975 - -0.6504342560709402;
        return intercept + slope * (x - -0.6504342560709402);
    }
    else if(time <= 38){
        intercept = 0.41442454776994975;
        slope = 1.403275884827857 - 0.41442454776994975;
        return intercept + slope * (x - 0.41442454776994975);
    }
    else if(time <= 39){
        intercept = 1.403275884827857;
        slope = 1.3322598337332525 - 1.403275884827857;
        return intercept + slope * (x - 1.403275884827857);
    }
    else if(time <= 40){
        intercept = 1.3322598337332525;
        slope = -0.26933064160313147 - 1.3322598337332525;
        return intercept + slope * (x - 1.3322598337332525);
    }
    else if(time <= 41){
        intercept = -0.26933064160313147;
        slope = 1.0193812517786722 - -0.26933064160313147;
        return intercept + slope * (x - -0.26933064160313147);
    }
    else if(time <= 42){
        intercept = 1.0193812517786722;
        slope = -1.4836806883980984 - 1.0193812517786722;
        return intercept + slope * (x - 1.0193812517786722);
    }
    else if(time <= 43){
        intercept = -1.4836806883980984;
        slope = 0.2876299953049707 - -1.4836806883980984;
        return intercept + slope * (x - -1.4836806883980984);
    }
    else if(time <= 44){
        intercept = 0.2876299953049707;
        slope = 0.08395629125946523 - 0.2876299953049707;
        return intercept + slope * (x - 0.2876299953049707);
    }
    else if(time <= 45){
        intercept = 0.08395629125946523;
        slope = -1.4863476417675219 - 0.08395629125946523;
        return intercept + slope * (x - 0.08395629125946523);
    }
    else if(time <= 46){
        intercept = -1.4863476417675219;
        slope = 0.902255823922276 - -1.4863476417675219;
        return intercept + slope * (x - -1.4863476417675219);
    }
    else if(time <= 47){
        intercept = 0.902255823922276;
        slope = 1.2971973264825898 - 0.902255823922276;
        return intercept + slope * (x - 0.902255823922276);
    }
    else if(time <= 48){
        intercept = 1.2971973264825898;
        slope = -0.437532057850175 - 1.2971973264825898;
        return intercept + slope * (x - 1.2971973264825898);
    }
    else if(time <= 49){
        intercept = -0.437532057850175;
        slope = -0.21414297092871915 - -0.437532057850175;
        return intercept + slope * (x - -0.437532057850175);
    }
    else if(time <= 50){
        intercept = -0.21414297092871915;
        slope = -0.48968617630272343 - -0.21414297092871915;
        return intercept + slope * (x - -0.21414297092871915);
    }
    else if(time <= 51){
        intercept = -0.48968617630272343;
        slope = -1.2258587891446595 - -0.48968617630272343;
        return intercept + slope * (x - -0.48968617630272343);
    }
    else if(time <= 52){
        intercept = -1.2258587891446595;
        slope = -0.2108272644826439 - -1.2258587891446595;
        return intercept + slope * (x - -1.2258587891446595);
    }
    else if(time <= 53){
        intercept = -0.2108272644826439;
        slope = 1.2656575134463324 - -0.2108272644826439;
        return intercept + slope * (x - -0.2108272644826439);
    }
    else if(time <= 54){
        intercept = 1.2656575134463324;
        slope = 2.2508261243615704 - 1.2656575134463324;
        return intercept + slope * (x - 1.2656575134463324);
    }
    else if(time <= 55){
        intercept = 2.2508261243615704;
        slope = -0.14498450177679972 - 2.2508261243615704;
        return intercept + slope * (x - 2.2508261243615704);
    }
    else if(time <= 56){
        intercept = -0.14498450177679972;
        slope = 0.25346553707880526 - -0.14498450177679972;
        return intercept + slope * (x - -0.14498450177679972);
    }
    else if(time <= 57){
        intercept = 0.25346553707880526;
        slope = 0.029325079830891616 - 0.25346553707880526;
        return intercept + slope * (x - 0.25346553707880526);
    }
    else if(time <= 58){
        intercept = 0.029325079830891616;
        slope = -0.6585783589329871 - 0.029325079830891616;
        return intercept + slope * (x - 0.029325079830891616);
    }
    else if(time <= 59){
        intercept = -0.6585783589329871;
        slope = -1.7268885664296154 - -0.6585783589329871;
        return intercept + slope * (x - -0.6585783589329871);
    }
    else if(time <= 60){
        intercept = -1.7268885664296154;
        slope = -1.4703969594945405 - -1.7268885664296154;
        return intercept + slope * (x - -1.7268885664296154);
    }
    else if(time <= 61){
        intercept = -1.4703969594945405;
        slope = 0.3779995645244672 - -1.4703969594945405;
        return intercept + slope * (x - -1.4703969594945405);
    }
    else if(time <= 62){
        intercept = 0.3779995645244672;
        slope = -0.2806823238761083 - 0.3779995645244672;
        return intercept + slope * (x - 0.3779995645244672);
    }
    else if(time <= 63){
        intercept = -0.2806823238761083;
        slope = -0.2640537619980497 - -0.2806823238761083;
        return intercept + slope * (x - -0.2806823238761083);
    }
    else if(time <= 64){
        intercept = -0.2640537619980497;
        slope = 0.5762484539670041 - -0.2640537619980497;
        return intercept + slope * (x - -0.2640537619980497);
    }
    else if(time <= 65){
        intercept = 0.5762484539670041;
        slope = 1.215374103546894 - 0.5762484539670041;
        return intercept + slope * (x - 0.5762484539670041);
    }
    else if(time <= 66){
        intercept = 1.215374103546894;
        slope = 1.175050134812459 - 1.215374103546894;
        return intercept + slope * (x - 1.215374103546894);
    }
    else if(time <= 67){
        intercept = 1.175050134812459;
        slope = 0.4145222732651682 - 1.175050134812459;
        return intercept + slope * (x - 1.175050134812459);
    }
    else if(time <= 68){
        intercept = 0.4145222732651682;
        slope = -0.13739926516558687 - 0.4145222732651682;
        return intercept + slope * (x - 0.4145222732651682);
    }
    else if(time <= 69){
        intercept = -0.13739926516558687;
        slope = -1.0937464959981213 - -0.13739926516558687;
        return intercept + slope * (x - -0.13739926516558687);
    }
    else if(time <= 70){
        intercept = -1.0937464959981213;
        slope = -1.2713123951264116 - -1.0937464959981213;
        return intercept + slope * (x - -1.0937464959981213);
    }
    else if(time <= 71){
        intercept = -1.2713123951264116;
        slope = 0.8192371350215323 - -1.2713123951264116;
        return intercept + slope * (x - -1.2713123951264116);
    }
    else if(time <= 72){
        intercept = 0.8192371350215323;
        slope = 0.03965138743515597 - 0.8192371350215323;
        return intercept + slope * (x - 0.8192371350215323);
    }
    else if(time <= 73){
        intercept = 0.03965138743515597;
        slope = 0.5617932338303238 - 0.03965138743515597;
        return intercept + slope * (x - 0.03965138743515597);
    }
    else if(time <= 74){
        intercept = 0.5617932338303238;
        slope = 0.7522718677311075 - 0.5617932338303238;
        return intercept + slope * (x - 0.5617932338303238);
    }
    else if(time <= 75){
        intercept = 0.7522718677311075;
        slope = 1.7341618470402975 - 0.7522718677311075;
        return intercept + slope * (x - 0.7522718677311075);
    }
    else if(time <= 76){
        intercept = 1.7341618470402975;
        slope = 1.4828059856669524 - 1.7341618470402975;
        return intercept + slope * (x - 1.7341618470402975);
    }
    else if(time <= 77){
        intercept = 1.4828059856669524;
        slope = 0.31703589085369255 - 1.4828059856669524;
        return intercept + slope * (x - 1.4828059856669524);
    }
    else if(time <= 78){
        intercept = 0.31703589085369255;
        slope = -0.8904036274563293 - 0.31703589085369255;
        return intercept + slope * (x - 0.31703589085369255);
    }
    else if(time <= 79){
        intercept = -0.8904036274563293;
        slope = 1.7488777779966682 - -0.8904036274563293;
        return intercept + slope * (x - -0.8904036274563293);
    }
    else if(time <= 80){
        intercept = 1.7488777779966682;
        slope = 0.49930171936650414 - 1.7488777779966682;
        return intercept + slope * (x - 1.7488777779966682);
    }
    else if(time <= 81){
        intercept = 0.49930171936650414;
        slope = 0.2436403417567391 - 0.49930171936650414;
        return intercept + slope * (x - 0.49930171936650414);
    }
    else if(time <= 82){
        intercept = 0.2436403417567391;
        slope = 5.780968057181974e-05 - 0.2436403417567391;
        return intercept + slope * (x - 0.2436403417567391);
    }
    else if(time <= 83){
        intercept = 5.780968057181974e-05;
        slope = 0.20499461017183973 - 5.780968057181974e-05;
        return intercept + slope * (x - 5.780968057181974e-05);
    }
    else if(time <= 84){
        intercept = 0.20499461017183973;
        slope = -1.2983032820975704 - 0.20499461017183973;
        return intercept + slope * (x - 0.20499461017183973);
    }
    else if(time <= 85){
        intercept = -1.2983032820975704;
        slope = -1.6707011243592258 - -1.2983032820975704;
        return intercept + slope * (x - -1.2983032820975704);
    }
    else if(time <= 86){
        intercept = -1.6707011243592258;
        slope = -0.6841906699477716 - -1.6707011243592258;
        return intercept + slope * (x - -1.6707011243592258);
    }
    else if(time <= 87){
        intercept = -0.6841906699477716;
        slope = -0.7703015615595932 - -0.6841906699477716;
        return intercept + slope * (x - -0.6841906699477716);
    }
    else if(time <= 88){
        intercept = -0.7703015615595932;
        slope = -1.8878355216948826 - -0.7703015615595932;
        return intercept + slope * (x - -0.7703015615595932);
    }
    else if(time <= 89){
        intercept = -1.8878355216948826;
        slope = 2.235379968390832 - -1.8878355216948826;
        return intercept + slope * (x - -1.8878355216948826);
    }
    else if(time <= 90){
        intercept = 2.235379968390832;
        slope = -1.9045219605304318 - 2.235379968390832;
        return intercept + slope * (x - 2.235379968390832);
    }
    else if(time <= 91){
        intercept = -1.9045219605304318;
        slope = 0.3689310112878023 - -1.9045219605304318;
        return intercept + slope * (x - -1.9045219605304318);
    }
    else if(time <= 92){
        intercept = 0.3689310112878023;
        slope = 0.6311502179412831 - 0.3689310112878023;
        return intercept + slope * (x - 0.3689310112878023);
    }
    else if(time <= 93){
        intercept = 0.6311502179412831;
        slope = -0.25270306079361776 - 0.6311502179412831;
        return intercept + slope * (x - 0.6311502179412831);
    }
    else if(time <= 94){
        intercept = -0.25270306079361776;
        slope = -0.8075598042283707 - -0.25270306079361776;
        return intercept + slope * (x - -0.25270306079361776);
    }
    else if(time <= 95){
        intercept = -0.8075598042283707;
        slope = -2.113383183329866 - -0.8075598042283707;
        return intercept + slope * (x - -0.8075598042283707);
    }
    else if(time <= 96){
        intercept = -2.113383183329866;
        slope = -0.9878120763476651 - -2.113383183329866;
        return intercept + slope * (x - -2.113383183329866);
    }
    else if(time <= 97){
        intercept = -0.9878120763476651;
        slope = 0.9270341216610046 - -0.9878120763476651;
        return intercept + slope * (x - -0.9878120763476651);
    }
    else if(time <= 98){
        intercept = 0.9270341216610046;
        slope = 1.8775206437128544 - 0.9270341216610046;
        return intercept + slope * (x - 0.9270341216610046);
    }
    else if(time <= 99){
        intercept = 1.8775206437128544;
        slope = 1.5618833821901963 - 1.8775206437128544;
        return intercept + slope * (x - 1.8775206437128544);
    }
    else if(time <= 100){
        intercept = 1.5618833821901963;
        slope = 1.3792692294119269 - 1.5618833821901963;
        return intercept + slope * (x - 1.5618833821901963);
    }
    else if(time <= 101){
        intercept = 1.3792692294119269;
        slope = 2.1187397412112077 - 1.3792692294119269;
        return intercept + slope * (x - 1.3792692294119269);
    }
    else if(time <= 102){
        intercept = 2.1187397412112077;
        slope = 1.6603677542857578 - 2.1187397412112077;
        return intercept + slope * (x - 2.1187397412112077);
    }
    else if(time <= 103){
        intercept = 1.6603677542857578;
        slope = 1.0765084913404372 - 1.6603677542857578;
        return intercept + slope * (x - 1.6603677542857578);
    }
    else if(time <= 104){
        intercept = 1.0765084913404372;
        slope = 1.3963389400461153 - 1.0765084913404372;
        return intercept + slope * (x - 1.0765084913404372);
    }
    else if(time <= 105){
        intercept = 1.3963389400461153;
        slope = -1.2130655699423023 - 1.3963389400461153;
        return intercept + slope * (x - 1.3963389400461153);
    }
    else if(time <= 106){
        intercept = -1.2130655699423023;
        slope = 1.0267256901563893 - -1.2130655699423023;
        return intercept + slope * (x - -1.2130655699423023);
    }
    else if(time <= 107){
        intercept = 1.0267256901563893;
        slope = 1.0687910687783684 - 1.0267256901563893;
        return intercept + slope * (x - 1.0267256901563893);
    }
    else if(time <= 108){
        intercept = 1.0687910687783684;
        slope = 0.2992585997840711 - 1.0687910687783684;
        return intercept + slope * (x - 1.0687910687783684);
    }
    else if(time <= 109){
        intercept = 0.2992585997840711;
        slope = -0.019379660879457174 - 0.2992585997840711;
        return intercept + slope * (x - 0.2992585997840711);
    }
    else if(time <= 110){
        intercept = -0.019379660879457174;
        slope = 0.5271408252039796 - -0.019379660879457174;
        return intercept + slope * (x - -0.019379660879457174);
    }
    else if(time <= 111){
        intercept = 0.5271408252039796;
        slope = -0.7827469215754244 - 0.5271408252039796;
        return intercept + slope * (x - 0.5271408252039796);
    }
    else if(time <= 112){
        intercept = -0.7827469215754244;
        slope = -1.0488745730470537 - -0.7827469215754244;
        return intercept + slope * (x - -0.7827469215754244);
    }
    else if(time <= 113){
        intercept = -1.0488745730470537;
        slope = -0.9253370831395024 - -1.0488745730470537;
        return intercept + slope * (x - -1.0488745730470537);
    }
    else if(time <= 114){
        intercept = -0.9253370831395024;
        slope = 0.04092453322883319 - -0.9253370831395024;
        return intercept + slope * (x - -0.9253370831395024);
    }
    else if(time <= 115){
        intercept = 0.04092453322883319;
        slope = 2.1932519222669025 - 0.04092453322883319;
        return intercept + slope * (x - 0.04092453322883319);
    }
    else if(time <= 116){
        intercept = 2.1932519222669025;
        slope = -0.42729539050986165 - 2.1932519222669025;
        return intercept + slope * (x - 2.1932519222669025);
    }
    else if(time <= 117){
        intercept = -0.42729539050986165;
        slope = -0.21933419602495238 - -0.42729539050986165;
        return intercept + slope * (x - -0.42729539050986165);
    }
    else if(time <= 118){
        intercept = -0.21933419602495238;
        slope = -0.4632792287123162 - -0.21933419602495238;
        return intercept + slope * (x - -0.21933419602495238);
    }
    else if(time <= 119){
        intercept = -0.4632792287123162;
        slope = 0.7389817534806638 - -0.4632792287123162;
        return intercept + slope * (x - -0.4632792287123162);
    }
    else if(time <= 120){
        intercept = 0.7389817534806638;
        slope = 0.7943228887989169 - 0.7389817534806638;
        return intercept + slope * (x - 0.7389817534806638);
    }
    else if(time <= 121){
        intercept = 0.7943228887989169;
        slope = 0.31789355739889547 - 0.7943228887989169;
        return intercept + slope * (x - 0.7943228887989169);
    }
    else if(time <= 122){
        intercept = 0.31789355739889547;
        slope = 1.4021264273921057 - 0.31789355739889547;
        return intercept + slope * (x - 0.31789355739889547);
    }
    else if(time <= 123){
        intercept = 1.4021264273921057;
        slope = 1.0074152993137033 - 1.4021264273921057;
        return intercept + slope * (x - 1.4021264273921057);
    }
    else if(time <= 124){
        intercept = 1.0074152993137033;
        slope = -1.4361546348084306 - 1.0074152993137033;
        return intercept + slope * (x - 1.0074152993137033);
    }
    else if(time <= 125){
        intercept = -1.4361546348084306;
        slope = -1.15738268528122 - -1.4361546348084306;
        return intercept + slope * (x - -1.4361546348084306);
    }
    else if(time <= 126){
        intercept = -1.15738268528122;
        slope = -0.550597777741969 - -1.15738268528122;
        return intercept + slope * (x - -1.15738268528122);
    }
    else if(time <= 127){
        intercept = -0.550597777741969;
        slope = 0.18870180919262297 - -0.550597777741969;
        return intercept + slope * (x - -0.550597777741969);
    }
    else if(time <= 128){
        intercept = 0.18870180919262297;
        slope = 0.20184958316918458 - 0.18870180919262297;
        return intercept + slope * (x - 0.18870180919262297);
    }
    else if(time <= 129){
        intercept = 0.20184958316918458;
        slope = 0.10827075521510868 - 0.20184958316918458;
        return intercept + slope * (x - 0.20184958316918458);
    }
    else if(time <= 130){
        intercept = 0.10827075521510868;
        slope = -0.9985902409801305 - 0.10827075521510868;
        return intercept + slope * (x - 0.10827075521510868);
    }
    else if(time <= 131){
        intercept = -0.9985902409801305;
        slope = -1.5213949494350159 - -0.9985902409801305;
        return intercept + slope * (x - -0.9985902409801305);
    }
    else if(time <= 132){
        intercept = -1.5213949494350159;
        slope = 0.4055226189984793 - -1.5213949494350159;
        return intercept + slope * (x - -1.5213949494350159);
    }
    else if(time <= 133){
        intercept = 0.4055226189984793;
        slope = 0.27225660074763786 - 0.4055226189984793;
        return intercept + slope * (x - 0.4055226189984793);
    }
    else if(time <= 134){
        intercept = 0.27225660074763786;
        slope = -0.033503070120987834 - 0.27225660074763786;
        return intercept + slope * (x - 0.27225660074763786);
    }
    else if(time <= 135){
        intercept = -0.033503070120987834;
        slope = -1.742562533428769 - -0.033503070120987834;
        return intercept + slope * (x - -0.033503070120987834);
    }
    else if(time <= 136){
        intercept = -1.742562533428769;
        slope = 0.6686112122650479 - -1.742562533428769;
        return intercept + slope * (x - -1.742562533428769);
    }
    else if(time <= 137){
        intercept = 0.6686112122650479;
        slope = -1.5725682884107697 - 0.6686112122650479;
        return intercept + slope * (x - 0.6686112122650479);
    }
    else if(time <= 138){
        intercept = -1.5725682884107697;
        slope = -0.6127996969931344 - -1.5725682884107697;
        return intercept + slope * (x - -1.5725682884107697);
    }
    else if(time <= 139){
        intercept = -0.6127996969931344;
        slope = 0.7443649753169381 - -0.6127996969931344;
        return intercept + slope * (x - -0.6127996969931344);
    }
    else if(time <= 140){
        intercept = 0.7443649753169381;
        slope = -0.6402097288524028 - 0.7443649753169381;
        return intercept + slope * (x - 0.7443649753169381);
    }
    else if(time <= 141){
        intercept = -0.6402097288524028;
        slope = -1.1247664872909404 - -0.6402097288524028;
        return intercept + slope * (x - -0.6402097288524028);
    }
    else if(time <= 142){
        intercept = -1.1247664872909404;
        slope = 0.5506412939024327 - -1.1247664872909404;
        return intercept + slope * (x - -1.1247664872909404);
    }
    else if(time <= 143){
        intercept = 0.5506412939024327;
        slope = -0.607705628560377 - 0.5506412939024327;
        return intercept + slope * (x - 0.5506412939024327);
    }
    else if(time <= 144){
        intercept = -0.607705628560377;
        slope = 1.406978778568185 - -0.607705628560377;
        return intercept + slope * (x - -0.607705628560377);
    }
    else if(time <= 145){
        intercept = 1.406978778568185;
        slope = -1.2744323072977644 - 1.406978778568185;
        return intercept + slope * (x - 1.406978778568185);
    }
    else if(time <= 146){
        intercept = -1.2744323072977644;
        slope = -0.724186142304929 - -1.2744323072977644;
        return intercept + slope * (x - -1.2744323072977644);
    }
    else if(time <= 147){
        intercept = -0.724186142304929;
        slope = -0.8729442952996384 - -0.724186142304929;
        return intercept + slope * (x - -0.724186142304929);
    }
    else if(time <= 148){
        intercept = -0.8729442952996384;
        slope = -0.47827787189761584 - -0.8729442952996384;
        return intercept + slope * (x - -0.8729442952996384);
    }
    else if(time <= 149){
        intercept = -0.47827787189761584;
        slope = -0.6137324683933103 - -0.47827787189761584;
        return intercept + slope * (x - -0.47827787189761584);
    }
    else if(time <= 150){
        intercept = -0.6137324683933103;
        slope = 0.25492311815455726 - -0.6137324683933103;
        return intercept + slope * (x - -0.6137324683933103);
    }
    else if(time <= 151){
        intercept = 0.25492311815455726;
        slope = -0.06523169349171933 - 0.25492311815455726;
        return intercept + slope * (x - 0.25492311815455726);
    }
    else if(time <= 152){
        intercept = -0.06523169349171933;
        slope = 1.414642581170972 - -0.06523169349171933;
        return intercept + slope * (x - -0.06523169349171933);
    }
    else if(time <= 153){
        intercept = 1.414642581170972;
        slope = 0.09168445807572832 - 1.414642581170972;
        return intercept + slope * (x - 1.414642581170972);
    }
    else if(time <= 154){
        intercept = 0.09168445807572832;
        slope = 3.126414996486663 - 0.09168445807572832;
        return intercept + slope * (x - 0.09168445807572832);
    }
    else if(time <= 155){
        intercept = 3.126414996486663;
        slope = -0.07814396532006204 - 3.126414996486663;
        return intercept + slope * (x - 3.126414996486663);
    }
    else if(time <= 156){
        intercept = -0.07814396532006204;
        slope = 0.28397053585686327 - -0.07814396532006204;
        return intercept + slope * (x - -0.07814396532006204);
    }
    else if(time <= 157){
        intercept = 0.28397053585686327;
        slope = 0.5680863696270895 - 0.28397053585686327;
        return intercept + slope * (x - 0.28397053585686327);
    }
    else if(time <= 158){
        intercept = 0.5680863696270895;
        slope = -0.5246539579568053 - 0.5680863696270895;
        return intercept + slope * (x - 0.5680863696270895);
    }
    else if(time <= 159){
        intercept = -0.5246539579568053;
        slope = 0.6502480620334522 - -0.5246539579568053;
        return intercept + slope * (x - -0.5246539579568053);
    }
    else if(time <= 160){
        intercept = 0.6502480620334522;
        slope = -1.4995770637359838 - 0.6502480620334522;
        return intercept + slope * (x - 0.6502480620334522);
    }
    else if(time <= 161){
        intercept = -1.4995770637359838;
        slope = -0.5631277996791516 - -1.4995770637359838;
        return intercept + slope * (x - -1.4995770637359838);
    }
    else if(time <= 162){
        intercept = -0.5631277996791516;
        slope = 0.05037737425264692 - -0.5631277996791516;
        return intercept + slope * (x - -0.5631277996791516);
    }
    else if(time <= 163){
        intercept = 0.05037737425264692;
        slope = -0.5958042196796217 - 0.05037737425264692;
        return intercept + slope * (x - 0.05037737425264692);
    }
    else if(time <= 164){
        intercept = -0.5958042196796217;
        slope = 0.766428548523665 - -0.5958042196796217;
        return intercept + slope * (x - -0.5958042196796217);
    }
    else if(time <= 165){
        intercept = 0.766428548523665;
        slope = 1.7117921414808188 - 0.766428548523665;
        return intercept + slope * (x - 0.766428548523665);
    }
    else if(time <= 166){
        intercept = 1.7117921414808188;
        slope = -1.070858385093844 - 1.7117921414808188;
        return intercept + slope * (x - 1.7117921414808188);
    }
    else if(time <= 167){
        intercept = -1.070858385093844;
        slope = -0.09650771797875868 - -1.070858385093844;
        return intercept + slope * (x - -1.070858385093844);
    }
    else if(time <= 168){
        intercept = -0.09650771797875868;
        slope = 0.2983309861197679 - -0.09650771797875868;
        return intercept + slope * (x - -0.09650771797875868);
    }
    else if(time <= 169){
        intercept = 0.2983309861197679;
        slope = 0.5157826332147656 - 0.2983309861197679;
        return intercept + slope * (x - 0.2983309861197679);
    }
    else if(time <= 170){
        intercept = 0.5157826332147656;
        slope = -0.556009616737733 - 0.5157826332147656;
        return intercept + slope * (x - 0.5157826332147656);
    }
    else if(time <= 171){
        intercept = -0.556009616737733;
        slope = -0.1449336085393337 - -0.556009616737733;
        return intercept + slope * (x - -0.556009616737733);
    }
    else if(time <= 172){
        intercept = -0.1449336085393337;
        slope = 0.6964530640172906 - -0.1449336085393337;
        return intercept + slope * (x - -0.1449336085393337);
    }
    else if(time <= 173){
        intercept = 0.6964530640172906;
        slope = -0.36465169180081847 - 0.6964530640172906;
        return intercept + slope * (x - 0.6964530640172906);
    }
    else if(time <= 174){
        intercept = -0.36465169180081847;
        slope = 0.9739773874578544 - -0.36465169180081847;
        return intercept + slope * (x - -0.36465169180081847);
    }
    else if(time <= 175){
        intercept = 0.9739773874578544;
        slope = -0.6150760230618991 - 0.9739773874578544;
        return intercept + slope * (x - 0.9739773874578544);
    }
    else if(time <= 176){
        intercept = -0.6150760230618991;
        slope = -0.2808490995622585 - -0.6150760230618991;
        return intercept + slope * (x - -0.6150760230618991);
    }
    else if(time <= 177){
        intercept = -0.2808490995622585;
        slope = -0.4733198298614244 - -0.2808490995622585;
        return intercept + slope * (x - -0.2808490995622585);
    }
    else if(time <= 178){
        intercept = -0.4733198298614244;
        slope = -2.2350031937022283 - -0.4733198298614244;
        return intercept + slope * (x - -0.4733198298614244);
    }
    else if(time <= 179){
        intercept = -2.2350031937022283;
        slope = -1.1439519485683358 - -2.2350031937022283;
        return intercept + slope * (x - -2.2350031937022283);
    }
    else if(time <= 180){
        intercept = -1.1439519485683358;
        slope = 0.4093626063132083 - -1.1439519485683358;
        return intercept + slope * (x - -1.1439519485683358);
    }
    else if(time <= 181){
        intercept = 0.4093626063132083;
        slope = 1.1388333576336889 - 0.4093626063132083;
        return intercept + slope * (x - 0.4093626063132083);
    }
    else if(time <= 182){
        intercept = 1.1388333576336889;
        slope = -0.2642870038269411 - 1.1388333576336889;
        return intercept + slope * (x - 1.1388333576336889);
    }
    else if(time <= 183){
        intercept = -0.2642870038269411;
        slope = 0.31112568852458644 - -0.2642870038269411;
        return intercept + slope * (x - -0.2642870038269411);
    }
    else if(time <= 184){
        intercept = 0.31112568852458644;
        slope = 0.9393701905567329 - 0.31112568852458644;
        return intercept + slope * (x - 0.31112568852458644);
    }
    else if(time <= 185){
        intercept = 0.9393701905567329;
        slope = -0.5580276146482227 - 0.9393701905567329;
        return intercept + slope * (x - 0.9393701905567329);
    }
    else if(time <= 186){
        intercept = -0.5580276146482227;
        slope = 0.25776337209515526 - -0.5580276146482227;
        return intercept + slope * (x - -0.5580276146482227);
    }
    else if(time <= 187){
        intercept = 0.25776337209515526;
        slope = -0.029903270440684505 - 0.25776337209515526;
        return intercept + slope * (x - 0.25776337209515526);
    }
    else if(time <= 188){
        intercept = -0.029903270440684505;
        slope = -0.14976166187151282 - -0.029903270440684505;
        return intercept + slope * (x - -0.029903270440684505);
    }
    else if(time <= 189){
        intercept = -0.14976166187151282;
        slope = 0.10827488488448823 - -0.14976166187151282;
        return intercept + slope * (x - -0.14976166187151282);
    }
    else if(time <= 190){
        intercept = 0.10827488488448823;
        slope = 0.5605952587070643 - 0.10827488488448823;
        return intercept + slope * (x - 0.10827488488448823);
    }
    else if(time <= 191){
        intercept = 0.5605952587070643;
        slope = 1.8642829639210283 - 0.5605952587070643;
        return intercept + slope * (x - 0.5605952587070643);
    }
    else if(time <= 192){
        intercept = 1.8642829639210283;
        slope = 1.4333648533455707 - 1.8642829639210283;
        return intercept + slope * (x - 1.8642829639210283);
    }
    else if(time <= 193){
        intercept = 1.4333648533455707;
        slope = 1.4690409345485573 - 1.4333648533455707;
        return intercept + slope * (x - 1.4333648533455707);
    }
    else if(time <= 194){
        intercept = 1.4690409345485573;
        slope = 1.0983403836940409 - 1.4690409345485573;
        return intercept + slope * (x - 1.4690409345485573);
    }
    else if(time <= 195){
        intercept = 1.0983403836940409;
        slope = -0.11859239867248912 - 1.0983403836940409;
        return intercept + slope * (x - 1.0983403836940409);
    }
    else if(time <= 196){
        intercept = -0.11859239867248912;
        slope = 1.0289495762792638 - -0.11859239867248912;
        return intercept + slope * (x - -0.11859239867248912);
    }
    else if(time <= 197){
        intercept = 1.0289495762792638;
        slope = 0.17906732444547746 - 1.0289495762792638;
        return intercept + slope * (x - 1.0289495762792638);
    }
    else if(time <= 198){
        intercept = 0.17906732444547746;
        slope = 0.7111919408032792 - 0.17906732444547746;
        return intercept + slope * (x - 0.17906732444547746);
    }
    else if(time <= 199){
        intercept = 0.7111919408032792;
        slope = 0.1481136067118663 - 0.7111919408032792;
        return intercept + slope * (x - 0.7111919408032792);
    }
    else if(time <= 200){
        intercept = 0.1481136067118663;
        slope = 1.41734092613914 - 0.1481136067118663;
        return intercept + slope * (x - 0.1481136067118663);
    }
    else if(time <= 201){
        intercept = 1.41734092613914;
        slope = 0.1530024332850093 - 1.41734092613914;
        return intercept + slope * (x - 1.41734092613914);
    }
    else if(time <= 202){
        intercept = 0.1530024332850093;
        slope = 0.12554065628878452 - 0.1530024332850093;
        return intercept + slope * (x - 0.1530024332850093);
    }
    else if(time <= 203){
        intercept = 0.12554065628878452;
        slope = 0.2836614389581098 - 0.12554065628878452;
        return intercept + slope * (x - 0.12554065628878452);
    }
    else if(time <= 204){
        intercept = 0.2836614389581098;
        slope = -1.5401646113821814 - 0.2836614389581098;
        return intercept + slope * (x - 0.2836614389581098);
    }
    else if(time <= 205){
        intercept = -1.5401646113821814;
        slope = 0.438136970532601 - -1.5401646113821814;
        return intercept + slope * (x - -1.5401646113821814);
    }
    else if(time <= 206){
        intercept = 0.438136970532601;
        slope = 0.30991539165716125 - 0.438136970532601;
        return intercept + slope * (x - 0.438136970532601);
    }
    else if(time <= 207){
        intercept = 0.30991539165716125;
        slope = -0.6175399935723923 - 0.30991539165716125;
        return intercept + slope * (x - 0.30991539165716125);
    }
    else if(time <= 208){
        intercept = -0.6175399935723923;
        slope = -0.06214070867261055 - -0.6175399935723923;
        return intercept + slope * (x - -0.6175399935723923);
    }
    else if(time <= 209){
        intercept = -0.06214070867261055;
        slope = -0.7687967206633456 - -0.06214070867261055;
        return intercept + slope * (x - -0.06214070867261055);
    }
    else if(time <= 210){
        intercept = -0.7687967206633456;
        slope = -2.109276271301733 - -0.7687967206633456;
        return intercept + slope * (x - -0.7687967206633456);
    }
    else if(time <= 211){
        intercept = -2.109276271301733;
        slope = 0.08372742388915275 - -2.109276271301733;
        return intercept + slope * (x - -2.109276271301733);
    }
    else if(time <= 212){
        intercept = 0.08372742388915275;
        slope = 0.30516424479416493 - 0.08372742388915275;
        return intercept + slope * (x - 0.08372742388915275);
    }
    else if(time <= 213){
        intercept = 0.30516424479416493;
        slope = -1.3167791755510996 - 0.30516424479416493;
        return intercept + slope * (x - 0.30516424479416493);
    }
    else if(time <= 214){
        intercept = -1.3167791755510996;
        slope = -0.9135859675582042 - -1.3167791755510996;
        return intercept + slope * (x - -1.3167791755510996);
    }
    else if(time <= 215){
        intercept = -0.9135859675582042;
        slope = 1.7571148809962451 - -0.9135859675582042;
        return intercept + slope * (x - -0.9135859675582042);
    }
    else if(time <= 216){
        intercept = 1.7571148809962451;
        slope = -1.0990083393936194 - 1.7571148809962451;
        return intercept + slope * (x - 1.7571148809962451);
    }
    else if(time <= 217){
        intercept = -1.0990083393936194;
        slope = -0.32494990478539987 - -1.0990083393936194;
        return intercept + slope * (x - -1.0990083393936194);
    }
    else if(time <= 218){
        intercept = -0.32494990478539987;
        slope = -1.0196328368114511 - -0.32494990478539987;
        return intercept + slope * (x - -0.32494990478539987);
    }
    else if(time <= 219){
        intercept = -1.0196328368114511;
        slope = 0.2465708123879433 - -1.0196328368114511;
        return intercept + slope * (x - -1.0196328368114511);
    }
    else if(time <= 220){
        intercept = 0.2465708123879433;
        slope = -0.46639772656282835 - 0.2465708123879433;
        return intercept + slope * (x - 0.2465708123879433);
    }
    else if(time <= 221){
        intercept = -0.46639772656282835;
        slope = 0.12656440614035172 - -0.46639772656282835;
        return intercept + slope * (x - -0.46639772656282835);
    }
    else if(time <= 222){
        intercept = 0.12656440614035172;
        slope = -1.4717967118538235 - 0.12656440614035172;
        return intercept + slope * (x - 0.12656440614035172);
    }
    else if(time <= 223){
        intercept = -1.4717967118538235;
        slope = -0.4069717821301381 - -1.4717967118538235;
        return intercept + slope * (x - -1.4717967118538235);
    }
    else if(time <= 224){
        intercept = -0.4069717821301381;
        slope = -0.1770491453753017 - -0.4069717821301381;
        return intercept + slope * (x - -0.4069717821301381);
    }
    else if(time <= 225){
        intercept = -0.1770491453753017;
        slope = 0.0011967544068779631 - -0.1770491453753017;
        return intercept + slope * (x - -0.1770491453753017);
    }
    else if(time <= 226){
        intercept = 0.0011967544068779631;
        slope = 0.2505452078447057 - 0.0011967544068779631;
        return intercept + slope * (x - 0.0011967544068779631);
    }
    else if(time <= 227){
        intercept = 0.2505452078447057;
        slope = -0.5483782831142521 - 0.2505452078447057;
        return intercept + slope * (x - 0.2505452078447057);
    }
    else if(time <= 228){
        intercept = -0.5483782831142521;
        slope = 0.15242351987606179 - -0.5483782831142521;
        return intercept + slope * (x - -0.5483782831142521);
    }
    else if(time <= 229){
        intercept = 0.15242351987606179;
        slope = -1.4898658632568047 - 0.15242351987606179;
        return intercept + slope * (x - 0.15242351987606179);
    }
    else if(time <= 230){
        intercept = -1.4898658632568047;
        slope = 0.8132612789825335 - -1.4898658632568047;
        return intercept + slope * (x - -1.4898658632568047);
    }
    else if(time <= 231){
        intercept = 0.8132612789825335;
        slope = -0.08738034182194163 - 0.8132612789825335;
        return intercept + slope * (x - 0.8132612789825335);
    }
    else if(time <= 232){
        intercept = -0.08738034182194163;
        slope = -0.3154657815292941 - -0.08738034182194163;
        return intercept + slope * (x - -0.08738034182194163);
    }
    else if(time <= 233){
        intercept = -0.3154657815292941;
        slope = 0.43922972834577556 - -0.3154657815292941;
        return intercept + slope * (x - -0.3154657815292941);
    }
    else if(time <= 234){
        intercept = 0.43922972834577556;
        slope = 0.7656452910429571 - 0.43922972834577556;
        return intercept + slope * (x - 0.43922972834577556);
    }
    else if(time <= 235){
        intercept = 0.7656452910429571;
        slope = 0.22742214610749675 - 0.7656452910429571;
        return intercept + slope * (x - 0.7656452910429571);
    }
    else if(time <= 236){
        intercept = 0.22742214610749675;
        slope = 0.8810213788531082 - 0.22742214610749675;
        return intercept + slope * (x - 0.22742214610749675);
    }
    else if(time <= 237){
        intercept = 0.8810213788531082;
        slope = 0.6298575093124065 - 0.8810213788531082;
        return intercept + slope * (x - 0.8810213788531082);
    }
    else if(time <= 238){
        intercept = 0.6298575093124065;
        slope = -0.07586157062082646 - 0.6298575093124065;
        return intercept + slope * (x - 0.6298575093124065);
    }
    else if(time <= 239){
        intercept = -0.07586157062082646;
        slope = -0.636842229135946 - -0.07586157062082646;
        return intercept + slope * (x - -0.07586157062082646);
    }
    else if(time <= 240){
        intercept = -0.636842229135946;
        slope = -1.76779467745671 - -0.636842229135946;
        return intercept + slope * (x - -0.636842229135946);
    }
    else if(time <= 241){
        intercept = -1.76779467745671;
        slope = 1.2415674827758947 - -1.76779467745671;
        return intercept + slope * (x - -1.76779467745671);
    }
    else if(time <= 242){
        intercept = 1.2415674827758947;
        slope = 1.7381297937383053 - 1.2415674827758947;
        return intercept + slope * (x - 1.2415674827758947);
    }
    else if(time <= 243){
        intercept = 1.7381297937383053;
        slope = -0.2385039212993574 - 1.7381297937383053;
        return intercept + slope * (x - 1.7381297937383053);
    }
    else if(time <= 244){
        intercept = -0.2385039212993574;
        slope = 0.9653763977270344 - -0.2385039212993574;
        return intercept + slope * (x - -0.2385039212993574);
    }
    else if(time <= 245){
        intercept = 0.9653763977270344;
        slope = -0.6062347114372604 - 0.9653763977270344;
        return intercept + slope * (x - 0.9653763977270344);
    }
    else if(time <= 246){
        intercept = -0.6062347114372604;
        slope = 1.6644591982133767 - -0.6062347114372604;
        return intercept + slope * (x - -0.6062347114372604);
    }
    else if(time <= 247){
        intercept = 1.6644591982133767;
        slope = -1.8303507593136925 - 1.6644591982133767;
        return intercept + slope * (x - 1.6644591982133767);
    }
    else if(time <= 248){
        intercept = -1.8303507593136925;
        slope = 0.21020828689317536 - -1.8303507593136925;
        return intercept + slope * (x - -1.8303507593136925);
    }
    else if(time <= 249){
        intercept = 0.21020828689317536;
        slope = -0.9266072264908413 - 0.21020828689317536;
        return intercept + slope * (x - 0.21020828689317536);
    }
    else if(time <= 250){
        intercept = -0.9266072264908413;
        slope = 0.1847904401583565 - -0.9266072264908413;
        return intercept + slope * (x - -0.9266072264908413);
    }
    else if(time <= 251){
        intercept = 0.1847904401583565;
        slope = -2.155642456763308 - 0.1847904401583565;
        return intercept + slope * (x - 0.1847904401583565);
    }
    else if(time <= 252){
        intercept = -2.155642456763308;
        slope = -0.8350233705448052 - -2.155642456763308;
        return intercept + slope * (x - -2.155642456763308);
    }
    else if(time <= 253){
        intercept = -0.8350233705448052;
        slope = -1.4554171758953989 - -0.8350233705448052;
        return intercept + slope * (x - -0.8350233705448052);
    }
    else if(time <= 254){
        intercept = -1.4554171758953989;
        slope = 0.27997666693124623 - -1.4554171758953989;
        return intercept + slope * (x - -1.4554171758953989);
    }
    else if(time <= 255){
        intercept = 0.27997666693124623;
        slope = 0.5277886993990476 - 0.27997666693124623;
        return intercept + slope * (x - 0.27997666693124623);
    }
    else if(time <= 256){
        intercept = 0.5277886993990476;
        slope = -1.1271680373920938 - 0.5277886993990476;
        return intercept + slope * (x - 0.5277886993990476);
    }
    else if(time <= 257){
        intercept = -1.1271680373920938;
        slope = 1.0222449299736058 - -1.1271680373920938;
        return intercept + slope * (x - -1.1271680373920938);
    }
    else if(time <= 258){
        intercept = 1.0222449299736058;
        slope = -1.101506786849099 - 1.0222449299736058;
        return intercept + slope * (x - 1.0222449299736058);
    }
    else if(time <= 259){
        intercept = -1.101506786849099;
        slope = 0.22162043640242202 - -1.101506786849099;
        return intercept + slope * (x - -1.101506786849099);
    }
    else if(time <= 260){
        intercept = 0.22162043640242202;
        slope = -0.09602483767227543 - 0.22162043640242202;
        return intercept + slope * (x - 0.22162043640242202);
    }
    else if(time <= 261){
        intercept = -0.09602483767227543;
        slope = 0.2940848677350463 - -0.09602483767227543;
        return intercept + slope * (x - -0.09602483767227543);
    }
    else if(time <= 262){
        intercept = 0.2940848677350463;
        slope = -0.8318153895266849 - 0.2940848677350463;
        return intercept + slope * (x - 0.2940848677350463);
    }
    else if(time <= 263){
        intercept = -0.8318153895266849;
        slope = 1.309753568730014 - -0.8318153895266849;
        return intercept + slope * (x - -0.8318153895266849);
    }
    else if(time <= 264){
        intercept = 1.309753568730014;
        slope = -1.5652759681033284 - 1.309753568730014;
        return intercept + slope * (x - 1.309753568730014);
    }
    else if(time <= 265){
        intercept = -1.5652759681033284;
        slope = 0.2239087227898122 - -1.5652759681033284;
        return intercept + slope * (x - -1.5652759681033284);
    }
    else if(time <= 266){
        intercept = 0.2239087227898122;
        slope = 0.9461495354794519 - 0.2239087227898122;
        return intercept + slope * (x - 0.2239087227898122);
    }
    else if(time <= 267){
        intercept = 0.9461495354794519;
        slope = 0.859504785981958 - 0.9461495354794519;
        return intercept + slope * (x - 0.9461495354794519);
    }
    else if(time <= 268){
        intercept = 0.859504785981958;
        slope = -0.8370818465303878 - 0.859504785981958;
        return intercept + slope * (x - 0.859504785981958);
    }
    else if(time <= 269){
        intercept = -0.8370818465303878;
        slope = -0.038191684898683735 - -0.8370818465303878;
        return intercept + slope * (x - -0.8370818465303878);
    }
    else if(time <= 270){
        intercept = -0.038191684898683735;
        slope = -0.37962383030122704 - -0.038191684898683735;
        return intercept + slope * (x - -0.038191684898683735);
    }
    else if(time <= 271){
        intercept = -0.37962383030122704;
        slope = -0.4601157082193866 - -0.37962383030122704;
        return intercept + slope * (x - -0.37962383030122704);
    }
    else if(time <= 272){
        intercept = -0.4601157082193866;
        slope = -0.42262339433411616 - -0.4601157082193866;
        return intercept + slope * (x - -0.4601157082193866);
    }
    else if(time <= 273){
        intercept = -0.42262339433411616;
        slope = 0.45025103457674254 - -0.42262339433411616;
        return intercept + slope * (x - -0.42262339433411616);
    }
    else if(time <= 274){
        intercept = 0.45025103457674254;
        slope = -2.0700356259683277 - 0.45025103457674254;
        return intercept + slope * (x - 0.45025103457674254);
    }
    else if(time <= 275){
        intercept = -2.0700356259683277;
        slope = 0.6330116125850053 - -2.0700356259683277;
        return intercept + slope * (x - -2.0700356259683277);
    }
    else if(time <= 276){
        intercept = 0.6330116125850053;
        slope = 0.19529511829413523 - 0.6330116125850053;
        return intercept + slope * (x - 0.6330116125850053);
    }
    else if(time <= 277){
        intercept = 0.19529511829413523;
        slope = -0.1958712985792376 - 0.19529511829413523;
        return intercept + slope * (x - 0.19529511829413523);
    }
    else if(time <= 278){
        intercept = -0.1958712985792376;
        slope = 0.050883071088312325 - -0.1958712985792376;
        return intercept + slope * (x - -0.1958712985792376);
    }
    else if(time <= 279){
        intercept = 0.050883071088312325;
        slope = 0.2958246975844452 - 0.050883071088312325;
        return intercept + slope * (x - 0.050883071088312325);
    }
    else if(time <= 280){
        intercept = 0.2958246975844452;
        slope = 0.6024938210105495 - 0.2958246975844452;
        return intercept + slope * (x - 0.2958246975844452);
    }
    else if(time <= 281){
        intercept = 0.6024938210105495;
        slope = 0.2877577542475863 - 0.6024938210105495;
        return intercept + slope * (x - 0.6024938210105495);
    }
    else if(time <= 282){
        intercept = 0.2877577542475863;
        slope = -0.1407761875788743 - 0.2877577542475863;
        return intercept + slope * (x - 0.2877577542475863);
    }
    else if(time <= 283){
        intercept = -0.1407761875788743;
        slope = -0.512429412064946 - -0.1407761875788743;
        return intercept + slope * (x - -0.1407761875788743);
    }
    else if(time <= 284){
        intercept = -0.512429412064946;
        slope = -0.17238503259446233 - -0.512429412064946;
        return intercept + slope * (x - -0.512429412064946);
    }
    else if(time <= 285){
        intercept = -0.17238503259446233;
        slope = -1.405338891911231 - -0.17238503259446233;
        return intercept + slope * (x - -0.17238503259446233);
    }
    else if(time <= 286){
        intercept = -1.405338891911231;
        slope = -0.34836331875557 - -1.405338891911231;
        return intercept + slope * (x - -1.405338891911231);
    }
    else if(time <= 287){
        intercept = -0.34836331875557;
        slope = 0.27575101019831305 - -0.34836331875557;
        return intercept + slope * (x - -0.34836331875557);
    }
    else if(time <= 288){
        intercept = 0.27575101019831305;
        slope = -0.07611220658327898 - 0.27575101019831305;
        return intercept + slope * (x - 0.27575101019831305);
    }
    else if(time <= 289){
        intercept = -0.07611220658327898;
        slope = -0.5525132138100967 - -0.07611220658327898;
        return intercept + slope * (x - -0.07611220658327898);
    }
    else if(time <= 290){
        intercept = -0.5525132138100967;
        slope = -0.05491678651180724 - -0.5525132138100967;
        return intercept + slope * (x - -0.5525132138100967);
    }
    else if(time <= 291){
        intercept = -0.05491678651180724;
        slope = -1.6252027227792045 - -0.05491678651180724;
        return intercept + slope * (x - -0.05491678651180724);
    }
    return -1.6252027227792045;
}

real dataFunc__ran_norm1(real time){
    // DataStructure for variable ran_norm1
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.2710591898210797;
        slope = 0.8868323571826355 - 0.2710591898210797;
        return intercept + slope * (x - 0.2710591898210797);
    }
    else if(time <= 2){
        intercept = 0.8868323571826355;
        slope = 1.12131335763076 - 0.8868323571826355;
        return intercept + slope * (x - 0.8868323571826355);
    }
    else if(time <= 3){
        intercept = 1.12131335763076;
        slope = -1.462020100291549 - 1.12131335763076;
        return intercept + slope * (x - 1.12131335763076);
    }
    else if(time <= 4){
        intercept = -1.462020100291549;
        slope = 0.16494578507090632 - -1.462020100291549;
        return intercept + slope * (x - -1.462020100291549);
    }
    else if(time <= 5){
        intercept = 0.16494578507090632;
        slope = -1.0734587876767174 - 0.16494578507090632;
        return intercept + slope * (x - 0.16494578507090632);
    }
    else if(time <= 6){
        intercept = -1.0734587876767174;
        slope = 0.6958168259194363 - -1.0734587876767174;
        return intercept + slope * (x - -1.0734587876767174);
    }
    else if(time <= 7){
        intercept = 0.6958168259194363;
        slope = 1.684272609291221 - 0.6958168259194363;
        return intercept + slope * (x - 0.6958168259194363);
    }
    else if(time <= 8){
        intercept = 1.684272609291221;
        slope = -0.08368020782584171 - 1.684272609291221;
        return intercept + slope * (x - 1.684272609291221);
    }
    else if(time <= 9){
        intercept = -0.08368020782584171;
        slope = 1.0534557177339496 - -0.08368020782584171;
        return intercept + slope * (x - -0.08368020782584171);
    }
    else if(time <= 10){
        intercept = 1.0534557177339496;
        slope = -1.2543272516347035 - 1.0534557177339496;
        return intercept + slope * (x - 1.0534557177339496);
    }
    else if(time <= 11){
        intercept = -1.2543272516347035;
        slope = -0.3853747874696968 - -1.2543272516347035;
        return intercept + slope * (x - -1.2543272516347035);
    }
    else if(time <= 12){
        intercept = -0.3853747874696968;
        slope = 0.2641001801301271 - -0.3853747874696968;
        return intercept + slope * (x - -0.3853747874696968);
    }
    else if(time <= 13){
        intercept = 0.2641001801301271;
        slope = 0.8720351188241697 - 0.2641001801301271;
        return intercept + slope * (x - 0.2641001801301271);
    }
    else if(time <= 14){
        intercept = 0.8720351188241697;
        slope = -0.6724015702663644 - 0.8720351188241697;
        return intercept + slope * (x - 0.8720351188241697);
    }
    else if(time <= 15){
        intercept = -0.6724015702663644;
        slope = -0.6326372607589986 - -0.6724015702663644;
        return intercept + slope * (x - -0.6724015702663644);
    }
    else if(time <= 16){
        intercept = -0.6326372607589986;
        slope = 1.0191611336231132 - -0.6326372607589986;
        return intercept + slope * (x - -0.6326372607589986);
    }
    else if(time <= 17){
        intercept = 1.0191611336231132;
        slope = -0.31040274713306104 - 1.0191611336231132;
        return intercept + slope * (x - 1.0191611336231132);
    }
    else if(time <= 18){
        intercept = -0.31040274713306104;
        slope = 0.2538541410443076 - -0.31040274713306104;
        return intercept + slope * (x - -0.31040274713306104);
    }
    else if(time <= 19){
        intercept = 0.2538541410443076;
        slope = -0.30130860620439964 - 0.2538541410443076;
        return intercept + slope * (x - 0.2538541410443076);
    }
    else if(time <= 20){
        intercept = -0.30130860620439964;
        slope = 2.4887959161679487 - -0.30130860620439964;
        return intercept + slope * (x - -0.30130860620439964);
    }
    else if(time <= 21){
        intercept = 2.4887959161679487;
        slope = 1.7741797085313444 - 2.4887959161679487;
        return intercept + slope * (x - 2.4887959161679487);
    }
    else if(time <= 22){
        intercept = 1.7741797085313444;
        slope = -0.9942802678327212 - 1.7741797085313444;
        return intercept + slope * (x - 1.7741797085313444);
    }
    else if(time <= 23){
        intercept = -0.9942802678327212;
        slope = -0.08524452369094175 - -0.9942802678327212;
        return intercept + slope * (x - -0.9942802678327212);
    }
    else if(time <= 24){
        intercept = -0.08524452369094175;
        slope = -0.006909016436379123 - -0.08524452369094175;
        return intercept + slope * (x - -0.08524452369094175);
    }
    else if(time <= 25){
        intercept = -0.006909016436379123;
        slope = -0.8652478652816007 - -0.006909016436379123;
        return intercept + slope * (x - -0.006909016436379123);
    }
    else if(time <= 26){
        intercept = -0.8652478652816007;
        slope = -0.2752578366619179 - -0.8652478652816007;
        return intercept + slope * (x - -0.8652478652816007);
    }
    else if(time <= 27){
        intercept = -0.2752578366619179;
        slope = -0.47554791812188413 - -0.2752578366619179;
        return intercept + slope * (x - -0.2752578366619179);
    }
    else if(time <= 28){
        intercept = -0.47554791812188413;
        slope = -0.3585597402657258 - -0.47554791812188413;
        return intercept + slope * (x - -0.47554791812188413);
    }
    else if(time <= 29){
        intercept = -0.3585597402657258;
        slope = -0.3232202692683187 - -0.3585597402657258;
        return intercept + slope * (x - -0.3585597402657258);
    }
    else if(time <= 30){
        intercept = -0.3232202692683187;
        slope = 1.0768219800423438 - -0.3232202692683187;
        return intercept + slope * (x - -0.3232202692683187);
    }
    else if(time <= 31){
        intercept = 1.0768219800423438;
        slope = -0.020664912638017313 - 1.0768219800423438;
        return intercept + slope * (x - 1.0768219800423438);
    }
    else if(time <= 32){
        intercept = -0.020664912638017313;
        slope = 0.3640118111588482 - -0.020664912638017313;
        return intercept + slope * (x - -0.020664912638017313);
    }
    else if(time <= 33){
        intercept = 0.3640118111588482;
        slope = 0.5017440296871942 - 0.3640118111588482;
        return intercept + slope * (x - 0.3640118111588482);
    }
    else if(time <= 34){
        intercept = 0.5017440296871942;
        slope = -1.4006910405491648 - 0.5017440296871942;
        return intercept + slope * (x - 0.5017440296871942);
    }
    else if(time <= 35){
        intercept = -1.4006910405491648;
        slope = 0.21684238350283216 - -1.4006910405491648;
        return intercept + slope * (x - -1.4006910405491648);
    }
    else if(time <= 36){
        intercept = 0.21684238350283216;
        slope = 0.7896909650807464 - 0.21684238350283216;
        return intercept + slope * (x - 0.21684238350283216);
    }
    else if(time <= 37){
        intercept = 0.7896909650807464;
        slope = 1.192723366630163 - 0.7896909650807464;
        return intercept + slope * (x - 0.7896909650807464);
    }
    else if(time <= 38){
        intercept = 1.192723366630163;
        slope = -0.6140958827590839 - 1.192723366630163;
        return intercept + slope * (x - 1.192723366630163);
    }
    else if(time <= 39){
        intercept = -0.6140958827590839;
        slope = -1.7704761772560458 - -0.6140958827590839;
        return intercept + slope * (x - -0.6140958827590839);
    }
    else if(time <= 40){
        intercept = -1.7704761772560458;
        slope = -1.707793871056106 - -1.7704761772560458;
        return intercept + slope * (x - -1.7704761772560458);
    }
    else if(time <= 41){
        intercept = -1.707793871056106;
        slope = -0.376622590326762 - -1.707793871056106;
        return intercept + slope * (x - -1.707793871056106);
    }
    else if(time <= 42){
        intercept = -0.376622590326762;
        slope = -1.9141053862639676 - -0.376622590326762;
        return intercept + slope * (x - -0.376622590326762);
    }
    else if(time <= 43){
        intercept = -1.9141053862639676;
        slope = -0.06627059833521666 - -1.9141053862639676;
        return intercept + slope * (x - -1.9141053862639676);
    }
    else if(time <= 44){
        intercept = -0.06627059833521666;
        slope = -0.01730978918033714 - -0.06627059833521666;
        return intercept + slope * (x - -0.06627059833521666);
    }
    else if(time <= 45){
        intercept = -0.01730978918033714;
        slope = 1.5015189982410853 - -0.01730978918033714;
        return intercept + slope * (x - -0.01730978918033714);
    }
    else if(time <= 46){
        intercept = 1.5015189982410853;
        slope = -0.20909291790878598 - 1.5015189982410853;
        return intercept + slope * (x - 1.5015189982410853);
    }
    else if(time <= 47){
        intercept = -0.20909291790878598;
        slope = -0.01983825313896559 - -0.20909291790878598;
        return intercept + slope * (x - -0.20909291790878598);
    }
    else if(time <= 48){
        intercept = -0.01983825313896559;
        slope = 0.15698121848878072 - -0.01983825313896559;
        return intercept + slope * (x - -0.01983825313896559);
    }
    else if(time <= 49){
        intercept = 0.15698121848878072;
        slope = -0.6834972456750508 - 0.15698121848878072;
        return intercept + slope * (x - 0.15698121848878072);
    }
    else if(time <= 50){
        intercept = -0.6834972456750508;
        slope = 0.6071835702285885 - -0.6834972456750508;
        return intercept + slope * (x - -0.6834972456750508);
    }
    else if(time <= 51){
        intercept = 0.6071835702285885;
        slope = -1.0913600305307853 - 0.6071835702285885;
        return intercept + slope * (x - 0.6071835702285885);
    }
    else if(time <= 52){
        intercept = -1.0913600305307853;
        slope = -0.5407520999521394 - -1.0913600305307853;
        return intercept + slope * (x - -1.0913600305307853);
    }
    else if(time <= 53){
        intercept = -0.5407520999521394;
        slope = 0.8838504090857184 - -0.5407520999521394;
        return intercept + slope * (x - -0.5407520999521394);
    }
    else if(time <= 54){
        intercept = 0.8838504090857184;
        slope = 0.540331394560583 - 0.8838504090857184;
        return intercept + slope * (x - 0.8838504090857184);
    }
    else if(time <= 55){
        intercept = 0.540331394560583;
        slope = 0.38284661734511444 - 0.540331394560583;
        return intercept + slope * (x - 0.540331394560583);
    }
    else if(time <= 56){
        intercept = 0.38284661734511444;
        slope = -1.7637953003855904 - 0.38284661734511444;
        return intercept + slope * (x - 0.38284661734511444);
    }
    else if(time <= 57){
        intercept = -1.7637953003855904;
        slope = -1.6770864030180936 - -1.7637953003855904;
        return intercept + slope * (x - -1.7637953003855904);
    }
    else if(time <= 58){
        intercept = -1.6770864030180936;
        slope = 0.25578870271239773 - -1.6770864030180936;
        return intercept + slope * (x - -1.6770864030180936);
    }
    else if(time <= 59){
        intercept = 0.25578870271239773;
        slope = 0.7093674028366589 - 0.25578870271239773;
        return intercept + slope * (x - 0.25578870271239773);
    }
    else if(time <= 60){
        intercept = 0.7093674028366589;
        slope = 0.7000966143607182 - 0.7093674028366589;
        return intercept + slope * (x - 0.7093674028366589);
    }
    else if(time <= 61){
        intercept = 0.7000966143607182;
        slope = 0.1257104967798129 - 0.7000966143607182;
        return intercept + slope * (x - 0.7000966143607182);
    }
    else if(time <= 62){
        intercept = 0.1257104967798129;
        slope = -0.8382297952167683 - 0.1257104967798129;
        return intercept + slope * (x - 0.1257104967798129);
    }
    else if(time <= 63){
        intercept = -0.8382297952167683;
        slope = -0.5553868002614655 - -0.8382297952167683;
        return intercept + slope * (x - -0.8382297952167683);
    }
    else if(time <= 64){
        intercept = -0.5553868002614655;
        slope = 1.538535373785714 - -0.5553868002614655;
        return intercept + slope * (x - -0.5553868002614655);
    }
    else if(time <= 65){
        intercept = 1.538535373785714;
        slope = -0.2924717704871949 - 1.538535373785714;
        return intercept + slope * (x - 1.538535373785714);
    }
    else if(time <= 66){
        intercept = -0.2924717704871949;
        slope = 0.5048635663678269 - -0.2924717704871949;
        return intercept + slope * (x - -0.2924717704871949);
    }
    else if(time <= 67){
        intercept = 0.5048635663678269;
        slope = -0.6544466806655143 - 0.5048635663678269;
        return intercept + slope * (x - 0.5048635663678269);
    }
    else if(time <= 68){
        intercept = -0.6544466806655143;
        slope = 1.1537568380060392 - -0.6544466806655143;
        return intercept + slope * (x - -0.6544466806655143);
    }
    else if(time <= 69){
        intercept = 1.1537568380060392;
        slope = -0.30528560668522403 - 1.1537568380060392;
        return intercept + slope * (x - 1.1537568380060392);
    }
    else if(time <= 70){
        intercept = -0.30528560668522403;
        slope = 1.0601894259401918 - -0.30528560668522403;
        return intercept + slope * (x - -0.30528560668522403);
    }
    else if(time <= 71){
        intercept = 1.0601894259401918;
        slope = 0.6229087438216845 - 1.0601894259401918;
        return intercept + slope * (x - 1.0601894259401918);
    }
    else if(time <= 72){
        intercept = 0.6229087438216845;
        slope = 2.883306653807542 - 0.6229087438216845;
        return intercept + slope * (x - 0.6229087438216845);
    }
    else if(time <= 73){
        intercept = 2.883306653807542;
        slope = 0.6511572562216787 - 2.883306653807542;
        return intercept + slope * (x - 2.883306653807542);
    }
    else if(time <= 74){
        intercept = 0.6511572562216787;
        slope = 1.6150494316423807 - 0.6511572562216787;
        return intercept + slope * (x - 0.6511572562216787);
    }
    else if(time <= 75){
        intercept = 1.6150494316423807;
        slope = -0.18172055300707143 - 1.6150494316423807;
        return intercept + slope * (x - 1.6150494316423807);
    }
    else if(time <= 76){
        intercept = -0.18172055300707143;
        slope = -0.4842291764722075 - -0.18172055300707143;
        return intercept + slope * (x - -0.18172055300707143);
    }
    else if(time <= 77){
        intercept = -0.4842291764722075;
        slope = 0.29109346569342676 - -0.4842291764722075;
        return intercept + slope * (x - -0.4842291764722075);
    }
    else if(time <= 78){
        intercept = 0.29109346569342676;
        slope = 1.656974679323839 - 0.29109346569342676;
        return intercept + slope * (x - 0.29109346569342676);
    }
    else if(time <= 79){
        intercept = 1.656974679323839;
        slope = -0.45100657513096104 - 1.656974679323839;
        return intercept + slope * (x - 1.656974679323839);
    }
    else if(time <= 80){
        intercept = -0.45100657513096104;
        slope = -2.3380313965042676 - -0.45100657513096104;
        return intercept + slope * (x - -0.45100657513096104);
    }
    else if(time <= 81){
        intercept = -2.3380313965042676;
        slope = -0.9621513545564655 - -2.3380313965042676;
        return intercept + slope * (x - -2.3380313965042676);
    }
    else if(time <= 82){
        intercept = -0.9621513545564655;
        slope = 0.5245041690953453 - -0.9621513545564655;
        return intercept + slope * (x - -0.9621513545564655);
    }
    else if(time <= 83){
        intercept = 0.5245041690953453;
        slope = 0.49336330874785683 - 0.5245041690953453;
        return intercept + slope * (x - 0.5245041690953453);
    }
    else if(time <= 84){
        intercept = 0.49336330874785683;
        slope = -0.6026491502341745 - 0.49336330874785683;
        return intercept + slope * (x - 0.49336330874785683);
    }
    else if(time <= 85){
        intercept = -0.6026491502341745;
        slope = -0.7938073144956692 - -0.6026491502341745;
        return intercept + slope * (x - -0.6026491502341745);
    }
    else if(time <= 86){
        intercept = -0.7938073144956692;
        slope = 0.6943475254538387 - -0.7938073144956692;
        return intercept + slope * (x - -0.7938073144956692);
    }
    else if(time <= 87){
        intercept = 0.6943475254538387;
        slope = -0.12961261743457425 - 0.6943475254538387;
        return intercept + slope * (x - 0.6943475254538387);
    }
    else if(time <= 88){
        intercept = -0.12961261743457425;
        slope = 0.9815083981752375 - -0.12961261743457425;
        return intercept + slope * (x - -0.12961261743457425);
    }
    else if(time <= 89){
        intercept = 0.9815083981752375;
        slope = 1.7849008075215875 - 0.9815083981752375;
        return intercept + slope * (x - 0.9815083981752375);
    }
    else if(time <= 90){
        intercept = 1.7849008075215875;
        slope = 0.5821505587837968 - 1.7849008075215875;
        return intercept + slope * (x - 1.7849008075215875);
    }
    else if(time <= 91){
        intercept = 0.5821505587837968;
        slope = 0.5519801241626042 - 0.5821505587837968;
        return intercept + slope * (x - 0.5821505587837968);
    }
    else if(time <= 92){
        intercept = 0.5519801241626042;
        slope = -0.15269686721227632 - 0.5519801241626042;
        return intercept + slope * (x - 0.5519801241626042);
    }
    else if(time <= 93){
        intercept = -0.15269686721227632;
        slope = -0.4019581044924538 - -0.15269686721227632;
        return intercept + slope * (x - -0.15269686721227632);
    }
    else if(time <= 94){
        intercept = -0.4019581044924538;
        slope = -0.3647050827109344 - -0.4019581044924538;
        return intercept + slope * (x - -0.4019581044924538);
    }
    else if(time <= 95){
        intercept = -0.3647050827109344;
        slope = -0.31245232533832795 - -0.3647050827109344;
        return intercept + slope * (x - -0.3647050827109344);
    }
    else if(time <= 96){
        intercept = -0.31245232533832795;
        slope = 0.2464030065188708 - -0.31245232533832795;
        return intercept + slope * (x - -0.31245232533832795);
    }
    else if(time <= 97){
        intercept = 0.2464030065188708;
        slope = 1.1543702842726513 - 0.2464030065188708;
        return intercept + slope * (x - 0.2464030065188708);
    }
    else if(time <= 98){
        intercept = 1.1543702842726513;
        slope = -0.568547143739428 - 1.1543702842726513;
        return intercept + slope * (x - 1.1543702842726513);
    }
    else if(time <= 99){
        intercept = -0.568547143739428;
        slope = -0.21664789453432975 - -0.568547143739428;
        return intercept + slope * (x - -0.568547143739428);
    }
    else if(time <= 100){
        intercept = -0.21664789453432975;
        slope = 1.3356405886309215 - -0.21664789453432975;
        return intercept + slope * (x - -0.21664789453432975);
    }
    else if(time <= 101){
        intercept = 1.3356405886309215;
        slope = 0.2527383782372528 - 1.3356405886309215;
        return intercept + slope * (x - 1.3356405886309215);
    }
    else if(time <= 102){
        intercept = 0.2527383782372528;
        slope = 1.240990483045482 - 0.2527383782372528;
        return intercept + slope * (x - 0.2527383782372528);
    }
    else if(time <= 103){
        intercept = 1.240990483045482;
        slope = -0.6069765442929076 - 1.240990483045482;
        return intercept + slope * (x - 1.240990483045482);
    }
    else if(time <= 104){
        intercept = -0.6069765442929076;
        slope = 0.2207919798522814 - -0.6069765442929076;
        return intercept + slope * (x - -0.6069765442929076);
    }
    else if(time <= 105){
        intercept = 0.2207919798522814;
        slope = 0.5605532225901444 - 0.2207919798522814;
        return intercept + slope * (x - 0.2207919798522814);
    }
    else if(time <= 106){
        intercept = 0.5605532225901444;
        slope = -0.02966980933339308 - 0.5605532225901444;
        return intercept + slope * (x - 0.5605532225901444);
    }
    else if(time <= 107){
        intercept = -0.02966980933339308;
        slope = -0.7280747806795805 - -0.02966980933339308;
        return intercept + slope * (x - -0.02966980933339308);
    }
    else if(time <= 108){
        intercept = -0.7280747806795805;
        slope = -1.1457662395502923 - -0.7280747806795805;
        return intercept + slope * (x - -0.7280747806795805);
    }
    else if(time <= 109){
        intercept = -1.1457662395502923;
        slope = -0.01292359113987439 - -1.1457662395502923;
        return intercept + slope * (x - -1.1457662395502923);
    }
    else if(time <= 110){
        intercept = -0.01292359113987439;
        slope = -0.16507511492670224 - -0.01292359113987439;
        return intercept + slope * (x - -0.01292359113987439);
    }
    else if(time <= 111){
        intercept = -0.16507511492670224;
        slope = -1.9312901438350525 - -0.16507511492670224;
        return intercept + slope * (x - -0.16507511492670224);
    }
    else if(time <= 112){
        intercept = -1.9312901438350525;
        slope = 0.9347720845626942 - -1.9312901438350525;
        return intercept + slope * (x - -1.9312901438350525);
    }
    else if(time <= 113){
        intercept = 0.9347720845626942;
        slope = -1.2893729306094244 - 0.9347720845626942;
        return intercept + slope * (x - 0.9347720845626942);
    }
    else if(time <= 114){
        intercept = -1.2893729306094244;
        slope = -0.9473222106736419 - -1.2893729306094244;
        return intercept + slope * (x - -1.2893729306094244);
    }
    else if(time <= 115){
        intercept = -0.9473222106736419;
        slope = 1.3544466339655141 - -0.9473222106736419;
        return intercept + slope * (x - -0.9473222106736419);
    }
    else if(time <= 116){
        intercept = 1.3544466339655141;
        slope = -1.534697484724241 - 1.3544466339655141;
        return intercept + slope * (x - 1.3544466339655141);
    }
    else if(time <= 117){
        intercept = -1.534697484724241;
        slope = 1.1778102307267981 - -1.534697484724241;
        return intercept + slope * (x - -1.534697484724241);
    }
    else if(time <= 118){
        intercept = 1.1778102307267981;
        slope = 1.277369872639953 - 1.1778102307267981;
        return intercept + slope * (x - 1.1778102307267981);
    }
    else if(time <= 119){
        intercept = 1.277369872639953;
        slope = -0.30555409184618093 - 1.277369872639953;
        return intercept + slope * (x - 1.277369872639953);
    }
    else if(time <= 120){
        intercept = -0.30555409184618093;
        slope = 0.658092549566491 - -0.30555409184618093;
        return intercept + slope * (x - -0.30555409184618093);
    }
    else if(time <= 121){
        intercept = 0.658092549566491;
        slope = -0.4721888083070822 - 0.658092549566491;
        return intercept + slope * (x - 0.658092549566491);
    }
    else if(time <= 122){
        intercept = -0.4721888083070822;
        slope = -0.10174556915386694 - -0.4721888083070822;
        return intercept + slope * (x - -0.4721888083070822);
    }
    else if(time <= 123){
        intercept = -0.10174556915386694;
        slope = -1.5245974878906832 - -0.10174556915386694;
        return intercept + slope * (x - -0.10174556915386694);
    }
    else if(time <= 124){
        intercept = -1.5245974878906832;
        slope = -0.8008137077685893 - -1.5245974878906832;
        return intercept + slope * (x - -1.5245974878906832);
    }
    else if(time <= 125){
        intercept = -0.8008137077685893;
        slope = -0.7925979248072349 - -0.8008137077685893;
        return intercept + slope * (x - -0.8008137077685893);
    }
    else if(time <= 126){
        intercept = -0.7925979248072349;
        slope = 0.5343969663162575 - -0.7925979248072349;
        return intercept + slope * (x - -0.7925979248072349);
    }
    else if(time <= 127){
        intercept = 0.5343969663162575;
        slope = 0.024840209554335448 - 0.5343969663162575;
        return intercept + slope * (x - 0.5343969663162575);
    }
    else if(time <= 128){
        intercept = 0.024840209554335448;
        slope = -0.8417574861476642 - 0.024840209554335448;
        return intercept + slope * (x - 0.024840209554335448);
    }
    else if(time <= 129){
        intercept = -0.8417574861476642;
        slope = 0.29768657402690474 - -0.8417574861476642;
        return intercept + slope * (x - -0.8417574861476642);
    }
    else if(time <= 130){
        intercept = 0.29768657402690474;
        slope = 0.10856551965977367 - 0.29768657402690474;
        return intercept + slope * (x - 0.29768657402690474);
    }
    else if(time <= 131){
        intercept = 0.10856551965977367;
        slope = 0.048326921715802475 - 0.10856551965977367;
        return intercept + slope * (x - 0.10856551965977367);
    }
    else if(time <= 132){
        intercept = 0.048326921715802475;
        slope = -0.3556161759757528 - 0.048326921715802475;
        return intercept + slope * (x - 0.048326921715802475);
    }
    else if(time <= 133){
        intercept = -0.3556161759757528;
        slope = -1.6225404159769936 - -0.3556161759757528;
        return intercept + slope * (x - -0.3556161759757528);
    }
    else if(time <= 134){
        intercept = -1.6225404159769936;
        slope = -0.4357971324151647 - -1.6225404159769936;
        return intercept + slope * (x - -1.6225404159769936);
    }
    else if(time <= 135){
        intercept = -0.4357971324151647;
        slope = -0.0002685337572222379 - -0.4357971324151647;
        return intercept + slope * (x - -0.4357971324151647);
    }
    else if(time <= 136){
        intercept = -0.0002685337572222379;
        slope = -0.25709954771507915 - -0.0002685337572222379;
        return intercept + slope * (x - -0.0002685337572222379);
    }
    else if(time <= 137){
        intercept = -0.25709954771507915;
        slope = 0.110813324062953 - -0.25709954771507915;
        return intercept + slope * (x - -0.25709954771507915);
    }
    else if(time <= 138){
        intercept = 0.110813324062953;
        slope = 0.9648944607957244 - 0.110813324062953;
        return intercept + slope * (x - 0.110813324062953);
    }
    else if(time <= 139){
        intercept = 0.9648944607957244;
        slope = 0.348944640159993 - 0.9648944607957244;
        return intercept + slope * (x - 0.9648944607957244);
    }
    else if(time <= 140){
        intercept = 0.348944640159993;
        slope = 0.3097857488795135 - 0.348944640159993;
        return intercept + slope * (x - 0.348944640159993);
    }
    else if(time <= 141){
        intercept = 0.3097857488795135;
        slope = -0.6200255075407283 - 0.3097857488795135;
        return intercept + slope * (x - 0.3097857488795135);
    }
    else if(time <= 142){
        intercept = -0.6200255075407283;
        slope = 1.2314385711247184 - -0.6200255075407283;
        return intercept + slope * (x - -0.6200255075407283);
    }
    else if(time <= 143){
        intercept = 1.2314385711247184;
        slope = 0.0849281737763634 - 1.2314385711247184;
        return intercept + slope * (x - 1.2314385711247184);
    }
    else if(time <= 144){
        intercept = 0.0849281737763634;
        slope = -0.8352806580000401 - 0.0849281737763634;
        return intercept + slope * (x - 0.0849281737763634);
    }
    else if(time <= 145){
        intercept = -0.8352806580000401;
        slope = -0.8498593053380012 - -0.8352806580000401;
        return intercept + slope * (x - -0.8352806580000401);
    }
    else if(time <= 146){
        intercept = -0.8498593053380012;
        slope = -0.42613325058923895 - -0.8498593053380012;
        return intercept + slope * (x - -0.8498593053380012);
    }
    else if(time <= 147){
        intercept = -0.42613325058923895;
        slope = -0.09785984324688912 - -0.42613325058923895;
        return intercept + slope * (x - -0.42613325058923895);
    }
    else if(time <= 148){
        intercept = -0.09785984324688912;
        slope = -1.4587435381656906 - -0.09785984324688912;
        return intercept + slope * (x - -0.09785984324688912);
    }
    else if(time <= 149){
        intercept = -1.4587435381656906;
        slope = 1.0409523619045549 - -1.4587435381656906;
        return intercept + slope * (x - -1.4587435381656906);
    }
    else if(time <= 150){
        intercept = 1.0409523619045549;
        slope = 0.5062019887066146 - 1.0409523619045549;
        return intercept + slope * (x - 1.0409523619045549);
    }
    else if(time <= 151){
        intercept = 0.5062019887066146;
        slope = -1.4874436202096644 - 0.5062019887066146;
        return intercept + slope * (x - 0.5062019887066146);
    }
    else if(time <= 152){
        intercept = -1.4874436202096644;
        slope = -0.523246685007154 - -1.4874436202096644;
        return intercept + slope * (x - -1.4874436202096644);
    }
    else if(time <= 153){
        intercept = -0.523246685007154;
        slope = -0.955384273518814 - -0.523246685007154;
        return intercept + slope * (x - -0.523246685007154);
    }
    else if(time <= 154){
        intercept = -0.955384273518814;
        slope = 0.4562184620397607 - -0.955384273518814;
        return intercept + slope * (x - -0.955384273518814);
    }
    else if(time <= 155){
        intercept = 0.4562184620397607;
        slope = 0.04800733468793682 - 0.4562184620397607;
        return intercept + slope * (x - 0.4562184620397607);
    }
    else if(time <= 156){
        intercept = 0.04800733468793682;
        slope = -0.5147748448621832 - 0.04800733468793682;
        return intercept + slope * (x - 0.04800733468793682);
    }
    else if(time <= 157){
        intercept = -0.5147748448621832;
        slope = 0.6322148625321561 - -0.5147748448621832;
        return intercept + slope * (x - -0.5147748448621832);
    }
    else if(time <= 158){
        intercept = 0.6322148625321561;
        slope = 0.4199319304148051 - 0.6322148625321561;
        return intercept + slope * (x - 0.6322148625321561);
    }
    else if(time <= 159){
        intercept = 0.4199319304148051;
        slope = 0.4797880433258038 - 0.4199319304148051;
        return intercept + slope * (x - 0.4199319304148051);
    }
    else if(time <= 160){
        intercept = 0.4797880433258038;
        slope = -0.07452609443209324 - 0.4797880433258038;
        return intercept + slope * (x - 0.4797880433258038);
    }
    else if(time <= 161){
        intercept = -0.07452609443209324;
        slope = 0.7965331395283038 - -0.07452609443209324;
        return intercept + slope * (x - -0.07452609443209324);
    }
    else if(time <= 162){
        intercept = 0.7965331395283038;
        slope = 0.20868776077802284 - 0.7965331395283038;
        return intercept + slope * (x - 0.7965331395283038);
    }
    else if(time <= 163){
        intercept = 0.20868776077802284;
        slope = 0.16249392358318598 - 0.20868776077802284;
        return intercept + slope * (x - 0.20868776077802284);
    }
    else if(time <= 164){
        intercept = 0.16249392358318598;
        slope = 1.302919750231291 - 0.16249392358318598;
        return intercept + slope * (x - 0.16249392358318598);
    }
    else if(time <= 165){
        intercept = 1.302919750231291;
        slope = -1.4768500079745024 - 1.302919750231291;
        return intercept + slope * (x - 1.302919750231291);
    }
    else if(time <= 166){
        intercept = -1.4768500079745024;
        slope = -1.2387491801977775 - -1.4768500079745024;
        return intercept + slope * (x - -1.4768500079745024);
    }
    else if(time <= 167){
        intercept = -1.2387491801977775;
        slope = -1.349197971059153 - -1.2387491801977775;
        return intercept + slope * (x - -1.2387491801977775);
    }
    else if(time <= 168){
        intercept = -1.349197971059153;
        slope = -0.7234815592096959 - -1.349197971059153;
        return intercept + slope * (x - -1.349197971059153);
    }
    else if(time <= 169){
        intercept = -0.7234815592096959;
        slope = -0.8125052692407337 - -0.7234815592096959;
        return intercept + slope * (x - -0.7234815592096959);
    }
    else if(time <= 170){
        intercept = -0.8125052692407337;
        slope = 1.001962042138471 - -0.8125052692407337;
        return intercept + slope * (x - -0.8125052692407337);
    }
    else if(time <= 171){
        intercept = 1.001962042138471;
        slope = -0.8887408906428832 - 1.001962042138471;
        return intercept + slope * (x - 1.001962042138471);
    }
    else if(time <= 172){
        intercept = -0.8887408906428832;
        slope = -0.8149066463319333 - -0.8887408906428832;
        return intercept + slope * (x - -0.8887408906428832);
    }
    else if(time <= 173){
        intercept = -0.8149066463319333;
        slope = 1.236300595172038 - -0.8149066463319333;
        return intercept + slope * (x - -0.8149066463319333);
    }
    else if(time <= 174){
        intercept = 1.236300595172038;
        slope = 1.2204491183029351 - 1.236300595172038;
        return intercept + slope * (x - 1.236300595172038);
    }
    else if(time <= 175){
        intercept = 1.2204491183029351;
        slope = -0.5345839399061011 - 1.2204491183029351;
        return intercept + slope * (x - 1.2204491183029351);
    }
    else if(time <= 176){
        intercept = -0.5345839399061011;
        slope = 2.3116139829342246 - -0.5345839399061011;
        return intercept + slope * (x - -0.5345839399061011);
    }
    else if(time <= 177){
        intercept = 2.3116139829342246;
        slope = 2.0424918541874466 - 2.3116139829342246;
        return intercept + slope * (x - 2.3116139829342246);
    }
    else if(time <= 178){
        intercept = 2.0424918541874466;
        slope = -0.161771466509562 - 2.0424918541874466;
        return intercept + slope * (x - 2.0424918541874466);
    }
    else if(time <= 179){
        intercept = -0.161771466509562;
        slope = -0.46025536669365563 - -0.161771466509562;
        return intercept + slope * (x - -0.161771466509562);
    }
    else if(time <= 180){
        intercept = -0.46025536669365563;
        slope = -0.5375258092341377 - -0.46025536669365563;
        return intercept + slope * (x - -0.46025536669365563);
    }
    else if(time <= 181){
        intercept = -0.5375258092341377;
        slope = -1.6070729996529127 - -0.5375258092341377;
        return intercept + slope * (x - -0.5375258092341377);
    }
    else if(time <= 182){
        intercept = -1.6070729996529127;
        slope = 0.5758079281928774 - -1.6070729996529127;
        return intercept + slope * (x - -1.6070729996529127);
    }
    else if(time <= 183){
        intercept = 0.5758079281928774;
        slope = -0.4401084352249566 - 0.5758079281928774;
        return intercept + slope * (x - 0.5758079281928774);
    }
    else if(time <= 184){
        intercept = -0.4401084352249566;
        slope = -1.277314836872791 - -0.4401084352249566;
        return intercept + slope * (x - -0.4401084352249566);
    }
    else if(time <= 185){
        intercept = -1.277314836872791;
        slope = -0.4656352435375786 - -1.277314836872791;
        return intercept + slope * (x - -1.277314836872791);
    }
    else if(time <= 186){
        intercept = -0.4656352435375786;
        slope = 1.2644372550479637 - -0.4656352435375786;
        return intercept + slope * (x - -0.4656352435375786);
    }
    else if(time <= 187){
        intercept = 1.2644372550479637;
        slope = 0.43987223277430865 - 1.2644372550479637;
        return intercept + slope * (x - 1.2644372550479637);
    }
    else if(time <= 188){
        intercept = 0.43987223277430865;
        slope = 1.1157203489095375 - 0.43987223277430865;
        return intercept + slope * (x - 0.43987223277430865);
    }
    else if(time <= 189){
        intercept = 1.1157203489095375;
        slope = 1.3114939265390044 - 1.1157203489095375;
        return intercept + slope * (x - 1.1157203489095375);
    }
    else if(time <= 190){
        intercept = 1.3114939265390044;
        slope = 0.5097507640204988 - 1.3114939265390044;
        return intercept + slope * (x - 1.3114939265390044);
    }
    else if(time <= 191){
        intercept = 0.5097507640204988;
        slope = 0.2959565165127514 - 0.5097507640204988;
        return intercept + slope * (x - 0.5097507640204988);
    }
    else if(time <= 192){
        intercept = 0.2959565165127514;
        slope = -0.47563320231411244 - 0.2959565165127514;
        return intercept + slope * (x - 0.2959565165127514);
    }
    else if(time <= 193){
        intercept = -0.47563320231411244;
        slope = 0.4845763816690402 - -0.47563320231411244;
        return intercept + slope * (x - -0.47563320231411244);
    }
    else if(time <= 194){
        intercept = 0.4845763816690402;
        slope = 1.1706342548960764 - 0.4845763816690402;
        return intercept + slope * (x - 0.4845763816690402);
    }
    else if(time <= 195){
        intercept = 1.1706342548960764;
        slope = -0.739151207234853 - 1.1706342548960764;
        return intercept + slope * (x - 1.1706342548960764);
    }
    else if(time <= 196){
        intercept = -0.739151207234853;
        slope = -0.6870563956036291 - -0.739151207234853;
        return intercept + slope * (x - -0.739151207234853);
    }
    else if(time <= 197){
        intercept = -0.6870563956036291;
        slope = 0.8801339174835557 - -0.6870563956036291;
        return intercept + slope * (x - -0.6870563956036291);
    }
    else if(time <= 198){
        intercept = 0.8801339174835557;
        slope = 0.12836520305330543 - 0.8801339174835557;
        return intercept + slope * (x - 0.8801339174835557);
    }
    else if(time <= 199){
        intercept = 0.12836520305330543;
        slope = -0.8555564422739302 - 0.12836520305330543;
        return intercept + slope * (x - 0.12836520305330543);
    }
    else if(time <= 200){
        intercept = -0.8555564422739302;
        slope = -1.512989356060461 - -0.8555564422739302;
        return intercept + slope * (x - -0.8555564422739302);
    }
    else if(time <= 201){
        intercept = -1.512989356060461;
        slope = 0.4836089779568476 - -1.512989356060461;
        return intercept + slope * (x - -1.512989356060461);
    }
    else if(time <= 202){
        intercept = 0.4836089779568476;
        slope = -0.4728655706152763 - 0.4836089779568476;
        return intercept + slope * (x - 0.4836089779568476);
    }
    else if(time <= 203){
        intercept = -0.4728655706152763;
        slope = 1.5879948704602314 - -0.4728655706152763;
        return intercept + slope * (x - -0.4728655706152763);
    }
    else if(time <= 204){
        intercept = 1.5879948704602314;
        slope = 0.14301919229370932 - 1.5879948704602314;
        return intercept + slope * (x - 1.5879948704602314);
    }
    else if(time <= 205){
        intercept = 0.14301919229370932;
        slope = 3.131728960896093 - 0.14301919229370932;
        return intercept + slope * (x - 0.14301919229370932);
    }
    else if(time <= 206){
        intercept = 3.131728960896093;
        slope = -0.5923036741700684 - 3.131728960896093;
        return intercept + slope * (x - 3.131728960896093);
    }
    else if(time <= 207){
        intercept = -0.5923036741700684;
        slope = -0.7172503499547804 - -0.5923036741700684;
        return intercept + slope * (x - -0.5923036741700684);
    }
    else if(time <= 208){
        intercept = -0.7172503499547804;
        slope = 0.690570207266421 - -0.7172503499547804;
        return intercept + slope * (x - -0.7172503499547804);
    }
    else if(time <= 209){
        intercept = 0.690570207266421;
        slope = -0.480603726614245 - 0.690570207266421;
        return intercept + slope * (x - 0.690570207266421);
    }
    else if(time <= 210){
        intercept = -0.480603726614245;
        slope = -0.06883864977110576 - -0.480603726614245;
        return intercept + slope * (x - -0.480603726614245);
    }
    else if(time <= 211){
        intercept = -0.06883864977110576;
        slope = -0.3049704760480914 - -0.06883864977110576;
        return intercept + slope * (x - -0.06883864977110576);
    }
    else if(time <= 212){
        intercept = -0.3049704760480914;
        slope = -0.26395135231333416 - -0.3049704760480914;
        return intercept + slope * (x - -0.3049704760480914);
    }
    else if(time <= 213){
        intercept = -0.26395135231333416;
        slope = -0.8169792938854826 - -0.26395135231333416;
        return intercept + slope * (x - -0.26395135231333416);
    }
    else if(time <= 214){
        intercept = -0.8169792938854826;
        slope = 0.43511527422839785 - -0.8169792938854826;
        return intercept + slope * (x - -0.8169792938854826);
    }
    else if(time <= 215){
        intercept = 0.43511527422839785;
        slope = -0.9041002618834946 - 0.43511527422839785;
        return intercept + slope * (x - 0.43511527422839785);
    }
    else if(time <= 216){
        intercept = -0.9041002618834946;
        slope = -0.01539567926425343 - -0.9041002618834946;
        return intercept + slope * (x - -0.9041002618834946);
    }
    else if(time <= 217){
        intercept = -0.01539567926425343;
        slope = 0.21260498929337804 - -0.01539567926425343;
        return intercept + slope * (x - -0.01539567926425343);
    }
    else if(time <= 218){
        intercept = 0.21260498929337804;
        slope = -0.12851313222125738 - 0.21260498929337804;
        return intercept + slope * (x - 0.21260498929337804);
    }
    else if(time <= 219){
        intercept = -0.12851313222125738;
        slope = -0.45190530173933036 - -0.12851313222125738;
        return intercept + slope * (x - -0.12851313222125738);
    }
    else if(time <= 220){
        intercept = -0.45190530173933036;
        slope = -1.291520230220698 - -0.45190530173933036;
        return intercept + slope * (x - -0.45190530173933036);
    }
    else if(time <= 221){
        intercept = -1.291520230220698;
        slope = 0.1909885348119547 - -1.291520230220698;
        return intercept + slope * (x - -1.291520230220698);
    }
    else if(time <= 222){
        intercept = 0.1909885348119547;
        slope = -0.6608310755469942 - 0.1909885348119547;
        return intercept + slope * (x - 0.1909885348119547);
    }
    else if(time <= 223){
        intercept = -0.6608310755469942;
        slope = -0.4096727705479995 - -0.6608310755469942;
        return intercept + slope * (x - -0.6608310755469942);
    }
    else if(time <= 224){
        intercept = -0.4096727705479995;
        slope = -0.041535338772741646 - -0.4096727705479995;
        return intercept + slope * (x - -0.4096727705479995);
    }
    else if(time <= 225){
        intercept = -0.041535338772741646;
        slope = 0.8079660915860923 - -0.041535338772741646;
        return intercept + slope * (x - -0.041535338772741646);
    }
    else if(time <= 226){
        intercept = 0.8079660915860923;
        slope = 0.9532379179749838 - 0.8079660915860923;
        return intercept + slope * (x - 0.8079660915860923);
    }
    else if(time <= 227){
        intercept = 0.9532379179749838;
        slope = -0.4028646161837919 - 0.9532379179749838;
        return intercept + slope * (x - 0.9532379179749838);
    }
    else if(time <= 228){
        intercept = -0.4028646161837919;
        slope = 0.17765992137677483 - -0.4028646161837919;
        return intercept + slope * (x - -0.4028646161837919);
    }
    else if(time <= 229){
        intercept = 0.17765992137677483;
        slope = -1.8014385774399875 - 0.17765992137677483;
        return intercept + slope * (x - 0.17765992137677483);
    }
    else if(time <= 230){
        intercept = -1.8014385774399875;
        slope = 0.4304300179767588 - -1.8014385774399875;
        return intercept + slope * (x - -1.8014385774399875);
    }
    else if(time <= 231){
        intercept = 0.4304300179767588;
        slope = 0.4264870108908126 - 0.4304300179767588;
        return intercept + slope * (x - 0.4304300179767588);
    }
    else if(time <= 232){
        intercept = 0.4264870108908126;
        slope = 2.5709667103856786 - 0.4264870108908126;
        return intercept + slope * (x - 0.4264870108908126);
    }
    else if(time <= 233){
        intercept = 2.5709667103856786;
        slope = 0.2182834743468757 - 2.5709667103856786;
        return intercept + slope * (x - 2.5709667103856786);
    }
    else if(time <= 234){
        intercept = 0.2182834743468757;
        slope = 0.1516737032345924 - 0.2182834743468757;
        return intercept + slope * (x - 0.2182834743468757);
    }
    else if(time <= 235){
        intercept = 0.1516737032345924;
        slope = 1.9481368281619278 - 0.1516737032345924;
        return intercept + slope * (x - 0.1516737032345924);
    }
    else if(time <= 236){
        intercept = 1.9481368281619278;
        slope = -0.37415461398171057 - 1.9481368281619278;
        return intercept + slope * (x - 1.9481368281619278);
    }
    else if(time <= 237){
        intercept = -0.37415461398171057;
        slope = -0.8962293803321286 - -0.37415461398171057;
        return intercept + slope * (x - -0.37415461398171057);
    }
    else if(time <= 238){
        intercept = -0.8962293803321286;
        slope = -0.11730102976673584 - -0.8962293803321286;
        return intercept + slope * (x - -0.8962293803321286);
    }
    else if(time <= 239){
        intercept = -0.11730102976673584;
        slope = -0.8287589147307688 - -0.11730102976673584;
        return intercept + slope * (x - -0.11730102976673584);
    }
    else if(time <= 240){
        intercept = -0.8287589147307688;
        slope = -1.695720421376959 - -0.8287589147307688;
        return intercept + slope * (x - -0.8287589147307688);
    }
    else if(time <= 241){
        intercept = -1.695720421376959;
        slope = -0.17439434338803106 - -1.695720421376959;
        return intercept + slope * (x - -1.695720421376959);
    }
    else if(time <= 242){
        intercept = -0.17439434338803106;
        slope = -0.853402606228118 - -0.17439434338803106;
        return intercept + slope * (x - -0.17439434338803106);
    }
    else if(time <= 243){
        intercept = -0.853402606228118;
        slope = 2.302700823622062 - -0.853402606228118;
        return intercept + slope * (x - -0.853402606228118);
    }
    else if(time <= 244){
        intercept = 2.302700823622062;
        slope = 1.011887562687 - 2.302700823622062;
        return intercept + slope * (x - 2.302700823622062);
    }
    else if(time <= 245){
        intercept = 1.011887562687;
        slope = 1.364940448017958 - 1.011887562687;
        return intercept + slope * (x - 1.011887562687);
    }
    else if(time <= 246){
        intercept = 1.364940448017958;
        slope = -0.8675069638279846 - 1.364940448017958;
        return intercept + slope * (x - 1.364940448017958);
    }
    else if(time <= 247){
        intercept = -0.8675069638279846;
        slope = 1.4095919832761021 - -0.8675069638279846;
        return intercept + slope * (x - -0.8675069638279846);
    }
    else if(time <= 248){
        intercept = 1.4095919832761021;
        slope = 0.7761732418229009 - 1.4095919832761021;
        return intercept + slope * (x - 1.4095919832761021);
    }
    else if(time <= 249){
        intercept = 0.7761732418229009;
        slope = 0.08235495559622125 - 0.7761732418229009;
        return intercept + slope * (x - 0.7761732418229009);
    }
    else if(time <= 250){
        intercept = 0.08235495559622125;
        slope = -2.2682772439501924 - 0.08235495559622125;
        return intercept + slope * (x - 0.08235495559622125);
    }
    else if(time <= 251){
        intercept = -2.2682772439501924;
        slope = -0.752585092873585 - -2.2682772439501924;
        return intercept + slope * (x - -2.2682772439501924);
    }
    else if(time <= 252){
        intercept = -0.752585092873585;
        slope = 0.15964894905851806 - -0.752585092873585;
        return intercept + slope * (x - -0.752585092873585);
    }
    else if(time <= 253){
        intercept = 0.15964894905851806;
        slope = 0.23030253172987686 - 0.15964894905851806;
        return intercept + slope * (x - 0.15964894905851806);
    }
    else if(time <= 254){
        intercept = 0.23030253172987686;
        slope = 1.8768771078213766 - 0.23030253172987686;
        return intercept + slope * (x - 0.23030253172987686);
    }
    else if(time <= 255){
        intercept = 1.8768771078213766;
        slope = -0.10966348583158933 - 1.8768771078213766;
        return intercept + slope * (x - 1.8768771078213766);
    }
    else if(time <= 256){
        intercept = -0.10966348583158933;
        slope = 0.7618750108624689 - -0.10966348583158933;
        return intercept + slope * (x - -0.10966348583158933);
    }
    else if(time <= 257){
        intercept = 0.7618750108624689;
        slope = 1.5842532778228071 - 0.7618750108624689;
        return intercept + slope * (x - 0.7618750108624689);
    }
    else if(time <= 258){
        intercept = 1.5842532778228071;
        slope = -0.3234990098771451 - 1.5842532778228071;
        return intercept + slope * (x - 1.5842532778228071);
    }
    else if(time <= 259){
        intercept = -0.3234990098771451;
        slope = 1.5188935134392243 - -0.3234990098771451;
        return intercept + slope * (x - -0.3234990098771451);
    }
    else if(time <= 260){
        intercept = 1.5188935134392243;
        slope = 0.611545512361067 - 1.5188935134392243;
        return intercept + slope * (x - 1.5188935134392243);
    }
    else if(time <= 261){
        intercept = 0.611545512361067;
        slope = -1.5932364112008415 - 0.611545512361067;
        return intercept + slope * (x - 0.611545512361067);
    }
    else if(time <= 262){
        intercept = -1.5932364112008415;
        slope = -0.5451496199696984 - -1.5932364112008415;
        return intercept + slope * (x - -1.5932364112008415);
    }
    else if(time <= 263){
        intercept = -0.5451496199696984;
        slope = -0.7845476313180442 - -0.5451496199696984;
        return intercept + slope * (x - -0.5451496199696984);
    }
    else if(time <= 264){
        intercept = -0.7845476313180442;
        slope = 1.2485056862109563 - -0.7845476313180442;
        return intercept + slope * (x - -0.7845476313180442);
    }
    else if(time <= 265){
        intercept = 1.2485056862109563;
        slope = 0.5067138304800775 - 1.2485056862109563;
        return intercept + slope * (x - 1.2485056862109563);
    }
    else if(time <= 266){
        intercept = 0.5067138304800775;
        slope = -0.03780589015143829 - 0.5067138304800775;
        return intercept + slope * (x - 0.5067138304800775);
    }
    else if(time <= 267){
        intercept = -0.03780589015143829;
        slope = -1.6808846424311015 - -0.03780589015143829;
        return intercept + slope * (x - -0.03780589015143829);
    }
    else if(time <= 268){
        intercept = -1.6808846424311015;
        slope = 0.46270585089967203 - -1.6808846424311015;
        return intercept + slope * (x - -1.6808846424311015);
    }
    else if(time <= 269){
        intercept = 0.46270585089967203;
        slope = -0.7790310022470599 - 0.46270585089967203;
        return intercept + slope * (x - 0.46270585089967203);
    }
    else if(time <= 270){
        intercept = -0.7790310022470599;
        slope = -0.024353291214396874 - -0.7790310022470599;
        return intercept + slope * (x - -0.7790310022470599);
    }
    else if(time <= 271){
        intercept = -0.024353291214396874;
        slope = -0.3989749455905595 - -0.024353291214396874;
        return intercept + slope * (x - -0.024353291214396874);
    }
    else if(time <= 272){
        intercept = -0.3989749455905595;
        slope = -0.1993943331190801 - -0.3989749455905595;
        return intercept + slope * (x - -0.3989749455905595);
    }
    else if(time <= 273){
        intercept = -0.1993943331190801;
        slope = -0.04002847176313586 - -0.1993943331190801;
        return intercept + slope * (x - -0.1993943331190801);
    }
    else if(time <= 274){
        intercept = -0.04002847176313586;
        slope = -0.6695091113065904 - -0.04002847176313586;
        return intercept + slope * (x - -0.04002847176313586);
    }
    else if(time <= 275){
        intercept = -0.6695091113065904;
        slope = 0.7541707858377688 - -0.6695091113065904;
        return intercept + slope * (x - -0.6695091113065904);
    }
    else if(time <= 276){
        intercept = 0.7541707858377688;
        slope = -0.03014934955526934 - 0.7541707858377688;
        return intercept + slope * (x - 0.7541707858377688);
    }
    else if(time <= 277){
        intercept = -0.03014934955526934;
        slope = 1.7238826907349831 - -0.03014934955526934;
        return intercept + slope * (x - -0.03014934955526934);
    }
    else if(time <= 278){
        intercept = 1.7238826907349831;
        slope = -0.2801226457577196 - 1.7238826907349831;
        return intercept + slope * (x - 1.7238826907349831);
    }
    else if(time <= 279){
        intercept = -0.2801226457577196;
        slope = 0.5093240148096015 - -0.2801226457577196;
        return intercept + slope * (x - -0.2801226457577196);
    }
    else if(time <= 280){
        intercept = 0.5093240148096015;
        slope = 0.6849541035093817 - 0.5093240148096015;
        return intercept + slope * (x - 0.5093240148096015);
    }
    else if(time <= 281){
        intercept = 0.6849541035093817;
        slope = -0.7311365996768928 - 0.6849541035093817;
        return intercept + slope * (x - 0.6849541035093817);
    }
    else if(time <= 282){
        intercept = -0.7311365996768928;
        slope = 0.45846655469492875 - -0.7311365996768928;
        return intercept + slope * (x - -0.7311365996768928);
    }
    else if(time <= 283){
        intercept = 0.45846655469492875;
        slope = 0.07749011186062511 - 0.45846655469492875;
        return intercept + slope * (x - 0.45846655469492875);
    }
    else if(time <= 284){
        intercept = 0.07749011186062511;
        slope = 0.041622523407585627 - 0.07749011186062511;
        return intercept + slope * (x - 0.07749011186062511);
    }
    else if(time <= 285){
        intercept = 0.041622523407585627;
        slope = 0.13115103046297988 - 0.041622523407585627;
        return intercept + slope * (x - 0.041622523407585627);
    }
    else if(time <= 286){
        intercept = 0.13115103046297988;
        slope = 0.05839355358674913 - 0.13115103046297988;
        return intercept + slope * (x - 0.13115103046297988);
    }
    else if(time <= 287){
        intercept = 0.05839355358674913;
        slope = -0.5980291142643795 - 0.05839355358674913;
        return intercept + slope * (x - 0.05839355358674913);
    }
    else if(time <= 288){
        intercept = -0.5980291142643795;
        slope = -0.3418743487224584 - -0.5980291142643795;
        return intercept + slope * (x - -0.5980291142643795);
    }
    else if(time <= 289){
        intercept = -0.3418743487224584;
        slope = -0.7977715620372924 - -0.3418743487224584;
        return intercept + slope * (x - -0.3418743487224584);
    }
    else if(time <= 290){
        intercept = -0.7977715620372924;
        slope = 0.12590422298823822 - -0.7977715620372924;
        return intercept + slope * (x - -0.7977715620372924);
    }
    else if(time <= 291){
        intercept = 0.12590422298823822;
        slope = 0.6536997396627765 - 0.12590422298823822;
        return intercept + slope * (x - 0.12590422298823822);
    }
    return 0.6536997396627765;
}

real dataFunc__customer_order_rate(real time){
    // DataStructure for variable customer_order_rate
    real slope;
    real intercept;

    if(time <= 1){
        intercept = ['1992-01-01' 146376];
        slope = ['1992-02-01' 147079] - ['1992-01-01' 146376];
        return intercept + slope * (x - ['1992-01-01' 146376]);
    }
    else if(time <= 2){
        intercept = ['1992-02-01' 147079];
        slope = ['1992-03-01' 159336] - ['1992-02-01' 147079];
        return intercept + slope * (x - ['1992-02-01' 147079]);
    }
    else if(time <= 3){
        intercept = ['1992-03-01' 159336];
        slope = ['1992-04-01' 163669] - ['1992-03-01' 159336];
        return intercept + slope * (x - ['1992-03-01' 159336]);
    }
    else if(time <= 4){
        intercept = ['1992-04-01' 163669];
        slope = ['1992-05-01' 170068] - ['1992-04-01' 163669];
        return intercept + slope * (x - ['1992-04-01' 163669]);
    }
    else if(time <= 5){
        intercept = ['1992-05-01' 170068];
        slope = ['1992-06-01' 168663] - ['1992-05-01' 170068];
        return intercept + slope * (x - ['1992-05-01' 170068]);
    }
    else if(time <= 6){
        intercept = ['1992-06-01' 168663];
        slope = ['1992-07-01' 169890] - ['1992-06-01' 168663];
        return intercept + slope * (x - ['1992-06-01' 168663]);
    }
    else if(time <= 7){
        intercept = ['1992-07-01' 169890];
        slope = ['1992-08-01' 170364] - ['1992-07-01' 169890];
        return intercept + slope * (x - ['1992-07-01' 169890]);
    }
    else if(time <= 8){
        intercept = ['1992-08-01' 170364];
        slope = ['1992-09-01' 164617] - ['1992-08-01' 170364];
        return intercept + slope * (x - ['1992-08-01' 170364]);
    }
    else if(time <= 9){
        intercept = ['1992-09-01' 164617];
        slope = ['1992-10-01' 173655] - ['1992-09-01' 164617];
        return intercept + slope * (x - ['1992-09-01' 164617]);
    }
    else if(time <= 10){
        intercept = ['1992-10-01' 173655];
        slope = ['1992-11-01' 171547] - ['1992-10-01' 173655];
        return intercept + slope * (x - ['1992-10-01' 173655]);
    }
    else if(time <= 11){
        intercept = ['1992-11-01' 171547];
        slope = ['1992-12-01' 208838] - ['1992-11-01' 171547];
        return intercept + slope * (x - ['1992-11-01' 171547]);
    }
    else if(time <= 12){
        intercept = ['1992-12-01' 208838];
        slope = ['1993-01-01' 153221] - ['1992-12-01' 208838];
        return intercept + slope * (x - ['1992-12-01' 208838]);
    }
    else if(time <= 13){
        intercept = ['1993-01-01' 153221];
        slope = ['1993-02-01' 150087] - ['1993-01-01' 153221];
        return intercept + slope * (x - ['1993-01-01' 153221]);
    }
    else if(time <= 14){
        intercept = ['1993-02-01' 150087];
        slope = ['1993-03-01' 170439] - ['1993-02-01' 150087];
        return intercept + slope * (x - ['1993-02-01' 150087]);
    }
    else if(time <= 15){
        intercept = ['1993-03-01' 170439];
        slope = ['1993-04-01' 176456] - ['1993-03-01' 170439];
        return intercept + slope * (x - ['1993-03-01' 170439]);
    }
    else if(time <= 16){
        intercept = ['1993-04-01' 176456];
        slope = ['1993-05-01' 182231] - ['1993-04-01' 176456];
        return intercept + slope * (x - ['1993-04-01' 176456]);
    }
    else if(time <= 17){
        intercept = ['1993-05-01' 182231];
        slope = ['1993-06-01' 181535] - ['1993-05-01' 182231];
        return intercept + slope * (x - ['1993-05-01' 182231]);
    }
    else if(time <= 18){
        intercept = ['1993-06-01' 181535];
        slope = ['1993-07-01' 183682] - ['1993-06-01' 181535];
        return intercept + slope * (x - ['1993-06-01' 181535]);
    }
    else if(time <= 19){
        intercept = ['1993-07-01' 183682];
        slope = ['1993-08-01' 183318] - ['1993-07-01' 183682];
        return intercept + slope * (x - ['1993-07-01' 183682]);
    }
    else if(time <= 20){
        intercept = ['1993-08-01' 183318];
        slope = ['1993-09-01' 177406] - ['1993-08-01' 183318];
        return intercept + slope * (x - ['1993-08-01' 183318]);
    }
    else if(time <= 21){
        intercept = ['1993-09-01' 177406];
        slope = ['1993-10-01' 182737] - ['1993-09-01' 177406];
        return intercept + slope * (x - ['1993-09-01' 177406]);
    }
    else if(time <= 22){
        intercept = ['1993-10-01' 182737];
        slope = ['1993-11-01' 187443] - ['1993-10-01' 182737];
        return intercept + slope * (x - ['1993-10-01' 182737]);
    }
    else if(time <= 23){
        intercept = ['1993-11-01' 187443];
        slope = ['1993-12-01' 224540] - ['1993-11-01' 187443];
        return intercept + slope * (x - ['1993-11-01' 187443]);
    }
    else if(time <= 24){
        intercept = ['1993-12-01' 224540];
        slope = ['1994-01-01' 161349] - ['1993-12-01' 224540];
        return intercept + slope * (x - ['1993-12-01' 224540]);
    }
    else if(time <= 25){
        intercept = ['1994-01-01' 161349];
        slope = ['1994-02-01' 162841] - ['1994-01-01' 161349];
        return intercept + slope * (x - ['1994-01-01' 161349]);
    }
    else if(time <= 26){
        intercept = ['1994-02-01' 162841];
        slope = ['1994-03-01' 192319] - ['1994-02-01' 162841];
        return intercept + slope * (x - ['1994-02-01' 162841]);
    }
    else if(time <= 27){
        intercept = ['1994-03-01' 192319];
        slope = ['1994-04-01' 189569] - ['1994-03-01' 192319];
        return intercept + slope * (x - ['1994-03-01' 192319]);
    }
    else if(time <= 28){
        intercept = ['1994-04-01' 189569];
        slope = ['1994-05-01' 194927] - ['1994-04-01' 189569];
        return intercept + slope * (x - ['1994-04-01' 189569]);
    }
    else if(time <= 29){
        intercept = ['1994-05-01' 194927];
        slope = ['1994-06-01' 197946] - ['1994-05-01' 194927];
        return intercept + slope * (x - ['1994-05-01' 194927]);
    }
    else if(time <= 30){
        intercept = ['1994-06-01' 197946];
        slope = ['1994-07-01' 193355] - ['1994-06-01' 197946];
        return intercept + slope * (x - ['1994-06-01' 197946]);
    }
    else if(time <= 31){
        intercept = ['1994-07-01' 193355];
        slope = ['1994-08-01' 202388] - ['1994-07-01' 193355];
        return intercept + slope * (x - ['1994-07-01' 193355]);
    }
    else if(time <= 32){
        intercept = ['1994-08-01' 202388];
        slope = ['1994-09-01' 193954] - ['1994-08-01' 202388];
        return intercept + slope * (x - ['1994-08-01' 202388]);
    }
    else if(time <= 33){
        intercept = ['1994-09-01' 193954];
        slope = ['1994-10-01' 197956] - ['1994-09-01' 193954];
        return intercept + slope * (x - ['1994-09-01' 193954]);
    }
    else if(time <= 34){
        intercept = ['1994-10-01' 197956];
        slope = ['1994-11-01' 202520] - ['1994-10-01' 197956];
        return intercept + slope * (x - ['1994-10-01' 197956]);
    }
    else if(time <= 35){
        intercept = ['1994-11-01' 202520];
        slope = ['1994-12-01' 241111] - ['1994-11-01' 202520];
        return intercept + slope * (x - ['1994-11-01' 202520]);
    }
    else if(time <= 36){
        intercept = ['1994-12-01' 241111];
        slope = ['1995-01-01' 175344] - ['1994-12-01' 241111];
        return intercept + slope * (x - ['1994-12-01' 241111]);
    }
    else if(time <= 37){
        intercept = ['1995-01-01' 175344];
        slope = ['1995-02-01' 172138] - ['1995-01-01' 175344];
        return intercept + slope * (x - ['1995-01-01' 175344]);
    }
    else if(time <= 38){
        intercept = ['1995-02-01' 172138];
        slope = ['1995-03-01' 201279] - ['1995-02-01' 172138];
        return intercept + slope * (x - ['1995-02-01' 172138]);
    }
    else if(time <= 39){
        intercept = ['1995-03-01' 201279];
        slope = ['1995-04-01' 196039] - ['1995-03-01' 201279];
        return intercept + slope * (x - ['1995-03-01' 201279]);
    }
    else if(time <= 40){
        intercept = ['1995-04-01' 196039];
        slope = ['1995-05-01' 210478] - ['1995-04-01' 196039];
        return intercept + slope * (x - ['1995-04-01' 196039]);
    }
    else if(time <= 41){
        intercept = ['1995-05-01' 210478];
        slope = ['1995-06-01' 211844] - ['1995-05-01' 210478];
        return intercept + slope * (x - ['1995-05-01' 210478]);
    }
    else if(time <= 42){
        intercept = ['1995-06-01' 211844];
        slope = ['1995-07-01' 203411] - ['1995-06-01' 211844];
        return intercept + slope * (x - ['1995-06-01' 211844]);
    }
    else if(time <= 43){
        intercept = ['1995-07-01' 203411];
        slope = ['1995-08-01' 214248] - ['1995-07-01' 203411];
        return intercept + slope * (x - ['1995-07-01' 203411]);
    }
    else if(time <= 44){
        intercept = ['1995-08-01' 214248];
        slope = ['1995-09-01' 202122] - ['1995-08-01' 214248];
        return intercept + slope * (x - ['1995-08-01' 214248]);
    }
    else if(time <= 45){
        intercept = ['1995-09-01' 202122];
        slope = ['1995-10-01' 204044] - ['1995-09-01' 202122];
        return intercept + slope * (x - ['1995-09-01' 202122]);
    }
    else if(time <= 46){
        intercept = ['1995-10-01' 204044];
        slope = ['1995-11-01' 212190] - ['1995-10-01' 204044];
        return intercept + slope * (x - ['1995-10-01' 204044]);
    }
    else if(time <= 47){
        intercept = ['1995-11-01' 212190];
        slope = ['1995-12-01' 247491] - ['1995-11-01' 212190];
        return intercept + slope * (x - ['1995-11-01' 212190]);
    }
    else if(time <= 48){
        intercept = ['1995-12-01' 247491];
        slope = ['1996-01-01' 185019] - ['1995-12-01' 247491];
        return intercept + slope * (x - ['1995-12-01' 247491]);
    }
    else if(time <= 49){
        intercept = ['1996-01-01' 185019];
        slope = ['1996-02-01' 192380] - ['1996-01-01' 185019];
        return intercept + slope * (x - ['1996-01-01' 185019]);
    }
    else if(time <= 50){
        intercept = ['1996-02-01' 192380];
        slope = ['1996-03-01' 212110] - ['1996-02-01' 192380];
        return intercept + slope * (x - ['1996-02-01' 192380]);
    }
    else if(time <= 51){
        intercept = ['1996-03-01' 212110];
        slope = ['1996-04-01' 211718] - ['1996-03-01' 212110];
        return intercept + slope * (x - ['1996-03-01' 212110]);
    }
    else if(time <= 52){
        intercept = ['1996-04-01' 211718];
        slope = ['1996-05-01' 226936] - ['1996-04-01' 211718];
        return intercept + slope * (x - ['1996-04-01' 211718]);
    }
    else if(time <= 53){
        intercept = ['1996-05-01' 226936];
        slope = ['1996-06-01' 217511] - ['1996-05-01' 226936];
        return intercept + slope * (x - ['1996-05-01' 226936]);
    }
    else if(time <= 54){
        intercept = ['1996-06-01' 217511];
        slope = ['1996-07-01' 218111] - ['1996-06-01' 217511];
        return intercept + slope * (x - ['1996-06-01' 217511]);
    }
    else if(time <= 55){
        intercept = ['1996-07-01' 218111];
        slope = ['1996-08-01' 226062] - ['1996-07-01' 218111];
        return intercept + slope * (x - ['1996-07-01' 218111]);
    }
    else if(time <= 56){
        intercept = ['1996-08-01' 226062];
        slope = ['1996-09-01' 209250] - ['1996-08-01' 226062];
        return intercept + slope * (x - ['1996-08-01' 226062]);
    }
    else if(time <= 57){
        intercept = ['1996-09-01' 209250];
        slope = ['1996-10-01' 222663] - ['1996-09-01' 209250];
        return intercept + slope * (x - ['1996-09-01' 209250]);
    }
    else if(time <= 58){
        intercept = ['1996-10-01' 222663];
        slope = ['1996-11-01' 223953] - ['1996-10-01' 222663];
        return intercept + slope * (x - ['1996-10-01' 222663]);
    }
    else if(time <= 59){
        intercept = ['1996-11-01' 223953];
        slope = ['1996-12-01' 258081] - ['1996-11-01' 223953];
        return intercept + slope * (x - ['1996-11-01' 223953]);
    }
    else if(time <= 60){
        intercept = ['1996-12-01' 258081];
        slope = ['1997-01-01' 200389] - ['1996-12-01' 258081];
        return intercept + slope * (x - ['1996-12-01' 258081]);
    }
    else if(time <= 61){
        intercept = ['1997-01-01' 200389];
        slope = ['1997-02-01' 197556] - ['1997-01-01' 200389];
        return intercept + slope * (x - ['1997-01-01' 200389]);
    }
    else if(time <= 62){
        intercept = ['1997-02-01' 197556];
        slope = ['1997-03-01' 225133] - ['1997-02-01' 197556];
        return intercept + slope * (x - ['1997-02-01' 197556]);
    }
    else if(time <= 63){
        intercept = ['1997-03-01' 225133];
        slope = ['1997-04-01' 220329] - ['1997-03-01' 225133];
        return intercept + slope * (x - ['1997-03-01' 225133]);
    }
    else if(time <= 64){
        intercept = ['1997-04-01' 220329];
        slope = ['1997-05-01' 234190] - ['1997-04-01' 220329];
        return intercept + slope * (x - ['1997-04-01' 220329]);
    }
    else if(time <= 65){
        intercept = ['1997-05-01' 234190];
        slope = ['1997-06-01' 227365] - ['1997-05-01' 234190];
        return intercept + slope * (x - ['1997-05-01' 234190]);
    }
    else if(time <= 66){
        intercept = ['1997-06-01' 227365];
        slope = ['1997-07-01' 231521] - ['1997-06-01' 227365];
        return intercept + slope * (x - ['1997-06-01' 227365]);
    }
    else if(time <= 67){
        intercept = ['1997-07-01' 231521];
        slope = ['1997-08-01' 235252] - ['1997-07-01' 231521];
        return intercept + slope * (x - ['1997-07-01' 231521]);
    }
    else if(time <= 68){
        intercept = ['1997-08-01' 235252];
        slope = ['1997-09-01' 222807] - ['1997-08-01' 235252];
        return intercept + slope * (x - ['1997-08-01' 235252]);
    }
    else if(time <= 69){
        intercept = ['1997-09-01' 222807];
        slope = ['1997-10-01' 232251] - ['1997-09-01' 222807];
        return intercept + slope * (x - ['1997-09-01' 222807]);
    }
    else if(time <= 70){
        intercept = ['1997-10-01' 232251];
        slope = ['1997-11-01' 228284] - ['1997-10-01' 232251];
        return intercept + slope * (x - ['1997-10-01' 232251]);
    }
    else if(time <= 71){
        intercept = ['1997-11-01' 228284];
        slope = ['1997-12-01' 271054] - ['1997-11-01' 228284];
        return intercept + slope * (x - ['1997-11-01' 228284]);
    }
    else if(time <= 72){
        intercept = ['1997-12-01' 271054];
        slope = ['1998-01-01' 207853] - ['1997-12-01' 271054];
        return intercept + slope * (x - ['1997-12-01' 271054]);
    }
    else if(time <= 73){
        intercept = ['1998-01-01' 207853];
        slope = ['1998-02-01' 203863] - ['1998-01-01' 207853];
        return intercept + slope * (x - ['1998-01-01' 207853]);
    }
    else if(time <= 74){
        intercept = ['1998-02-01' 203863];
        slope = ['1998-03-01' 230313] - ['1998-02-01' 203863];
        return intercept + slope * (x - ['1998-02-01' 203863]);
    }
    else if(time <= 75){
        intercept = ['1998-03-01' 230313];
        slope = ['1998-04-01' 234503] - ['1998-03-01' 230313];
        return intercept + slope * (x - ['1998-03-01' 230313]);
    }
    else if(time <= 76){
        intercept = ['1998-04-01' 234503];
        slope = ['1998-05-01' 245027] - ['1998-04-01' 234503];
        return intercept + slope * (x - ['1998-04-01' 234503]);
    }
    else if(time <= 77){
        intercept = ['1998-05-01' 245027];
        slope = ['1998-06-01' 244067] - ['1998-05-01' 245027];
        return intercept + slope * (x - ['1998-05-01' 245027]);
    }
    else if(time <= 78){
        intercept = ['1998-06-01' 244067];
        slope = ['1998-07-01' 241431] - ['1998-06-01' 244067];
        return intercept + slope * (x - ['1998-06-01' 244067]);
    }
    else if(time <= 79){
        intercept = ['1998-07-01' 241431];
        slope = ['1998-08-01' 240462] - ['1998-07-01' 241431];
        return intercept + slope * (x - ['1998-07-01' 241431]);
    }
    else if(time <= 80){
        intercept = ['1998-08-01' 240462];
        slope = ['1998-09-01' 231243] - ['1998-08-01' 240462];
        return intercept + slope * (x - ['1998-08-01' 240462]);
    }
    else if(time <= 81){
        intercept = ['1998-09-01' 231243];
        slope = ['1998-10-01' 244234] - ['1998-09-01' 231243];
        return intercept + slope * (x - ['1998-09-01' 231243]);
    }
    else if(time <= 82){
        intercept = ['1998-10-01' 244234];
        slope = ['1998-11-01' 240991] - ['1998-10-01' 244234];
        return intercept + slope * (x - ['1998-10-01' 244234]);
    }
    else if(time <= 83){
        intercept = ['1998-11-01' 240991];
        slope = ['1998-12-01' 288969] - ['1998-11-01' 240991];
        return intercept + slope * (x - ['1998-11-01' 240991]);
    }
    else if(time <= 84){
        intercept = ['1998-12-01' 288969];
        slope = ['1999-01-01' 218126] - ['1998-12-01' 288969];
        return intercept + slope * (x - ['1998-12-01' 288969]);
    }
    else if(time <= 85){
        intercept = ['1999-01-01' 218126];
        slope = ['1999-02-01' 220650] - ['1999-01-01' 218126];
        return intercept + slope * (x - ['1999-01-01' 218126]);
    }
    else if(time <= 86){
        intercept = ['1999-02-01' 220650];
        slope = ['1999-03-01' 253550] - ['1999-02-01' 220650];
        return intercept + slope * (x - ['1999-02-01' 220650]);
    }
    else if(time <= 87){
        intercept = ['1999-03-01' 253550];
        slope = ['1999-04-01' 250783] - ['1999-03-01' 253550];
        return intercept + slope * (x - ['1999-03-01' 253550]);
    }
    else if(time <= 88){
        intercept = ['1999-04-01' 250783];
        slope = ['1999-05-01' 262113] - ['1999-04-01' 250783];
        return intercept + slope * (x - ['1999-04-01' 250783]);
    }
    else if(time <= 89){
        intercept = ['1999-05-01' 262113];
        slope = ['1999-06-01' 260918] - ['1999-05-01' 262113];
        return intercept + slope * (x - ['1999-05-01' 262113]);
    }
    else if(time <= 90){
        intercept = ['1999-06-01' 260918];
        slope = ['1999-07-01' 262051] - ['1999-06-01' 260918];
        return intercept + slope * (x - ['1999-06-01' 260918]);
    }
    else if(time <= 91){
        intercept = ['1999-07-01' 262051];
        slope = ['1999-08-01' 265089] - ['1999-07-01' 262051];
        return intercept + slope * (x - ['1999-07-01' 262051]);
    }
    else if(time <= 92){
        intercept = ['1999-08-01' 265089];
        slope = ['1999-09-01' 253905] - ['1999-08-01' 265089];
        return intercept + slope * (x - ['1999-08-01' 265089]);
    }
    else if(time <= 93){
        intercept = ['1999-09-01' 253905];
        slope = ['1999-10-01' 258040] - ['1999-09-01' 253905];
        return intercept + slope * (x - ['1999-09-01' 253905]);
    }
    else if(time <= 94){
        intercept = ['1999-10-01' 258040];
        slope = ['1999-11-01' 264106] - ['1999-10-01' 258040];
        return intercept + slope * (x - ['1999-10-01' 258040]);
    }
    else if(time <= 95){
        intercept = ['1999-11-01' 264106];
        slope = ['1999-12-01' 317659] - ['1999-11-01' 264106];
        return intercept + slope * (x - ['1999-11-01' 264106]);
    }
    else if(time <= 96){
        intercept = ['1999-12-01' 317659];
        slope = ['2000-01-01' 236422] - ['1999-12-01' 317659];
        return intercept + slope * (x - ['1999-12-01' 317659]);
    }
    else if(time <= 97){
        intercept = ['2000-01-01' 236422];
        slope = ['2000-02-01' 250580] - ['2000-01-01' 236422];
        return intercept + slope * (x - ['2000-01-01' 236422]);
    }
    else if(time <= 98){
        intercept = ['2000-02-01' 250580];
        slope = ['2000-03-01' 279515] - ['2000-02-01' 250580];
        return intercept + slope * (x - ['2000-02-01' 250580]);
    }
    else if(time <= 99){
        intercept = ['2000-03-01' 279515];
        slope = ['2000-04-01' 264417] - ['2000-03-01' 279515];
        return intercept + slope * (x - ['2000-03-01' 279515]);
    }
    else if(time <= 100){
        intercept = ['2000-04-01' 264417];
        slope = ['2000-05-01' 283706] - ['2000-04-01' 264417];
        return intercept + slope * (x - ['2000-04-01' 264417]);
    }
    else if(time <= 101){
        intercept = ['2000-05-01' 283706];
        slope = ['2000-06-01' 281288] - ['2000-05-01' 283706];
        return intercept + slope * (x - ['2000-05-01' 283706]);
    }
    else if(time <= 102){
        intercept = ['2000-06-01' 281288];
        slope = ['2000-07-01' 271146] - ['2000-06-01' 281288];
        return intercept + slope * (x - ['2000-06-01' 281288]);
    }
    else if(time <= 103){
        intercept = ['2000-07-01' 271146];
        slope = ['2000-08-01' 283944] - ['2000-07-01' 271146];
        return intercept + slope * (x - ['2000-07-01' 271146]);
    }
    else if(time <= 104){
        intercept = ['2000-08-01' 283944];
        slope = ['2000-09-01' 269155] - ['2000-08-01' 283944];
        return intercept + slope * (x - ['2000-08-01' 283944]);
    }
    else if(time <= 105){
        intercept = ['2000-09-01' 269155];
        slope = ['2000-10-01' 270899] - ['2000-09-01' 269155];
        return intercept + slope * (x - ['2000-09-01' 269155]);
    }
    else if(time <= 106){
        intercept = ['2000-10-01' 270899];
        slope = ['2000-11-01' 276507] - ['2000-10-01' 270899];
        return intercept + slope * (x - ['2000-10-01' 270899]);
    }
    else if(time <= 107){
        intercept = ['2000-11-01' 276507];
        slope = ['2000-12-01' 319958] - ['2000-11-01' 276507];
        return intercept + slope * (x - ['2000-11-01' 276507]);
    }
    else if(time <= 108){
        intercept = ['2000-12-01' 319958];
        slope = ['2001-01-01' 250746] - ['2000-12-01' 319958];
        return intercept + slope * (x - ['2000-12-01' 319958]);
    }
    else if(time <= 109){
        intercept = ['2001-01-01' 250746];
        slope = ['2001-02-01' 247772] - ['2001-01-01' 250746];
        return intercept + slope * (x - ['2001-01-01' 250746]);
    }
    else if(time <= 110){
        intercept = ['2001-02-01' 247772];
        slope = ['2001-03-01' 280449] - ['2001-02-01' 247772];
        return intercept + slope * (x - ['2001-02-01' 247772]);
    }
    else if(time <= 111){
        intercept = ['2001-03-01' 280449];
        slope = ['2001-04-01' 274925] - ['2001-03-01' 280449];
        return intercept + slope * (x - ['2001-03-01' 280449]);
    }
    else if(time <= 112){
        intercept = ['2001-04-01' 274925];
        slope = ['2001-05-01' 296013] - ['2001-04-01' 274925];
        return intercept + slope * (x - ['2001-04-01' 274925]);
    }
    else if(time <= 113){
        intercept = ['2001-05-01' 296013];
        slope = ['2001-06-01' 287881] - ['2001-05-01' 296013];
        return intercept + slope * (x - ['2001-05-01' 296013]);
    }
    else if(time <= 114){
        intercept = ['2001-06-01' 287881];
        slope = ['2001-07-01' 279098] - ['2001-06-01' 287881];
        return intercept + slope * (x - ['2001-06-01' 287881]);
    }
    else if(time <= 115){
        intercept = ['2001-07-01' 279098];
        slope = ['2001-08-01' 294763] - ['2001-07-01' 279098];
        return intercept + slope * (x - ['2001-07-01' 279098]);
    }
    else if(time <= 116){
        intercept = ['2001-08-01' 294763];
        slope = ['2001-09-01' 261924] - ['2001-08-01' 294763];
        return intercept + slope * (x - ['2001-08-01' 294763]);
    }
    else if(time <= 117){
        intercept = ['2001-09-01' 261924];
        slope = ['2001-10-01' 291596] - ['2001-09-01' 261924];
        return intercept + slope * (x - ['2001-09-01' 261924]);
    }
    else if(time <= 118){
        intercept = ['2001-10-01' 291596];
        slope = ['2001-11-01' 287537] - ['2001-10-01' 291596];
        return intercept + slope * (x - ['2001-10-01' 291596]);
    }
    else if(time <= 119){
        intercept = ['2001-11-01' 287537];
        slope = ['2001-12-01' 326202] - ['2001-11-01' 287537];
        return intercept + slope * (x - ['2001-11-01' 287537]);
    }
    else if(time <= 120){
        intercept = ['2001-12-01' 326202];
        slope = ['2002-01-01' 255598] - ['2001-12-01' 326202];
        return intercept + slope * (x - ['2001-12-01' 326202]);
    }
    else if(time <= 121){
        intercept = ['2002-01-01' 255598];
        slope = ['2002-02-01' 253086] - ['2002-01-01' 255598];
        return intercept + slope * (x - ['2002-01-01' 255598]);
    }
    else if(time <= 122){
        intercept = ['2002-02-01' 253086];
        slope = ['2002-03-01' 285261] - ['2002-02-01' 253086];
        return intercept + slope * (x - ['2002-02-01' 253086]);
    }
    else if(time <= 123){
        intercept = ['2002-03-01' 285261];
        slope = ['2002-04-01' 284747] - ['2002-03-01' 285261];
        return intercept + slope * (x - ['2002-03-01' 285261]);
    }
    else if(time <= 124){
        intercept = ['2002-04-01' 284747];
        slope = ['2002-05-01' 300402] - ['2002-04-01' 284747];
        return intercept + slope * (x - ['2002-04-01' 284747]);
    }
    else if(time <= 125){
        intercept = ['2002-05-01' 300402];
        slope = ['2002-06-01' 288854] - ['2002-05-01' 300402];
        return intercept + slope * (x - ['2002-05-01' 300402]);
    }
    else if(time <= 126){
        intercept = ['2002-06-01' 288854];
        slope = ['2002-07-01' 295433] - ['2002-06-01' 288854];
        return intercept + slope * (x - ['2002-06-01' 288854]);
    }
    else if(time <= 127){
        intercept = ['2002-07-01' 295433];
        slope = ['2002-08-01' 307256] - ['2002-07-01' 295433];
        return intercept + slope * (x - ['2002-07-01' 295433]);
    }
    else if(time <= 128){
        intercept = ['2002-08-01' 307256];
        slope = ['2002-09-01' 273189] - ['2002-08-01' 307256];
        return intercept + slope * (x - ['2002-08-01' 307256]);
    }
    else if(time <= 129){
        intercept = ['2002-09-01' 273189];
        slope = ['2002-10-01' 287540] - ['2002-09-01' 273189];
        return intercept + slope * (x - ['2002-09-01' 273189]);
    }
    else if(time <= 130){
        intercept = ['2002-10-01' 287540];
        slope = ['2002-11-01' 290705] - ['2002-10-01' 287540];
        return intercept + slope * (x - ['2002-10-01' 287540]);
    }
    else if(time <= 131){
        intercept = ['2002-11-01' 290705];
        slope = ['2002-12-01' 337006] - ['2002-11-01' 290705];
        return intercept + slope * (x - ['2002-11-01' 290705]);
    }
    else if(time <= 132){
        intercept = ['2002-12-01' 337006];
        slope = ['2003-01-01' 268328] - ['2002-12-01' 337006];
        return intercept + slope * (x - ['2002-12-01' 337006]);
    }
    else if(time <= 133){
        intercept = ['2003-01-01' 268328];
        slope = ['2003-02-01' 259051] - ['2003-01-01' 268328];
        return intercept + slope * (x - ['2003-01-01' 268328]);
    }
    else if(time <= 134){
        intercept = ['2003-02-01' 259051];
        slope = ['2003-03-01' 293693] - ['2003-02-01' 259051];
        return intercept + slope * (x - ['2003-02-01' 259051]);
    }
    else if(time <= 135){
        intercept = ['2003-03-01' 293693];
        slope = ['2003-04-01' 294251] - ['2003-03-01' 293693];
        return intercept + slope * (x - ['2003-03-01' 293693]);
    }
    else if(time <= 136){
        intercept = ['2003-04-01' 294251];
        slope = ['2003-05-01' 312389] - ['2003-04-01' 294251];
        return intercept + slope * (x - ['2003-04-01' 294251]);
    }
    else if(time <= 137){
        intercept = ['2003-05-01' 312389];
        slope = ['2003-06-01' 300998] - ['2003-05-01' 312389];
        return intercept + slope * (x - ['2003-05-01' 312389]);
    }
    else if(time <= 138){
        intercept = ['2003-06-01' 300998];
        slope = ['2003-07-01' 309923] - ['2003-06-01' 300998];
        return intercept + slope * (x - ['2003-06-01' 300998]);
    }
    else if(time <= 139){
        intercept = ['2003-07-01' 309923];
        slope = ['2003-08-01' 317056] - ['2003-07-01' 309923];
        return intercept + slope * (x - ['2003-07-01' 309923]);
    }
    else if(time <= 140){
        intercept = ['2003-08-01' 317056];
        slope = ['2003-09-01' 293890] - ['2003-08-01' 317056];
        return intercept + slope * (x - ['2003-08-01' 317056]);
    }
    else if(time <= 141){
        intercept = ['2003-09-01' 293890];
        slope = ['2003-10-01' 304036] - ['2003-09-01' 293890];
        return intercept + slope * (x - ['2003-09-01' 293890]);
    }
    else if(time <= 142){
        intercept = ['2003-10-01' 304036];
        slope = ['2003-11-01' 301265] - ['2003-10-01' 304036];
        return intercept + slope * (x - ['2003-10-01' 304036]);
    }
    else if(time <= 143){
        intercept = ['2003-11-01' 301265];
        slope = ['2003-12-01' 357577] - ['2003-11-01' 301265];
        return intercept + slope * (x - ['2003-11-01' 301265]);
    }
    else if(time <= 144){
        intercept = ['2003-12-01' 357577];
        slope = ['2004-01-01' 281460] - ['2003-12-01' 357577];
        return intercept + slope * (x - ['2003-12-01' 357577]);
    }
    else if(time <= 145){
        intercept = ['2004-01-01' 281460];
        slope = ['2004-02-01' 282444] - ['2004-01-01' 281460];
        return intercept + slope * (x - ['2004-01-01' 281460]);
    }
    else if(time <= 146){
        intercept = ['2004-02-01' 282444];
        slope = ['2004-03-01' 319077] - ['2004-02-01' 282444];
        return intercept + slope * (x - ['2004-02-01' 282444]);
    }
    else if(time <= 147){
        intercept = ['2004-03-01' 319077];
        slope = ['2004-04-01' 315191] - ['2004-03-01' 319077];
        return intercept + slope * (x - ['2004-03-01' 319077]);
    }
    else if(time <= 148){
        intercept = ['2004-04-01' 315191];
        slope = ['2004-05-01' 328408] - ['2004-04-01' 315191];
        return intercept + slope * (x - ['2004-04-01' 315191]);
    }
    else if(time <= 149){
        intercept = ['2004-05-01' 328408];
        slope = ['2004-06-01' 321044] - ['2004-05-01' 328408];
        return intercept + slope * (x - ['2004-05-01' 328408]);
    }
    else if(time <= 150){
        intercept = ['2004-06-01' 321044];
        slope = ['2004-07-01' 328000] - ['2004-06-01' 321044];
        return intercept + slope * (x - ['2004-06-01' 321044]);
    }
    else if(time <= 151){
        intercept = ['2004-07-01' 328000];
        slope = ['2004-08-01' 326317] - ['2004-07-01' 328000];
        return intercept + slope * (x - ['2004-07-01' 328000]);
    }
    else if(time <= 152){
        intercept = ['2004-08-01' 326317];
        slope = ['2004-09-01' 313524] - ['2004-08-01' 326317];
        return intercept + slope * (x - ['2004-08-01' 326317]);
    }
    else if(time <= 153){
        intercept = ['2004-09-01' 313524];
        slope = ['2004-10-01' 319726] - ['2004-09-01' 313524];
        return intercept + slope * (x - ['2004-09-01' 313524]);
    }
    else if(time <= 154){
        intercept = ['2004-10-01' 319726];
        slope = ['2004-11-01' 324259] - ['2004-10-01' 319726];
        return intercept + slope * (x - ['2004-10-01' 319726]);
    }
    else if(time <= 155){
        intercept = ['2004-11-01' 324259];
        slope = ['2004-12-01' 387155] - ['2004-11-01' 324259];
        return intercept + slope * (x - ['2004-11-01' 324259]);
    }
    else if(time <= 156){
        intercept = ['2004-12-01' 387155];
        slope = ['2005-01-01' 293261] - ['2004-12-01' 387155];
        return intercept + slope * (x - ['2004-12-01' 387155]);
    }
    else if(time <= 157){
        intercept = ['2005-01-01' 293261];
        slope = ['2005-02-01' 295062] - ['2005-01-01' 293261];
        return intercept + slope * (x - ['2005-01-01' 293261]);
    }
    else if(time <= 158){
        intercept = ['2005-02-01' 295062];
        slope = ['2005-03-01' 339141] - ['2005-02-01' 295062];
        return intercept + slope * (x - ['2005-02-01' 295062]);
    }
    else if(time <= 159){
        intercept = ['2005-03-01' 339141];
        slope = ['2005-04-01' 335632] - ['2005-03-01' 339141];
        return intercept + slope * (x - ['2005-03-01' 339141]);
    }
    else if(time <= 160){
        intercept = ['2005-04-01' 335632];
        slope = ['2005-05-01' 345348] - ['2005-04-01' 335632];
        return intercept + slope * (x - ['2005-04-01' 335632]);
    }
    else if(time <= 161){
        intercept = ['2005-05-01' 345348];
        slope = ['2005-06-01' 350945] - ['2005-05-01' 345348];
        return intercept + slope * (x - ['2005-05-01' 345348]);
    }
    else if(time <= 162){
        intercept = ['2005-06-01' 350945];
        slope = ['2005-07-01' 351827] - ['2005-06-01' 350945];
        return intercept + slope * (x - ['2005-06-01' 350945]);
    }
    else if(time <= 163){
        intercept = ['2005-07-01' 351827];
        slope = ['2005-08-01' 355701] - ['2005-07-01' 351827];
        return intercept + slope * (x - ['2005-07-01' 351827]);
    }
    else if(time <= 164){
        intercept = ['2005-08-01' 355701];
        slope = ['2005-09-01' 333289] - ['2005-08-01' 355701];
        return intercept + slope * (x - ['2005-08-01' 355701]);
    }
    else if(time <= 165){
        intercept = ['2005-09-01' 333289];
        slope = ['2005-10-01' 336134] - ['2005-09-01' 333289];
        return intercept + slope * (x - ['2005-09-01' 333289]);
    }
    else if(time <= 166){
        intercept = ['2005-10-01' 336134];
        slope = ['2005-11-01' 343798] - ['2005-10-01' 336134];
        return intercept + slope * (x - ['2005-10-01' 336134]);
    }
    else if(time <= 167){
        intercept = ['2005-11-01' 343798];
        slope = ['2005-12-01' 405608] - ['2005-11-01' 343798];
        return intercept + slope * (x - ['2005-11-01' 343798]);
    }
    else if(time <= 168){
        intercept = ['2005-12-01' 405608];
        slope = ['2006-01-01' 318546] - ['2005-12-01' 405608];
        return intercept + slope * (x - ['2005-12-01' 405608]);
    }
    else if(time <= 169){
        intercept = ['2006-01-01' 318546];
        slope = ['2006-02-01' 314051] - ['2006-01-01' 318546];
        return intercept + slope * (x - ['2006-01-01' 318546]);
    }
    else if(time <= 170){
        intercept = ['2006-02-01' 314051];
        slope = ['2006-03-01' 361993] - ['2006-02-01' 314051];
        return intercept + slope * (x - ['2006-02-01' 314051]);
    }
    else if(time <= 171){
        intercept = ['2006-03-01' 361993];
        slope = ['2006-04-01' 351667] - ['2006-03-01' 361993];
        return intercept + slope * (x - ['2006-03-01' 361993]);
    }
    else if(time <= 172){
        intercept = ['2006-04-01' 351667];
        slope = ['2006-05-01' 373560] - ['2006-04-01' 351667];
        return intercept + slope * (x - ['2006-04-01' 351667]);
    }
    else if(time <= 173){
        intercept = ['2006-05-01' 373560];
        slope = ['2006-06-01' 366615] - ['2006-05-01' 373560];
        return intercept + slope * (x - ['2006-05-01' 373560]);
    }
    else if(time <= 174){
        intercept = ['2006-06-01' 366615];
        slope = ['2006-07-01' 362203] - ['2006-06-01' 366615];
        return intercept + slope * (x - ['2006-06-01' 366615]);
    }
    else if(time <= 175){
        intercept = ['2006-07-01' 362203];
        slope = ['2006-08-01' 375795] - ['2006-07-01' 362203];
        return intercept + slope * (x - ['2006-07-01' 362203]);
    }
    else if(time <= 176){
        intercept = ['2006-08-01' 375795];
        slope = ['2006-09-01' 346214] - ['2006-08-01' 375795];
        return intercept + slope * (x - ['2006-08-01' 375795]);
    }
    else if(time <= 177){
        intercept = ['2006-09-01' 346214];
        slope = ['2006-10-01' 348796] - ['2006-09-01' 346214];
        return intercept + slope * (x - ['2006-09-01' 346214]);
    }
    else if(time <= 178){
        intercept = ['2006-10-01' 348796];
        slope = ['2006-11-01' 356928] - ['2006-10-01' 348796];
        return intercept + slope * (x - ['2006-10-01' 348796]);
    }
    else if(time <= 179){
        intercept = ['2006-11-01' 356928];
        slope = ['2006-12-01' 417991] - ['2006-11-01' 356928];
        return intercept + slope * (x - ['2006-11-01' 356928]);
    }
    else if(time <= 180){
        intercept = ['2006-12-01' 417991];
        slope = ['2007-01-01' 328877] - ['2006-12-01' 417991];
        return intercept + slope * (x - ['2006-12-01' 417991]);
    }
    else if(time <= 181){
        intercept = ['2007-01-01' 328877];
        slope = ['2007-02-01' 323162] - ['2007-01-01' 328877];
        return intercept + slope * (x - ['2007-01-01' 328877]);
    }
    else if(time <= 182){
        intercept = ['2007-02-01' 323162];
        slope = ['2007-03-01' 374142] - ['2007-02-01' 323162];
        return intercept + slope * (x - ['2007-02-01' 323162]);
    }
    else if(time <= 183){
        intercept = ['2007-03-01' 374142];
        slope = ['2007-04-01' 358535] - ['2007-03-01' 374142];
        return intercept + slope * (x - ['2007-03-01' 374142]);
    }
    else if(time <= 184){
        intercept = ['2007-04-01' 358535];
        slope = ['2007-05-01' 391512] - ['2007-04-01' 358535];
        return intercept + slope * (x - ['2007-04-01' 358535]);
    }
    else if(time <= 185){
        intercept = ['2007-05-01' 391512];
        slope = ['2007-06-01' 376639] - ['2007-05-01' 391512];
        return intercept + slope * (x - ['2007-05-01' 391512]);
    }
    else if(time <= 186){
        intercept = ['2007-06-01' 376639];
        slope = ['2007-07-01' 372354] - ['2007-06-01' 376639];
        return intercept + slope * (x - ['2007-06-01' 376639]);
    }
    else if(time <= 187){
        intercept = ['2007-07-01' 372354];
        slope = ['2007-08-01' 388016] - ['2007-07-01' 372354];
        return intercept + slope * (x - ['2007-07-01' 372354]);
    }
    else if(time <= 188){
        intercept = ['2007-08-01' 388016];
        slope = ['2007-09-01' 353936] - ['2007-08-01' 388016];
        return intercept + slope * (x - ['2007-08-01' 388016]);
    }
    else if(time <= 189){
        intercept = ['2007-09-01' 353936];
        slope = ['2007-10-01' 368681] - ['2007-09-01' 353936];
        return intercept + slope * (x - ['2007-09-01' 353936]);
    }
    else if(time <= 190){
        intercept = ['2007-10-01' 368681];
        slope = ['2007-11-01' 377802] - ['2007-10-01' 368681];
        return intercept + slope * (x - ['2007-10-01' 368681]);
    }
    else if(time <= 191){
        intercept = ['2007-11-01' 377802];
        slope = ['2007-12-01' 426077] - ['2007-11-01' 377802];
        return intercept + slope * (x - ['2007-11-01' 377802]);
    }
    else if(time <= 192){
        intercept = ['2007-12-01' 426077];
        slope = ['2008-01-01' 342697] - ['2007-12-01' 426077];
        return intercept + slope * (x - ['2007-12-01' 426077]);
    }
    else if(time <= 193){
        intercept = ['2008-01-01' 342697];
        slope = ['2008-02-01' 343937] - ['2008-01-01' 342697];
        return intercept + slope * (x - ['2008-01-01' 342697]);
    }
    else if(time <= 194){
        intercept = ['2008-02-01' 343937];
        slope = ['2008-03-01' 372923] - ['2008-02-01' 343937];
        return intercept + slope * (x - ['2008-02-01' 343937]);
    }
    else if(time <= 195){
        intercept = ['2008-03-01' 372923];
        slope = ['2008-04-01' 368923] - ['2008-03-01' 372923];
        return intercept + slope * (x - ['2008-03-01' 372923]);
    }
    else if(time <= 196){
        intercept = ['2008-04-01' 368923];
        slope = ['2008-05-01' 397969] - ['2008-04-01' 368923];
        return intercept + slope * (x - ['2008-04-01' 368923]);
    }
    else if(time <= 197){
        intercept = ['2008-05-01' 397969];
        slope = ['2008-06-01' 378490] - ['2008-05-01' 397969];
        return intercept + slope * (x - ['2008-05-01' 397969]);
    }
    else if(time <= 198){
        intercept = ['2008-06-01' 378490];
        slope = ['2008-07-01' 383686] - ['2008-06-01' 378490];
        return intercept + slope * (x - ['2008-06-01' 378490]);
    }
    else if(time <= 199){
        intercept = ['2008-07-01' 383686];
        slope = ['2008-08-01' 382852] - ['2008-07-01' 383686];
        return intercept + slope * (x - ['2008-07-01' 383686]);
    }
    else if(time <= 200){
        intercept = ['2008-08-01' 382852];
        slope = ['2008-09-01' 350560] - ['2008-08-01' 382852];
        return intercept + slope * (x - ['2008-08-01' 382852]);
    }
    else if(time <= 201){
        intercept = ['2008-09-01' 350560];
        slope = ['2008-10-01' 349884] - ['2008-09-01' 350560];
        return intercept + slope * (x - ['2008-09-01' 350560]);
    }
    else if(time <= 202){
        intercept = ['2008-10-01' 349884];
        slope = ['2008-11-01' 335571] - ['2008-10-01' 349884];
        return intercept + slope * (x - ['2008-10-01' 349884]);
    }
    else if(time <= 203){
        intercept = ['2008-11-01' 335571];
        slope = ['2008-12-01' 384286] - ['2008-11-01' 335571];
        return intercept + slope * (x - ['2008-11-01' 335571]);
    }
    else if(time <= 204){
        intercept = ['2008-12-01' 384286];
        slope = ['2009-01-01' 310269] - ['2008-12-01' 384286];
        return intercept + slope * (x - ['2008-12-01' 384286]);
    }
    else if(time <= 205){
        intercept = ['2009-01-01' 310269];
        slope = ['2009-02-01' 299488] - ['2009-01-01' 310269];
        return intercept + slope * (x - ['2009-01-01' 310269]);
    }
    else if(time <= 206){
        intercept = ['2009-02-01' 299488];
        slope = ['2009-03-01' 328568] - ['2009-02-01' 299488];
        return intercept + slope * (x - ['2009-02-01' 299488]);
    }
    else if(time <= 207){
        intercept = ['2009-03-01' 328568];
        slope = ['2009-04-01' 329866] - ['2009-03-01' 328568];
        return intercept + slope * (x - ['2009-03-01' 328568]);
    }
    else if(time <= 208){
        intercept = ['2009-04-01' 329866];
        slope = ['2009-05-01' 347768] - ['2009-04-01' 329866];
        return intercept + slope * (x - ['2009-04-01' 329866]);
    }
    else if(time <= 209){
        intercept = ['2009-05-01' 347768];
        slope = ['2009-06-01' 344439] - ['2009-05-01' 347768];
        return intercept + slope * (x - ['2009-05-01' 347768]);
    }
    else if(time <= 210){
        intercept = ['2009-06-01' 344439];
        slope = ['2009-07-01' 348106] - ['2009-06-01' 344439];
        return intercept + slope * (x - ['2009-06-01' 344439]);
    }
    else if(time <= 211){
        intercept = ['2009-07-01' 348106];
        slope = ['2009-08-01' 353473] - ['2009-07-01' 348106];
        return intercept + slope * (x - ['2009-07-01' 348106]);
    }
    else if(time <= 212){
        intercept = ['2009-08-01' 353473];
        slope = ['2009-09-01' 324708] - ['2009-08-01' 353473];
        return intercept + slope * (x - ['2009-08-01' 353473]);
    }
    else if(time <= 213){
        intercept = ['2009-09-01' 324708];
        slope = ['2009-10-01' 338630] - ['2009-09-01' 324708];
        return intercept + slope * (x - ['2009-09-01' 324708]);
    }
    else if(time <= 214){
        intercept = ['2009-10-01' 338630];
        slope = ['2009-11-01' 339386] - ['2009-10-01' 338630];
        return intercept + slope * (x - ['2009-10-01' 338630]);
    }
    else if(time <= 215){
        intercept = ['2009-11-01' 339386];
        slope = ['2009-12-01' 400264] - ['2009-11-01' 339386];
        return intercept + slope * (x - ['2009-11-01' 339386]);
    }
    else if(time <= 216){
        intercept = ['2009-12-01' 400264];
        slope = ['2010-01-01' 314640] - ['2009-12-01' 400264];
        return intercept + slope * (x - ['2009-12-01' 400264]);
    }
    else if(time <= 217){
        intercept = ['2010-01-01' 314640];
        slope = ['2010-02-01' 311022] - ['2010-01-01' 314640];
        return intercept + slope * (x - ['2010-01-01' 314640]);
    }
    else if(time <= 218){
        intercept = ['2010-02-01' 311022];
        slope = ['2010-03-01' 360819] - ['2010-02-01' 311022];
        return intercept + slope * (x - ['2010-02-01' 311022]);
    }
    else if(time <= 219){
        intercept = ['2010-03-01' 360819];
        slope = ['2010-04-01' 356460] - ['2010-03-01' 360819];
        return intercept + slope * (x - ['2010-03-01' 360819]);
    }
    else if(time <= 220){
        intercept = ['2010-04-01' 356460];
        slope = ['2010-05-01' 365713] - ['2010-04-01' 356460];
        return intercept + slope * (x - ['2010-04-01' 356460]);
    }
    else if(time <= 221){
        intercept = ['2010-05-01' 365713];
        slope = ['2010-06-01' 358675] - ['2010-05-01' 365713];
        return intercept + slope * (x - ['2010-05-01' 365713]);
    }
    else if(time <= 222){
        intercept = ['2010-06-01' 358675];
        slope = ['2010-07-01' 362027] - ['2010-06-01' 358675];
        return intercept + slope * (x - ['2010-06-01' 358675]);
    }
    else if(time <= 223){
        intercept = ['2010-07-01' 362027];
        slope = ['2010-08-01' 362682] - ['2010-07-01' 362027];
        return intercept + slope * (x - ['2010-07-01' 362027]);
    }
    else if(time <= 224){
        intercept = ['2010-08-01' 362682];
        slope = ['2010-09-01' 346069] - ['2010-08-01' 362682];
        return intercept + slope * (x - ['2010-08-01' 362682]);
    }
    else if(time <= 225){
        intercept = ['2010-09-01' 346069];
        slope = ['2010-10-01' 355212] - ['2010-09-01' 346069];
        return intercept + slope * (x - ['2010-09-01' 346069]);
    }
    else if(time <= 226){
        intercept = ['2010-10-01' 355212];
        slope = ['2010-11-01' 365809] - ['2010-10-01' 355212];
        return intercept + slope * (x - ['2010-10-01' 355212]);
    }
    else if(time <= 227){
        intercept = ['2010-11-01' 365809];
        slope = ['2010-12-01' 426654] - ['2010-11-01' 365809];
        return intercept + slope * (x - ['2010-11-01' 365809]);
    }
    else if(time <= 228){
        intercept = ['2010-12-01' 426654];
        slope = ['2011-01-01' 335608] - ['2010-12-01' 426654];
        return intercept + slope * (x - ['2010-12-01' 426654]);
    }
    else if(time <= 229){
        intercept = ['2011-01-01' 335608];
        slope = ['2011-02-01' 337352] - ['2011-01-01' 335608];
        return intercept + slope * (x - ['2011-01-01' 335608]);
    }
    else if(time <= 230){
        intercept = ['2011-02-01' 337352];
        slope = ['2011-03-01' 387092] - ['2011-02-01' 337352];
        return intercept + slope * (x - ['2011-02-01' 337352]);
    }
    else if(time <= 231){
        intercept = ['2011-03-01' 387092];
        slope = ['2011-04-01' 380754] - ['2011-03-01' 387092];
        return intercept + slope * (x - ['2011-03-01' 387092]);
    }
    else if(time <= 232){
        intercept = ['2011-04-01' 380754];
        slope = ['2011-05-01' 391970] - ['2011-04-01' 380754];
        return intercept + slope * (x - ['2011-04-01' 380754]);
    }
    else if(time <= 233){
        intercept = ['2011-05-01' 391970];
        slope = ['2011-06-01' 388636] - ['2011-05-01' 391970];
        return intercept + slope * (x - ['2011-05-01' 391970]);
    }
    else if(time <= 234){
        intercept = ['2011-06-01' 388636];
        slope = ['2011-07-01' 384600] - ['2011-06-01' 388636];
        return intercept + slope * (x - ['2011-06-01' 388636]);
    }
    else if(time <= 235){
        intercept = ['2011-07-01' 384600];
        slope = ['2011-08-01' 394548] - ['2011-07-01' 384600];
        return intercept + slope * (x - ['2011-07-01' 384600]);
    }
    else if(time <= 236){
        intercept = ['2011-08-01' 394548];
        slope = ['2011-09-01' 374895] - ['2011-08-01' 394548];
        return intercept + slope * (x - ['2011-08-01' 394548]);
    }
    else if(time <= 237){
        intercept = ['2011-09-01' 374895];
        slope = ['2011-10-01' 379364] - ['2011-09-01' 374895];
        return intercept + slope * (x - ['2011-09-01' 374895]);
    }
    else if(time <= 238){
        intercept = ['2011-10-01' 379364];
        slope = ['2011-11-01' 391081] - ['2011-10-01' 379364];
        return intercept + slope * (x - ['2011-10-01' 379364]);
    }
    else if(time <= 239){
        intercept = ['2011-11-01' 391081];
        slope = ['2011-12-01' 451669] - ['2011-11-01' 391081];
        return intercept + slope * (x - ['2011-11-01' 391081]);
    }
    else if(time <= 240){
        intercept = ['2011-12-01' 451669];
        slope = ['2012-01-01' 355058] - ['2011-12-01' 451669];
        return intercept + slope * (x - ['2011-12-01' 451669]);
    }
    else if(time <= 241){
        intercept = ['2012-01-01' 355058];
        slope = ['2012-02-01' 372523] - ['2012-01-01' 355058];
        return intercept + slope * (x - ['2012-01-01' 355058]);
    }
    else if(time <= 242){
        intercept = ['2012-02-01' 372523];
        slope = ['2012-03-01' 414275] - ['2012-02-01' 372523];
        return intercept + slope * (x - ['2012-02-01' 372523]);
    }
    else if(time <= 243){
        intercept = ['2012-03-01' 414275];
        slope = ['2012-04-01' 393035] - ['2012-03-01' 414275];
        return intercept + slope * (x - ['2012-03-01' 414275]);
    }
    else if(time <= 244){
        intercept = ['2012-04-01' 393035];
        slope = ['2012-05-01' 418648] - ['2012-04-01' 393035];
        return intercept + slope * (x - ['2012-04-01' 393035]);
    }
    else if(time <= 245){
        intercept = ['2012-05-01' 418648];
        slope = ['2012-06-01' 400996] - ['2012-05-01' 418648];
        return intercept + slope * (x - ['2012-05-01' 418648]);
    }
    else if(time <= 246){
        intercept = ['2012-06-01' 400996];
        slope = ['2012-07-01' 396020] - ['2012-06-01' 400996];
        return intercept + slope * (x - ['2012-06-01' 400996]);
    }
    else if(time <= 247){
        intercept = ['2012-07-01' 396020];
        slope = ['2012-08-01' 417911] - ['2012-07-01' 396020];
        return intercept + slope * (x - ['2012-07-01' 396020]);
    }
    else if(time <= 248){
        intercept = ['2012-08-01' 417911];
        slope = ['2012-09-01' 385597] - ['2012-08-01' 417911];
        return intercept + slope * (x - ['2012-08-01' 417911]);
    }
    else if(time <= 249){
        intercept = ['2012-09-01' 385597];
        slope = ['2012-10-01' 399341] - ['2012-09-01' 385597];
        return intercept + slope * (x - ['2012-09-01' 385597]);
    }
    else if(time <= 250){
        intercept = ['2012-10-01' 399341];
        slope = ['2012-11-01' 410992] - ['2012-10-01' 399341];
        return intercept + slope * (x - ['2012-10-01' 399341]);
    }
    else if(time <= 251){
        intercept = ['2012-11-01' 410992];
        slope = ['2012-12-01' 461994] - ['2012-11-01' 410992];
        return intercept + slope * (x - ['2012-11-01' 410992]);
    }
    else if(time <= 252){
        intercept = ['2012-12-01' 461994];
        slope = ['2013-01-01' 375537] - ['2012-12-01' 461994];
        return intercept + slope * (x - ['2012-12-01' 461994]);
    }
    else if(time <= 253){
        intercept = ['2013-01-01' 375537];
        slope = ['2013-02-01' 373938] - ['2013-01-01' 375537];
        return intercept + slope * (x - ['2013-01-01' 375537]);
    }
    else if(time <= 254){
        intercept = ['2013-02-01' 373938];
        slope = ['2013-03-01' 421638] - ['2013-02-01' 373938];
        return intercept + slope * (x - ['2013-02-01' 373938]);
    }
    else if(time <= 255){
        intercept = ['2013-03-01' 421638];
        slope = ['2013-04-01' 408381] - ['2013-03-01' 421638];
        return intercept + slope * (x - ['2013-03-01' 421638]);
    }
    else if(time <= 256){
        intercept = ['2013-04-01' 408381];
        slope = ['2013-05-01' 436985] - ['2013-04-01' 408381];
        return intercept + slope * (x - ['2013-04-01' 408381]);
    }
    else if(time <= 257){
        intercept = ['2013-05-01' 436985];
        slope = ['2013-06-01' 414701] - ['2013-05-01' 436985];
        return intercept + slope * (x - ['2013-05-01' 436985]);
    }
    else if(time <= 258){
        intercept = ['2013-06-01' 414701];
        slope = ['2013-07-01' 422357] - ['2013-06-01' 414701];
        return intercept + slope * (x - ['2013-06-01' 414701]);
    }
    else if(time <= 259){
        intercept = ['2013-07-01' 422357];
        slope = ['2013-08-01' 434950] - ['2013-07-01' 422357];
        return intercept + slope * (x - ['2013-07-01' 422357]);
    }
    else if(time <= 260){
        intercept = ['2013-08-01' 434950];
        slope = ['2013-09-01' 396199] - ['2013-08-01' 434950];
        return intercept + slope * (x - ['2013-08-01' 434950]);
    }
    else if(time <= 261){
        intercept = ['2013-09-01' 396199];
        slope = ['2013-10-01' 415740] - ['2013-09-01' 396199];
        return intercept + slope * (x - ['2013-09-01' 396199]);
    }
    else if(time <= 262){
        intercept = ['2013-10-01' 415740];
        slope = ['2013-11-01' 423611] - ['2013-10-01' 415740];
        return intercept + slope * (x - ['2013-10-01' 415740]);
    }
    else if(time <= 263){
        intercept = ['2013-11-01' 423611];
        slope = ['2013-12-01' 477205] - ['2013-11-01' 423611];
        return intercept + slope * (x - ['2013-11-01' 423611]);
    }
    else if(time <= 264){
        intercept = ['2013-12-01' 477205];
        slope = ['2014-01-01' 383399] - ['2013-12-01' 477205];
        return intercept + slope * (x - ['2013-12-01' 477205]);
    }
    else if(time <= 265){
        intercept = ['2014-01-01' 383399];
        slope = ['2014-02-01' 380315] - ['2014-01-01' 383399];
        return intercept + slope * (x - ['2014-01-01' 383399]);
    }
    else if(time <= 266){
        intercept = ['2014-02-01' 380315];
        slope = ['2014-03-01' 432806] - ['2014-02-01' 380315];
        return intercept + slope * (x - ['2014-02-01' 380315]);
    }
    else if(time <= 267){
        intercept = ['2014-03-01' 432806];
        slope = ['2014-04-01' 431415] - ['2014-03-01' 432806];
        return intercept + slope * (x - ['2014-03-01' 432806]);
    }
    else if(time <= 268){
        intercept = ['2014-04-01' 431415];
        slope = ['2014-05-01' 458822] - ['2014-04-01' 431415];
        return intercept + slope * (x - ['2014-04-01' 431415]);
    }
    else if(time <= 269){
        intercept = ['2014-05-01' 458822];
        slope = ['2014-06-01' 433152] - ['2014-05-01' 458822];
        return intercept + slope * (x - ['2014-05-01' 458822]);
    }
    else if(time <= 270){
        intercept = ['2014-06-01' 433152];
        slope = ['2014-07-01' 443005] - ['2014-06-01' 433152];
        return intercept + slope * (x - ['2014-06-01' 433152]);
    }
    else if(time <= 271){
        intercept = ['2014-07-01' 443005];
        slope = ['2014-08-01' 450913] - ['2014-07-01' 443005];
        return intercept + slope * (x - ['2014-07-01' 443005]);
    }
    else if(time <= 272){
        intercept = ['2014-08-01' 450913];
        slope = ['2014-09-01' 420871] - ['2014-08-01' 450913];
        return intercept + slope * (x - ['2014-08-01' 450913]);
    }
    else if(time <= 273){
        intercept = ['2014-09-01' 420871];
        slope = ['2014-10-01' 437702] - ['2014-09-01' 420871];
        return intercept + slope * (x - ['2014-09-01' 420871]);
    }
    else if(time <= 274){
        intercept = ['2014-10-01' 437702];
        slope = ['2014-11-01' 437910] - ['2014-10-01' 437702];
        return intercept + slope * (x - ['2014-10-01' 437702]);
    }
    else if(time <= 275){
        intercept = ['2014-11-01' 437910];
        slope = ['2014-12-01' 501232] - ['2014-11-01' 437910];
        return intercept + slope * (x - ['2014-11-01' 437910]);
    }
    else if(time <= 276){
        intercept = ['2014-12-01' 501232];
        slope = ['2015-01-01' 397252] - ['2014-12-01' 501232];
        return intercept + slope * (x - ['2014-12-01' 501232]);
    }
    else if(time <= 277){
        intercept = ['2015-01-01' 397252];
        slope = ['2015-02-01' 386935] - ['2015-01-01' 397252];
        return intercept + slope * (x - ['2015-01-01' 397252]);
    }
    else if(time <= 278){
        intercept = ['2015-02-01' 386935];
        slope = ['2015-03-01' 444110] - ['2015-02-01' 386935];
        return intercept + slope * (x - ['2015-02-01' 386935]);
    }
    else if(time <= 279){
        intercept = ['2015-03-01' 444110];
        slope = ['2015-04-01' 438217] - ['2015-03-01' 444110];
        return intercept + slope * (x - ['2015-03-01' 444110]);
    }
    else if(time <= 280){
        intercept = ['2015-04-01' 438217];
        slope = ['2015-05-01' 462615] - ['2015-04-01' 438217];
        return intercept + slope * (x - ['2015-04-01' 438217]);
    }
    else if(time <= 281){
        intercept = ['2015-05-01' 462615];
        slope = ['2015-06-01' 448229] - ['2015-05-01' 462615];
        return intercept + slope * (x - ['2015-05-01' 462615]);
    }
    else if(time <= 282){
        intercept = ['2015-06-01' 448229];
        slope = ['2015-07-01' 457710] - ['2015-06-01' 448229];
        return intercept + slope * (x - ['2015-06-01' 448229]);
    }
    else if(time <= 283){
        intercept = ['2015-07-01' 457710];
        slope = ['2015-08-01' 456340] - ['2015-07-01' 457710];
        return intercept + slope * (x - ['2015-07-01' 457710]);
    }
    else if(time <= 284){
        intercept = ['2015-08-01' 456340];
        slope = ['2015-09-01' 430917] - ['2015-08-01' 456340];
        return intercept + slope * (x - ['2015-08-01' 456340]);
    }
    else if(time <= 285){
        intercept = ['2015-09-01' 430917];
        slope = ['2015-10-01' 444959] - ['2015-09-01' 430917];
        return intercept + slope * (x - ['2015-09-01' 430917]);
    }
    else if(time <= 286){
        intercept = ['2015-10-01' 444959];
        slope = ['2015-11-01' 444507] - ['2015-10-01' 444959];
        return intercept + slope * (x - ['2015-10-01' 444959]);
    }
    else if(time <= 287){
        intercept = ['2015-11-01' 444507];
        slope = ['2015-12-01' 518253] - ['2015-11-01' 444507];
        return intercept + slope * (x - ['2015-11-01' 444507]);
    }
    else if(time <= 288){
        intercept = ['2015-12-01' 518253];
        slope = ['2016-01-01' 400928] - ['2015-12-01' 518253];
        return intercept + slope * (x - ['2015-12-01' 518253]);
    }
    else if(time <= 289){
        intercept = ['2016-01-01' 400928];
        slope = ['2016-02-01' 413554] - ['2016-01-01' 400928];
        return intercept + slope * (x - ['2016-01-01' 400928]);
    }
    else if(time <= 290){
        intercept = ['2016-02-01' 413554];
        slope = ['2016-03-01' 460093] - ['2016-02-01' 413554];
        return intercept + slope * (x - ['2016-02-01' 413554]);
    }
    else if(time <= 291){
        intercept = ['2016-03-01' 460093];
        slope = ['2016-04-01' 450935] - ['2016-03-01' 460093];
        return intercept + slope * (x - ['2016-03-01' 460093]);
    }
    else if(time <= 292){
        intercept = ['2016-04-01' 450935];
        slope = ['2016-05-01' 471421] - ['2016-04-01' 450935];
        return intercept + slope * (x - ['2016-04-01' 450935]);
    }
    return ['2016-05-01' 471421];
}

real dataFunc__ran_norm2(real time){
    // DataStructure for variable ran_norm2
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.37571800900368707;
        slope = 1.0682304090433865 - 0.37571800900368707;
        return intercept + slope * (x - 0.37571800900368707);
    }
    else if(time <= 2){
        intercept = 1.0682304090433865;
        slope = 0.6407536580968232 - 1.0682304090433865;
        return intercept + slope * (x - 1.0682304090433865);
    }
    else if(time <= 3){
        intercept = 0.6407536580968232;
        slope = 0.19638857312866553 - 0.6407536580968232;
        return intercept + slope * (x - 0.6407536580968232);
    }
    else if(time <= 4){
        intercept = 0.19638857312866553;
        slope = -0.3675316673048278 - 0.19638857312866553;
        return intercept + slope * (x - 0.19638857312866553);
    }
    else if(time <= 5){
        intercept = -0.3675316673048278;
        slope = 1.7282840368383257 - -0.3675316673048278;
        return intercept + slope * (x - -0.3675316673048278);
    }
    else if(time <= 6){
        intercept = 1.7282840368383257;
        slope = -1.2098327705183136 - 1.7282840368383257;
        return intercept + slope * (x - 1.7282840368383257);
    }
    else if(time <= 7){
        intercept = -1.2098327705183136;
        slope = -0.7603388642690859 - -1.2098327705183136;
        return intercept + slope * (x - -1.2098327705183136);
    }
    else if(time <= 8){
        intercept = -0.7603388642690859;
        slope = -0.22540070297757903 - -0.7603388642690859;
        return intercept + slope * (x - -0.7603388642690859);
    }
    else if(time <= 9){
        intercept = -0.22540070297757903;
        slope = -0.14864703240682792 - -0.22540070297757903;
        return intercept + slope * (x - -0.22540070297757903);
    }
    else if(time <= 10){
        intercept = -0.14864703240682792;
        slope = -0.9531166222025449 - -0.14864703240682792;
        return intercept + slope * (x - -0.14864703240682792);
    }
    else if(time <= 11){
        intercept = -0.9531166222025449;
        slope = -0.25415584051721735 - -0.9531166222025449;
        return intercept + slope * (x - -0.9531166222025449);
    }
    else if(time <= 12){
        intercept = -0.25415584051721735;
        slope = 0.03747583480992495 - -0.25415584051721735;
        return intercept + slope * (x - -0.25415584051721735);
    }
    else if(time <= 13){
        intercept = 0.03747583480992495;
        slope = -1.0538944566239379 - 0.03747583480992495;
        return intercept + slope * (x - 0.03747583480992495);
    }
    else if(time <= 14){
        intercept = -1.0538944566239379;
        slope = -2.244972598054529 - -1.0538944566239379;
        return intercept + slope * (x - -1.0538944566239379);
    }
    else if(time <= 15){
        intercept = -2.244972598054529;
        slope = -1.8631752215983333 - -2.244972598054529;
        return intercept + slope * (x - -2.244972598054529);
    }
    else if(time <= 16){
        intercept = -1.8631752215983333;
        slope = 1.2809440406948196 - -1.8631752215983333;
        return intercept + slope * (x - -1.8631752215983333);
    }
    else if(time <= 17){
        intercept = 1.2809440406948196;
        slope = -1.5924941643071782 - 1.2809440406948196;
        return intercept + slope * (x - 1.2809440406948196);
    }
    else if(time <= 18){
        intercept = -1.5924941643071782;
        slope = -0.3839894438719876 - -1.5924941643071782;
        return intercept + slope * (x - -1.5924941643071782);
    }
    else if(time <= 19){
        intercept = -0.3839894438719876;
        slope = -0.17188836245236225 - -0.3839894438719876;
        return intercept + slope * (x - -0.3839894438719876);
    }
    else if(time <= 20){
        intercept = -0.17188836245236225;
        slope = 0.09928155418171349 - -0.17188836245236225;
        return intercept + slope * (x - -0.17188836245236225);
    }
    else if(time <= 21){
        intercept = 0.09928155418171349;
        slope = -1.1067479309030945 - 0.09928155418171349;
        return intercept + slope * (x - 0.09928155418171349);
    }
    else if(time <= 22){
        intercept = -1.1067479309030945;
        slope = 0.6183669762769455 - -1.1067479309030945;
        return intercept + slope * (x - -1.1067479309030945);
    }
    else if(time <= 23){
        intercept = 0.6183669762769455;
        slope = 0.7309313789791217 - 0.6183669762769455;
        return intercept + slope * (x - 0.6183669762769455);
    }
    else if(time <= 24){
        intercept = 0.7309313789791217;
        slope = 0.6182424045594468 - 0.7309313789791217;
        return intercept + slope * (x - 0.7309313789791217);
    }
    else if(time <= 25){
        intercept = 0.6182424045594468;
        slope = -1.8738136311001248 - 0.6182424045594468;
        return intercept + slope * (x - 0.6182424045594468);
    }
    else if(time <= 26){
        intercept = -1.8738136311001248;
        slope = 1.5276020803403858 - -1.8738136311001248;
        return intercept + slope * (x - -1.8738136311001248);
    }
    else if(time <= 27){
        intercept = 1.5276020803403858;
        slope = 0.37465423981243673 - 1.5276020803403858;
        return intercept + slope * (x - 1.5276020803403858);
    }
    else if(time <= 28){
        intercept = 0.37465423981243673;
        slope = 1.0548605537080271 - 0.37465423981243673;
        return intercept + slope * (x - 0.37465423981243673);
    }
    else if(time <= 29){
        intercept = 1.0548605537080271;
        slope = 0.5587792035516117 - 1.0548605537080271;
        return intercept + slope * (x - 1.0548605537080271);
    }
    else if(time <= 30){
        intercept = 0.5587792035516117;
        slope = -0.06299870639777273 - 0.5587792035516117;
        return intercept + slope * (x - 0.5587792035516117);
    }
    else if(time <= 31){
        intercept = -0.06299870639777273;
        slope = 0.31903580199349296 - -0.06299870639777273;
        return intercept + slope * (x - -0.06299870639777273);
    }
    else if(time <= 32){
        intercept = 0.31903580199349296;
        slope = 0.11168909219662856 - 0.31903580199349296;
        return intercept + slope * (x - 0.31903580199349296);
    }
    else if(time <= 33){
        intercept = 0.11168909219662856;
        slope = -0.8630765781319175 - 0.11168909219662856;
        return intercept + slope * (x - 0.11168909219662856);
    }
    else if(time <= 34){
        intercept = -0.8630765781319175;
        slope = -1.225960036016325 - -0.8630765781319175;
        return intercept + slope * (x - -0.8630765781319175);
    }
    else if(time <= 35){
        intercept = -1.225960036016325;
        slope = -0.5608344781598266 - -1.225960036016325;
        return intercept + slope * (x - -1.225960036016325);
    }
    else if(time <= 36){
        intercept = -0.5608344781598266;
        slope = 2.0959469766182077 - -0.5608344781598266;
        return intercept + slope * (x - -0.5608344781598266);
    }
    else if(time <= 37){
        intercept = 2.0959469766182077;
        slope = 1.033403396575591 - 2.0959469766182077;
        return intercept + slope * (x - 2.0959469766182077);
    }
    else if(time <= 38){
        intercept = 1.033403396575591;
        slope = 0.035737685693297376 - 1.033403396575591;
        return intercept + slope * (x - 1.033403396575591);
    }
    else if(time <= 39){
        intercept = 0.035737685693297376;
        slope = 0.0030256246198865967 - 0.035737685693297376;
        return intercept + slope * (x - 0.035737685693297376);
    }
    else if(time <= 40){
        intercept = 0.0030256246198865967;
        slope = -1.0160961523611687 - 0.0030256246198865967;
        return intercept + slope * (x - 0.0030256246198865967);
    }
    else if(time <= 41){
        intercept = -1.0160961523611687;
        slope = -0.6987935414655352 - -1.0160961523611687;
        return intercept + slope * (x - -1.0160961523611687);
    }
    else if(time <= 42){
        intercept = -0.6987935414655352;
        slope = -0.16671851271071808 - -0.6987935414655352;
        return intercept + slope * (x - -0.6987935414655352);
    }
    else if(time <= 43){
        intercept = -0.16671851271071808;
        slope = 0.8236024993656377 - -0.16671851271071808;
        return intercept + slope * (x - -0.16671851271071808);
    }
    else if(time <= 44){
        intercept = 0.8236024993656377;
        slope = 1.863834682149255 - 0.8236024993656377;
        return intercept + slope * (x - 0.8236024993656377);
    }
    else if(time <= 45){
        intercept = 1.863834682149255;
        slope = 2.5006116869217156 - 1.863834682149255;
        return intercept + slope * (x - 1.863834682149255);
    }
    else if(time <= 46){
        intercept = 2.5006116869217156;
        slope = 1.3144559803644649 - 2.5006116869217156;
        return intercept + slope * (x - 2.5006116869217156);
    }
    else if(time <= 47){
        intercept = 1.3144559803644649;
        slope = 0.9620660855734036 - 1.3144559803644649;
        return intercept + slope * (x - 1.3144559803644649);
    }
    else if(time <= 48){
        intercept = 0.9620660855734036;
        slope = -0.010604595369710626 - 0.9620660855734036;
        return intercept + slope * (x - 0.9620660855734036);
    }
    else if(time <= 49){
        intercept = -0.010604595369710626;
        slope = -0.1078396553015273 - -0.010604595369710626;
        return intercept + slope * (x - -0.010604595369710626);
    }
    else if(time <= 50){
        intercept = -0.1078396553015273;
        slope = 1.9739422860250189 - -0.1078396553015273;
        return intercept + slope * (x - -0.1078396553015273);
    }
    else if(time <= 51){
        intercept = 1.9739422860250189;
        slope = -0.4855041848018952 - 1.9739422860250189;
        return intercept + slope * (x - 1.9739422860250189);
    }
    else if(time <= 52){
        intercept = -0.4855041848018952;
        slope = 2.5064322215914796 - -0.4855041848018952;
        return intercept + slope * (x - -0.4855041848018952);
    }
    else if(time <= 53){
        intercept = 2.5064322215914796;
        slope = -2.4004977050346907 - 2.5064322215914796;
        return intercept + slope * (x - 2.5064322215914796);
    }
    else if(time <= 54){
        intercept = -2.4004977050346907;
        slope = -1.571493476434418 - -2.4004977050346907;
        return intercept + slope * (x - -2.4004977050346907);
    }
    else if(time <= 55){
        intercept = -1.571493476434418;
        slope = 0.6204250867409129 - -1.571493476434418;
        return intercept + slope * (x - -1.571493476434418);
    }
    else if(time <= 56){
        intercept = 0.6204250867409129;
        slope = -0.9895156362838359 - 0.6204250867409129;
        return intercept + slope * (x - 0.6204250867409129);
    }
    else if(time <= 57){
        intercept = -0.9895156362838359;
        slope = -0.572440987406963 - -0.9895156362838359;
        return intercept + slope * (x - -0.9895156362838359);
    }
    else if(time <= 58){
        intercept = -0.572440987406963;
        slope = -0.2550915333485328 - -0.572440987406963;
        return intercept + slope * (x - -0.572440987406963);
    }
    else if(time <= 59){
        intercept = -0.2550915333485328;
        slope = 0.9298635883040066 - -0.2550915333485328;
        return intercept + slope * (x - -0.2550915333485328);
    }
    else if(time <= 60){
        intercept = 0.9298635883040066;
        slope = 1.3729264404457835 - 0.9298635883040066;
        return intercept + slope * (x - 0.9298635883040066);
    }
    else if(time <= 61){
        intercept = 1.3729264404457835;
        slope = -0.8193091082428451 - 1.3729264404457835;
        return intercept + slope * (x - 1.3729264404457835);
    }
    else if(time <= 62){
        intercept = -0.8193091082428451;
        slope = -0.23719056373637176 - -0.8193091082428451;
        return intercept + slope * (x - -0.8193091082428451);
    }
    else if(time <= 63){
        intercept = -0.23719056373637176;
        slope = -1.5544499218022227 - -0.23719056373637176;
        return intercept + slope * (x - -0.23719056373637176);
    }
    else if(time <= 64){
        intercept = -1.5544499218022227;
        slope = 0.07454656348043888 - -1.5544499218022227;
        return intercept + slope * (x - -1.5544499218022227);
    }
    else if(time <= 65){
        intercept = 0.07454656348043888;
        slope = 0.16548858553436696 - 0.07454656348043888;
        return intercept + slope * (x - 0.07454656348043888);
    }
    else if(time <= 66){
        intercept = 0.16548858553436696;
        slope = -0.5548305207440622 - 0.16548858553436696;
        return intercept + slope * (x - 0.16548858553436696);
    }
    else if(time <= 67){
        intercept = -0.5548305207440622;
        slope = -2.1744138016092167 - -0.5548305207440622;
        return intercept + slope * (x - -0.5548305207440622);
    }
    else if(time <= 68){
        intercept = -2.1744138016092167;
        slope = 0.25309196767484926 - -2.1744138016092167;
        return intercept + slope * (x - -2.1744138016092167);
    }
    else if(time <= 69){
        intercept = 0.25309196767484926;
        slope = 0.1425624984126798 - 0.25309196767484926;
        return intercept + slope * (x - 0.25309196767484926);
    }
    else if(time <= 70){
        intercept = 0.1425624984126798;
        slope = -1.2329007420982727 - 0.1425624984126798;
        return intercept + slope * (x - 0.1425624984126798);
    }
    else if(time <= 71){
        intercept = -1.2329007420982727;
        slope = 0.027610130946053284 - -1.2329007420982727;
        return intercept + slope * (x - -1.2329007420982727);
    }
    else if(time <= 72){
        intercept = 0.027610130946053284;
        slope = -0.23659557835842826 - 0.027610130946053284;
        return intercept + slope * (x - 0.027610130946053284);
    }
    else if(time <= 73){
        intercept = -0.23659557835842826;
        slope = 1.6073258996666093 - -0.23659557835842826;
        return intercept + slope * (x - -0.23659557835842826);
    }
    else if(time <= 74){
        intercept = 1.6073258996666093;
        slope = 0.23544564047045824 - 1.6073258996666093;
        return intercept + slope * (x - 1.6073258996666093);
    }
    else if(time <= 75){
        intercept = 0.23544564047045824;
        slope = -0.03409728456284539 - 0.23544564047045824;
        return intercept + slope * (x - 0.23544564047045824);
    }
    else if(time <= 76){
        intercept = -0.03409728456284539;
        slope = -1.18152537441002 - -0.03409728456284539;
        return intercept + slope * (x - -0.03409728456284539);
    }
    else if(time <= 77){
        intercept = -1.18152537441002;
        slope = -0.8678433195149864 - -1.18152537441002;
        return intercept + slope * (x - -1.18152537441002);
    }
    else if(time <= 78){
        intercept = -0.8678433195149864;
        slope = 1.96629710117007 - -0.8678433195149864;
        return intercept + slope * (x - -0.8678433195149864);
    }
    else if(time <= 79){
        intercept = 1.96629710117007;
        slope = 1.5554427355471399 - 1.96629710117007;
        return intercept + slope * (x - 1.96629710117007);
    }
    else if(time <= 80){
        intercept = 1.5554427355471399;
        slope = 1.019467234920374 - 1.5554427355471399;
        return intercept + slope * (x - 1.5554427355471399);
    }
    else if(time <= 81){
        intercept = 1.019467234920374;
        slope = -0.08035315607375298 - 1.019467234920374;
        return intercept + slope * (x - 1.019467234920374);
    }
    else if(time <= 82){
        intercept = -0.08035315607375298;
        slope = 0.17168632030610498 - -0.08035315607375298;
        return intercept + slope * (x - -0.08035315607375298);
    }
    else if(time <= 83){
        intercept = 0.17168632030610498;
        slope = 1.9387596809244922 - 0.17168632030610498;
        return intercept + slope * (x - 0.17168632030610498);
    }
    else if(time <= 84){
        intercept = 1.9387596809244922;
        slope = -1.1237859065173292 - 1.9387596809244922;
        return intercept + slope * (x - 1.9387596809244922);
    }
    else if(time <= 85){
        intercept = -1.1237859065173292;
        slope = -0.11280405318492623 - -1.1237859065173292;
        return intercept + slope * (x - -1.1237859065173292);
    }
    else if(time <= 86){
        intercept = -0.11280405318492623;
        slope = 0.8542929013378572 - -0.11280405318492623;
        return intercept + slope * (x - -0.11280405318492623);
    }
    else if(time <= 87){
        intercept = 0.8542929013378572;
        slope = 0.09035215802893137 - 0.8542929013378572;
        return intercept + slope * (x - 0.8542929013378572);
    }
    else if(time <= 88){
        intercept = 0.09035215802893137;
        slope = 0.40806897281105015 - 0.09035215802893137;
        return intercept + slope * (x - 0.09035215802893137);
    }
    else if(time <= 89){
        intercept = 0.40806897281105015;
        slope = 2.0496040122577335 - 0.40806897281105015;
        return intercept + slope * (x - 0.40806897281105015);
    }
    else if(time <= 90){
        intercept = 2.0496040122577335;
        slope = -1.8819140338799556 - 2.0496040122577335;
        return intercept + slope * (x - 2.0496040122577335);
    }
    else if(time <= 91){
        intercept = -1.8819140338799556;
        slope = -0.7833050019366249 - -1.8819140338799556;
        return intercept + slope * (x - -1.8819140338799556);
    }
    else if(time <= 92){
        intercept = -0.7833050019366249;
        slope = 0.05937950591955995 - -0.7833050019366249;
        return intercept + slope * (x - -0.7833050019366249);
    }
    else if(time <= 93){
        intercept = 0.05937950591955995;
        slope = 0.7564630486788267 - 0.05937950591955995;
        return intercept + slope * (x - 0.05937950591955995);
    }
    else if(time <= 94){
        intercept = 0.7564630486788267;
        slope = -0.03920698494900017 - 0.7564630486788267;
        return intercept + slope * (x - 0.7564630486788267);
    }
    else if(time <= 95){
        intercept = -0.03920698494900017;
        slope = 0.43979310999760657 - -0.03920698494900017;
        return intercept + slope * (x - -0.03920698494900017);
    }
    else if(time <= 96){
        intercept = 0.43979310999760657;
        slope = 1.8000414646774656 - 0.43979310999760657;
        return intercept + slope * (x - 0.43979310999760657);
    }
    else if(time <= 97){
        intercept = 1.8000414646774656;
        slope = -0.23009079642683386 - 1.8000414646774656;
        return intercept + slope * (x - 1.8000414646774656);
    }
    else if(time <= 98){
        intercept = -0.23009079642683386;
        slope = -1.335934780478932 - -0.23009079642683386;
        return intercept + slope * (x - -0.23009079642683386);
    }
    else if(time <= 99){
        intercept = -1.335934780478932;
        slope = -0.5035540327852709 - -1.335934780478932;
        return intercept + slope * (x - -1.335934780478932);
    }
    else if(time <= 100){
        intercept = -0.5035540327852709;
        slope = 0.16606557215340173 - -0.5035540327852709;
        return intercept + slope * (x - -0.5035540327852709);
    }
    else if(time <= 101){
        intercept = 0.16606557215340173;
        slope = -0.12612623351707747 - 0.16606557215340173;
        return intercept + slope * (x - 0.16606557215340173);
    }
    else if(time <= 102){
        intercept = -0.12612623351707747;
        slope = 1.216666761773283 - -0.12612623351707747;
        return intercept + slope * (x - -0.12612623351707747);
    }
    else if(time <= 103){
        intercept = 1.216666761773283;
        slope = -0.5869519185474817 - 1.216666761773283;
        return intercept + slope * (x - 1.216666761773283);
    }
    else if(time <= 104){
        intercept = -0.5869519185474817;
        slope = 0.6838044488574415 - -0.5869519185474817;
        return intercept + slope * (x - -0.5869519185474817);
    }
    else if(time <= 105){
        intercept = 0.6838044488574415;
        slope = 0.6905200309182518 - 0.6838044488574415;
        return intercept + slope * (x - 0.6838044488574415);
    }
    else if(time <= 106){
        intercept = 0.6905200309182518;
        slope = 0.3907032611288545 - 0.6905200309182518;
        return intercept + slope * (x - 0.6905200309182518);
    }
    else if(time <= 107){
        intercept = 0.3907032611288545;
        slope = -0.49601961396543864 - 0.3907032611288545;
        return intercept + slope * (x - 0.3907032611288545);
    }
    else if(time <= 108){
        intercept = -0.49601961396543864;
        slope = 0.2807367516414759 - -0.49601961396543864;
        return intercept + slope * (x - -0.49601961396543864);
    }
    else if(time <= 109){
        intercept = 0.2807367516414759;
        slope = 0.5765649622241885 - 0.2807367516414759;
        return intercept + slope * (x - 0.2807367516414759);
    }
    else if(time <= 110){
        intercept = 0.5765649622241885;
        slope = -0.24857854451629713 - 0.5765649622241885;
        return intercept + slope * (x - 0.5765649622241885);
    }
    else if(time <= 111){
        intercept = -0.24857854451629713;
        slope = 0.8910700714083267 - -0.24857854451629713;
        return intercept + slope * (x - -0.24857854451629713);
    }
    else if(time <= 112){
        intercept = 0.8910700714083267;
        slope = 0.4570524816326807 - 0.8910700714083267;
        return intercept + slope * (x - 0.8910700714083267);
    }
    else if(time <= 113){
        intercept = 0.4570524816326807;
        slope = 0.08932376777643249 - 0.4570524816326807;
        return intercept + slope * (x - 0.4570524816326807);
    }
    else if(time <= 114){
        intercept = 0.08932376777643249;
        slope = 0.7583029475945604 - 0.08932376777643249;
        return intercept + slope * (x - 0.08932376777643249);
    }
    else if(time <= 115){
        intercept = 0.7583029475945604;
        slope = -0.9663439811684907 - 0.7583029475945604;
        return intercept + slope * (x - 0.7583029475945604);
    }
    else if(time <= 116){
        intercept = -0.9663439811684907;
        slope = 0.2885428594199571 - -0.9663439811684907;
        return intercept + slope * (x - -0.9663439811684907);
    }
    else if(time <= 117){
        intercept = 0.2885428594199571;
        slope = -0.38797225948578357 - 0.2885428594199571;
        return intercept + slope * (x - 0.2885428594199571);
    }
    else if(time <= 118){
        intercept = -0.38797225948578357;
        slope = 0.03280342602122308 - -0.38797225948578357;
        return intercept + slope * (x - -0.38797225948578357);
    }
    else if(time <= 119){
        intercept = 0.03280342602122308;
        slope = -2.234391063916577 - 0.03280342602122308;
        return intercept + slope * (x - 0.03280342602122308);
    }
    else if(time <= 120){
        intercept = -2.234391063916577;
        slope = -0.5649289908973683 - -2.234391063916577;
        return intercept + slope * (x - -2.234391063916577);
    }
    else if(time <= 121){
        intercept = -0.5649289908973683;
        slope = 0.11018952386757874 - -0.5649289908973683;
        return intercept + slope * (x - -0.5649289908973683);
    }
    else if(time <= 122){
        intercept = 0.11018952386757874;
        slope = 0.3950987849276042 - 0.11018952386757874;
        return intercept + slope * (x - 0.11018952386757874);
    }
    else if(time <= 123){
        intercept = 0.3950987849276042;
        slope = -0.455189484576872 - 0.3950987849276042;
        return intercept + slope * (x - 0.3950987849276042);
    }
    else if(time <= 124){
        intercept = -0.455189484576872;
        slope = 0.48764988574092244 - -0.455189484576872;
        return intercept + slope * (x - -0.455189484576872);
    }
    else if(time <= 125){
        intercept = 0.48764988574092244;
        slope = -1.787558045251051 - 0.48764988574092244;
        return intercept + slope * (x - 0.48764988574092244);
    }
    else if(time <= 126){
        intercept = -1.787558045251051;
        slope = 1.4623684370691172 - -1.787558045251051;
        return intercept + slope * (x - -1.787558045251051);
    }
    else if(time <= 127){
        intercept = 1.4623684370691172;
        slope = -0.07455341749901499 - 1.4623684370691172;
        return intercept + slope * (x - 1.4623684370691172);
    }
    else if(time <= 128){
        intercept = -0.07455341749901499;
        slope = 0.7713800241402583 - -0.07455341749901499;
        return intercept + slope * (x - -0.07455341749901499);
    }
    else if(time <= 129){
        intercept = 0.7713800241402583;
        slope = 1.580592640368619 - 0.7713800241402583;
        return intercept + slope * (x - 0.7713800241402583);
    }
    else if(time <= 130){
        intercept = 1.580592640368619;
        slope = 0.29809400787690743 - 1.580592640368619;
        return intercept + slope * (x - 1.580592640368619);
    }
    else if(time <= 131){
        intercept = 0.29809400787690743;
        slope = 0.5427049371036757 - 0.29809400787690743;
        return intercept + slope * (x - 0.29809400787690743);
    }
    else if(time <= 132){
        intercept = 0.5427049371036757;
        slope = -0.9144030546780858 - 0.5427049371036757;
        return intercept + slope * (x - 0.5427049371036757);
    }
    else if(time <= 133){
        intercept = -0.9144030546780858;
        slope = 1.399591667666231 - -0.9144030546780858;
        return intercept + slope * (x - -0.9144030546780858);
    }
    else if(time <= 134){
        intercept = 1.399591667666231;
        slope = 0.16467506080259128 - 1.399591667666231;
        return intercept + slope * (x - 1.399591667666231);
    }
    else if(time <= 135){
        intercept = 0.16467506080259128;
        slope = -0.6611865849896754 - 0.16467506080259128;
        return intercept + slope * (x - 0.16467506080259128);
    }
    else if(time <= 136){
        intercept = -0.6611865849896754;
        slope = -1.0780155900475212 - -0.6611865849896754;
        return intercept + slope * (x - -0.6611865849896754);
    }
    else if(time <= 137){
        intercept = -1.0780155900475212;
        slope = -0.2575535968264008 - -1.0780155900475212;
        return intercept + slope * (x - -1.0780155900475212);
    }
    else if(time <= 138){
        intercept = -0.2575535968264008;
        slope = 1.8513258744096406 - -0.2575535968264008;
        return intercept + slope * (x - -0.2575535968264008);
    }
    else if(time <= 139){
        intercept = 1.8513258744096406;
        slope = 0.29573701915253564 - 1.8513258744096406;
        return intercept + slope * (x - 1.8513258744096406);
    }
    else if(time <= 140){
        intercept = 0.29573701915253564;
        slope = 0.21748230953331535 - 0.29573701915253564;
        return intercept + slope * (x - 0.29573701915253564);
    }
    else if(time <= 141){
        intercept = 0.21748230953331535;
        slope = 1.2685294206435747 - 0.21748230953331535;
        return intercept + slope * (x - 0.21748230953331535);
    }
    else if(time <= 142){
        intercept = 1.2685294206435747;
        slope = -0.7931103895557982 - 1.2685294206435747;
        return intercept + slope * (x - 1.2685294206435747);
    }
    else if(time <= 143){
        intercept = -0.7931103895557982;
        slope = -0.015356937029986768 - -0.7931103895557982;
        return intercept + slope * (x - -0.7931103895557982);
    }
    else if(time <= 144){
        intercept = -0.015356937029986768;
        slope = -0.7109376311710057 - -0.015356937029986768;
        return intercept + slope * (x - -0.015356937029986768);
    }
    else if(time <= 145){
        intercept = -0.7109376311710057;
        slope = -0.8317767988247977 - -0.7109376311710057;
        return intercept + slope * (x - -0.7109376311710057);
    }
    else if(time <= 146){
        intercept = -0.8317767988247977;
        slope = 0.02555764265232383 - -0.8317767988247977;
        return intercept + slope * (x - -0.8317767988247977);
    }
    else if(time <= 147){
        intercept = 0.02555764265232383;
        slope = 0.14186482640937 - 0.02555764265232383;
        return intercept + slope * (x - 0.02555764265232383);
    }
    else if(time <= 148){
        intercept = 0.14186482640937;
        slope = -0.932254558153711 - 0.14186482640937;
        return intercept + slope * (x - 0.14186482640937);
    }
    else if(time <= 149){
        intercept = -0.932254558153711;
        slope = 0.5709703810102575 - -0.932254558153711;
        return intercept + slope * (x - -0.932254558153711);
    }
    else if(time <= 150){
        intercept = 0.5709703810102575;
        slope = -1.8719885085974763 - 0.5709703810102575;
        return intercept + slope * (x - 0.5709703810102575);
    }
    else if(time <= 151){
        intercept = -1.8719885085974763;
        slope = -0.20624619273832542 - -1.8719885085974763;
        return intercept + slope * (x - -1.8719885085974763);
    }
    else if(time <= 152){
        intercept = -0.20624619273832542;
        slope = 0.6559253425814827 - -0.20624619273832542;
        return intercept + slope * (x - -0.20624619273832542);
    }
    else if(time <= 153){
        intercept = 0.6559253425814827;
        slope = -1.6292687320434933 - 0.6559253425814827;
        return intercept + slope * (x - 0.6559253425814827);
    }
    else if(time <= 154){
        intercept = -1.6292687320434933;
        slope = -0.2745864224850024 - -1.6292687320434933;
        return intercept + slope * (x - -1.6292687320434933);
    }
    else if(time <= 155){
        intercept = -0.2745864224850024;
        slope = 0.5198827502539969 - -0.2745864224850024;
        return intercept + slope * (x - -0.2745864224850024);
    }
    else if(time <= 156){
        intercept = 0.5198827502539969;
        slope = 0.2836582651985036 - 0.5198827502539969;
        return intercept + slope * (x - 0.5198827502539969);
    }
    else if(time <= 157){
        intercept = 0.2836582651985036;
        slope = -0.4696271139855102 - 0.2836582651985036;
        return intercept + slope * (x - 0.2836582651985036);
    }
    else if(time <= 158){
        intercept = -0.4696271139855102;
        slope = -0.6903523894228394 - -0.4696271139855102;
        return intercept + slope * (x - -0.4696271139855102);
    }
    else if(time <= 159){
        intercept = -0.6903523894228394;
        slope = 0.09420575945543347 - -0.6903523894228394;
        return intercept + slope * (x - -0.6903523894228394);
    }
    else if(time <= 160){
        intercept = 0.09420575945543347;
        slope = 0.5501565361027555 - 0.09420575945543347;
        return intercept + slope * (x - 0.09420575945543347);
    }
    else if(time <= 161){
        intercept = 0.5501565361027555;
        slope = -1.9818152258954764 - 0.5501565361027555;
        return intercept + slope * (x - 0.5501565361027555);
    }
    else if(time <= 162){
        intercept = -1.9818152258954764;
        slope = 0.37920817477990115 - -1.9818152258954764;
        return intercept + slope * (x - -1.9818152258954764);
    }
    else if(time <= 163){
        intercept = 0.37920817477990115;
        slope = 1.2120343590961051 - 0.37920817477990115;
        return intercept + slope * (x - 0.37920817477990115);
    }
    else if(time <= 164){
        intercept = 1.2120343590961051;
        slope = -0.1693904313644053 - 1.2120343590961051;
        return intercept + slope * (x - 1.2120343590961051);
    }
    else if(time <= 165){
        intercept = -0.1693904313644053;
        slope = -0.559105545593712 - -0.1693904313644053;
        return intercept + slope * (x - -0.1693904313644053);
    }
    else if(time <= 166){
        intercept = -0.559105545593712;
        slope = -1.386016302808133 - -0.559105545593712;
        return intercept + slope * (x - -0.559105545593712);
    }
    else if(time <= 167){
        intercept = -1.386016302808133;
        slope = -0.14084905446298562 - -1.386016302808133;
        return intercept + slope * (x - -1.386016302808133);
    }
    else if(time <= 168){
        intercept = -0.14084905446298562;
        slope = -1.0107855654064781 - -0.14084905446298562;
        return intercept + slope * (x - -0.14084905446298562);
    }
    else if(time <= 169){
        intercept = -1.0107855654064781;
        slope = -0.5550151278506416 - -1.0107855654064781;
        return intercept + slope * (x - -1.0107855654064781);
    }
    else if(time <= 170){
        intercept = -0.5550151278506416;
        slope = 0.489015780723385 - -0.5550151278506416;
        return intercept + slope * (x - -0.5550151278506416);
    }
    else if(time <= 171){
        intercept = 0.489015780723385;
        slope = 0.1350447654080018 - 0.489015780723385;
        return intercept + slope * (x - 0.489015780723385);
    }
    else if(time <= 172){
        intercept = 0.1350447654080018;
        slope = -1.914163464140058 - 0.1350447654080018;
        return intercept + slope * (x - 0.1350447654080018);
    }
    else if(time <= 173){
        intercept = -1.914163464140058;
        slope = -0.10501338995642896 - -1.914163464140058;
        return intercept + slope * (x - -1.914163464140058);
    }
    else if(time <= 174){
        intercept = -0.10501338995642896;
        slope = 1.1405170466062953 - -0.10501338995642896;
        return intercept + slope * (x - -0.10501338995642896);
    }
    else if(time <= 175){
        intercept = 1.1405170466062953;
        slope = -0.04071388970740747 - 1.1405170466062953;
        return intercept + slope * (x - 1.1405170466062953);
    }
    else if(time <= 176){
        intercept = -0.04071388970740747;
        slope = -1.9034011481334183 - -0.04071388970740747;
        return intercept + slope * (x - -0.04071388970740747);
    }
    else if(time <= 177){
        intercept = -1.9034011481334183;
        slope = -0.06654398687202209 - -1.9034011481334183;
        return intercept + slope * (x - -1.9034011481334183);
    }
    else if(time <= 178){
        intercept = -0.06654398687202209;
        slope = 0.6467289270919984 - -0.06654398687202209;
        return intercept + slope * (x - -0.06654398687202209);
    }
    else if(time <= 179){
        intercept = 0.6467289270919984;
        slope = 1.2649455395844282 - 0.6467289270919984;
        return intercept + slope * (x - 0.6467289270919984);
    }
    else if(time <= 180){
        intercept = 1.2649455395844282;
        slope = -0.13464094753010913 - 1.2649455395844282;
        return intercept + slope * (x - 1.2649455395844282);
    }
    else if(time <= 181){
        intercept = -0.13464094753010913;
        slope = 0.1297809771001423 - -0.13464094753010913;
        return intercept + slope * (x - -0.13464094753010913);
    }
    else if(time <= 182){
        intercept = 0.1297809771001423;
        slope = -0.7737218180908138 - 0.1297809771001423;
        return intercept + slope * (x - 0.1297809771001423);
    }
    else if(time <= 183){
        intercept = -0.7737218180908138;
        slope = 0.442432512394713 - -0.7737218180908138;
        return intercept + slope * (x - -0.7737218180908138);
    }
    else if(time <= 184){
        intercept = 0.442432512394713;
        slope = -0.45575676272527194 - 0.442432512394713;
        return intercept + slope * (x - 0.442432512394713);
    }
    else if(time <= 185){
        intercept = -0.45575676272527194;
        slope = 1.3646750291750842 - -0.45575676272527194;
        return intercept + slope * (x - -0.45575676272527194);
    }
    else if(time <= 186){
        intercept = 1.3646750291750842;
        slope = -0.40016038341544863 - 1.3646750291750842;
        return intercept + slope * (x - 1.3646750291750842);
    }
    else if(time <= 187){
        intercept = -0.40016038341544863;
        slope = 0.34442637380320523 - -0.40016038341544863;
        return intercept + slope * (x - -0.40016038341544863);
    }
    else if(time <= 188){
        intercept = 0.34442637380320523;
        slope = 0.5368252010024723 - 0.34442637380320523;
        return intercept + slope * (x - 0.34442637380320523);
    }
    else if(time <= 189){
        intercept = 0.5368252010024723;
        slope = -0.02310131801336331 - 0.5368252010024723;
        return intercept + slope * (x - 0.5368252010024723);
    }
    else if(time <= 190){
        intercept = -0.02310131801336331;
        slope = 0.521433646523917 - -0.02310131801336331;
        return intercept + slope * (x - -0.02310131801336331);
    }
    else if(time <= 191){
        intercept = 0.521433646523917;
        slope = -0.979797697922155 - 0.521433646523917;
        return intercept + slope * (x - 0.521433646523917);
    }
    else if(time <= 192){
        intercept = -0.979797697922155;
        slope = 0.11183173310372187 - -0.979797697922155;
        return intercept + slope * (x - -0.979797697922155);
    }
    else if(time <= 193){
        intercept = 0.11183173310372187;
        slope = 0.810914618445716 - 0.11183173310372187;
        return intercept + slope * (x - 0.11183173310372187);
    }
    else if(time <= 194){
        intercept = 0.810914618445716;
        slope = 0.24757224919772344 - 0.810914618445716;
        return intercept + slope * (x - 0.810914618445716);
    }
    else if(time <= 195){
        intercept = 0.24757224919772344;
        slope = 1.1441837662468886 - 0.24757224919772344;
        return intercept + slope * (x - 0.24757224919772344);
    }
    else if(time <= 196){
        intercept = 1.1441837662468886;
        slope = 0.1610564774645813 - 1.1441837662468886;
        return intercept + slope * (x - 1.1441837662468886);
    }
    else if(time <= 197){
        intercept = 0.1610564774645813;
        slope = -1.2552142065496987 - 0.1610564774645813;
        return intercept + slope * (x - 0.1610564774645813);
    }
    else if(time <= 198){
        intercept = -1.2552142065496987;
        slope = -0.31603805553635267 - -1.2552142065496987;
        return intercept + slope * (x - -1.2552142065496987);
    }
    else if(time <= 199){
        intercept = -0.31603805553635267;
        slope = -0.35540650888932507 - -0.31603805553635267;
        return intercept + slope * (x - -0.31603805553635267);
    }
    else if(time <= 200){
        intercept = -0.35540650888932507;
        slope = -0.2734618679573642 - -0.35540650888932507;
        return intercept + slope * (x - -0.35540650888932507);
    }
    else if(time <= 201){
        intercept = -0.2734618679573642;
        slope = -0.2297846011062224 - -0.2734618679573642;
        return intercept + slope * (x - -0.2734618679573642);
    }
    else if(time <= 202){
        intercept = -0.2297846011062224;
        slope = -0.049918876698585087 - -0.2297846011062224;
        return intercept + slope * (x - -0.2297846011062224);
    }
    else if(time <= 203){
        intercept = -0.049918876698585087;
        slope = 1.175311367373886 - -0.049918876698585087;
        return intercept + slope * (x - -0.049918876698585087);
    }
    else if(time <= 204){
        intercept = 1.175311367373886;
        slope = 0.16968097481725286 - 1.175311367373886;
        return intercept + slope * (x - 1.175311367373886);
    }
    else if(time <= 205){
        intercept = 0.16968097481725286;
        slope = -0.13740403885018596 - 0.16968097481725286;
        return intercept + slope * (x - 0.16968097481725286);
    }
    else if(time <= 206){
        intercept = -0.13740403885018596;
        slope = -0.10047917249764876 - -0.13740403885018596;
        return intercept + slope * (x - -0.13740403885018596);
    }
    else if(time <= 207){
        intercept = -0.10047917249764876;
        slope = -1.1139427424963013 - -0.10047917249764876;
        return intercept + slope * (x - -0.10047917249764876);
    }
    else if(time <= 208){
        intercept = -1.1139427424963013;
        slope = -0.5281205734364033 - -1.1139427424963013;
        return intercept + slope * (x - -1.1139427424963013);
    }
    else if(time <= 209){
        intercept = -0.5281205734364033;
        slope = 0.586630835748538 - -0.5281205734364033;
        return intercept + slope * (x - -0.5281205734364033);
    }
    else if(time <= 210){
        intercept = 0.586630835748538;
        slope = 0.03992713502762878 - 0.586630835748538;
        return intercept + slope * (x - 0.586630835748538);
    }
    else if(time <= 211){
        intercept = 0.03992713502762878;
        slope = 0.7781103551777153 - 0.03992713502762878;
        return intercept + slope * (x - 0.03992713502762878);
    }
    else if(time <= 212){
        intercept = 0.7781103551777153;
        slope = 0.4343586004019574 - 0.7781103551777153;
        return intercept + slope * (x - 0.7781103551777153);
    }
    else if(time <= 213){
        intercept = 0.4343586004019574;
        slope = 0.03120438340044833 - 0.4343586004019574;
        return intercept + slope * (x - 0.4343586004019574);
    }
    else if(time <= 214){
        intercept = 0.03120438340044833;
        slope = -0.5767309706573628 - 0.03120438340044833;
        return intercept + slope * (x - 0.03120438340044833);
    }
    else if(time <= 215){
        intercept = -0.5767309706573628;
        slope = 0.06999653496380308 - -0.5767309706573628;
        return intercept + slope * (x - -0.5767309706573628);
    }
    else if(time <= 216){
        intercept = 0.06999653496380308;
        slope = -0.8386253025252278 - 0.06999653496380308;
        return intercept + slope * (x - 0.06999653496380308);
    }
    else if(time <= 217){
        intercept = -0.8386253025252278;
        slope = -0.6234887537205774 - -0.8386253025252278;
        return intercept + slope * (x - -0.8386253025252278);
    }
    else if(time <= 218){
        intercept = -0.6234887537205774;
        slope = 0.6129857418295933 - -0.6234887537205774;
        return intercept + slope * (x - -0.6234887537205774);
    }
    else if(time <= 219){
        intercept = 0.6129857418295933;
        slope = 1.9087986451294015 - 0.6129857418295933;
        return intercept + slope * (x - 0.6129857418295933);
    }
    else if(time <= 220){
        intercept = 1.9087986451294015;
        slope = -0.20604654157201951 - 1.9087986451294015;
        return intercept + slope * (x - 1.9087986451294015);
    }
    else if(time <= 221){
        intercept = -0.20604654157201951;
        slope = -1.2525109754081027 - -0.20604654157201951;
        return intercept + slope * (x - -0.20604654157201951);
    }
    else if(time <= 222){
        intercept = -1.2525109754081027;
        slope = -1.8115714695558929 - -1.2525109754081027;
        return intercept + slope * (x - -1.2525109754081027);
    }
    else if(time <= 223){
        intercept = -1.8115714695558929;
        slope = 0.064992039544474 - -1.8115714695558929;
        return intercept + slope * (x - -1.8115714695558929);
    }
    else if(time <= 224){
        intercept = 0.064992039544474;
        slope = 0.14175938950338474 - 0.064992039544474;
        return intercept + slope * (x - 0.064992039544474);
    }
    else if(time <= 225){
        intercept = 0.14175938950338474;
        slope = -1.1476893724001112 - 0.14175938950338474;
        return intercept + slope * (x - 0.14175938950338474);
    }
    else if(time <= 226){
        intercept = -1.1476893724001112;
        slope = -0.2491943461420399 - -1.1476893724001112;
        return intercept + slope * (x - -1.1476893724001112);
    }
    else if(time <= 227){
        intercept = -0.2491943461420399;
        slope = 0.41583052130803594 - -0.2491943461420399;
        return intercept + slope * (x - -0.2491943461420399);
    }
    else if(time <= 228){
        intercept = 0.41583052130803594;
        slope = -1.525748117990073 - 0.41583052130803594;
        return intercept + slope * (x - 0.41583052130803594);
    }
    else if(time <= 229){
        intercept = -1.525748117990073;
        slope = 0.034728902642881344 - -1.525748117990073;
        return intercept + slope * (x - -1.525748117990073);
    }
    else if(time <= 230){
        intercept = 0.034728902642881344;
        slope = -0.7562313200929632 - 0.034728902642881344;
        return intercept + slope * (x - 0.034728902642881344);
    }
    else if(time <= 231){
        intercept = -0.7562313200929632;
        slope = 0.7833496364932364 - -0.7562313200929632;
        return intercept + slope * (x - -0.7562313200929632);
    }
    else if(time <= 232){
        intercept = 0.7833496364932364;
        slope = 0.7240807228706141 - 0.7833496364932364;
        return intercept + slope * (x - 0.7833496364932364);
    }
    else if(time <= 233){
        intercept = 0.7240807228706141;
        slope = -2.260095380135249 - 0.7240807228706141;
        return intercept + slope * (x - 0.7240807228706141);
    }
    else if(time <= 234){
        intercept = -2.260095380135249;
        slope = 2.107879550399411 - -2.260095380135249;
        return intercept + slope * (x - -2.260095380135249);
    }
    else if(time <= 235){
        intercept = 2.107879550399411;
        slope = -1.1176022553625136 - 2.107879550399411;
        return intercept + slope * (x - 2.107879550399411);
    }
    else if(time <= 236){
        intercept = -1.1176022553625136;
        slope = -0.5216744528736666 - -1.1176022553625136;
        return intercept + slope * (x - -1.1176022553625136);
    }
    else if(time <= 237){
        intercept = -0.5216744528736666;
        slope = -1.7344120266849268 - -0.5216744528736666;
        return intercept + slope * (x - -0.5216744528736666);
    }
    else if(time <= 238){
        intercept = -1.7344120266849268;
        slope = 0.9372282654648348 - -1.7344120266849268;
        return intercept + slope * (x - -1.7344120266849268);
    }
    else if(time <= 239){
        intercept = 0.9372282654648348;
        slope = 0.9534083042886007 - 0.9372282654648348;
        return intercept + slope * (x - 0.9372282654648348);
    }
    else if(time <= 240){
        intercept = 0.9534083042886007;
        slope = -1.0491551723273838 - 0.9534083042886007;
        return intercept + slope * (x - 0.9534083042886007);
    }
    else if(time <= 241){
        intercept = -1.0491551723273838;
        slope = 0.22887680779172967 - -1.0491551723273838;
        return intercept + slope * (x - -1.0491551723273838);
    }
    else if(time <= 242){
        intercept = 0.22887680779172967;
        slope = -1.367318961507206 - 0.22887680779172967;
        return intercept + slope * (x - 0.22887680779172967);
    }
    else if(time <= 243){
        intercept = -1.367318961507206;
        slope = -1.8840311935856098 - -1.367318961507206;
        return intercept + slope * (x - -1.367318961507206);
    }
    else if(time <= 244){
        intercept = -1.8840311935856098;
        slope = 1.2416914200758025 - -1.8840311935856098;
        return intercept + slope * (x - -1.8840311935856098);
    }
    else if(time <= 245){
        intercept = 1.2416914200758025;
        slope = -0.09693965350106006 - 1.2416914200758025;
        return intercept + slope * (x - 1.2416914200758025);
    }
    else if(time <= 246){
        intercept = -0.09693965350106006;
        slope = -1.391456865929644 - -0.09693965350106006;
        return intercept + slope * (x - -0.09693965350106006);
    }
    else if(time <= 247){
        intercept = -1.391456865929644;
        slope = -0.20725197052607747 - -1.391456865929644;
        return intercept + slope * (x - -1.391456865929644);
    }
    else if(time <= 248){
        intercept = -0.20725197052607747;
        slope = 0.33037725082970176 - -0.20725197052607747;
        return intercept + slope * (x - -0.20725197052607747);
    }
    else if(time <= 249){
        intercept = 0.33037725082970176;
        slope = 0.33732465147610124 - 0.33037725082970176;
        return intercept + slope * (x - 0.33037725082970176);
    }
    else if(time <= 250){
        intercept = 0.33732465147610124;
        slope = -1.8887780343052176 - 0.33732465147610124;
        return intercept + slope * (x - 0.33732465147610124);
    }
    else if(time <= 251){
        intercept = -1.8887780343052176;
        slope = -2.0667350083608755 - -1.8887780343052176;
        return intercept + slope * (x - -1.8887780343052176);
    }
    else if(time <= 252){
        intercept = -2.0667350083608755;
        slope = -1.2453669091946618 - -2.0667350083608755;
        return intercept + slope * (x - -2.0667350083608755);
    }
    else if(time <= 253){
        intercept = -1.2453669091946618;
        slope = -0.5284444937509806 - -1.2453669091946618;
        return intercept + slope * (x - -1.2453669091946618);
    }
    else if(time <= 254){
        intercept = -0.5284444937509806;
        slope = 1.275530138602105 - -0.5284444937509806;
        return intercept + slope * (x - -0.5284444937509806);
    }
    else if(time <= 255){
        intercept = 1.275530138602105;
        slope = -0.9733646802939148 - 1.275530138602105;
        return intercept + slope * (x - 1.275530138602105);
    }
    else if(time <= 256){
        intercept = -0.9733646802939148;
        slope = 0.19158945011606793 - -0.9733646802939148;
        return intercept + slope * (x - -0.9733646802939148);
    }
    else if(time <= 257){
        intercept = 0.19158945011606793;
        slope = 1.5508138949650931 - 0.19158945011606793;
        return intercept + slope * (x - 0.19158945011606793);
    }
    else if(time <= 258){
        intercept = 1.5508138949650931;
        slope = -0.9117702465438734 - 1.5508138949650931;
        return intercept + slope * (x - 1.5508138949650931);
    }
    else if(time <= 259){
        intercept = -0.9117702465438734;
        slope = 1.1592001467582123 - -0.9117702465438734;
        return intercept + slope * (x - -0.9117702465438734);
    }
    else if(time <= 260){
        intercept = 1.1592001467582123;
        slope = -1.531244844870404 - 1.1592001467582123;
        return intercept + slope * (x - 1.1592001467582123);
    }
    else if(time <= 261){
        intercept = -1.531244844870404;
        slope = -1.326883967021387 - -1.531244844870404;
        return intercept + slope * (x - -1.531244844870404);
    }
    else if(time <= 262){
        intercept = -1.326883967021387;
        slope = 1.055849209842428 - -1.326883967021387;
        return intercept + slope * (x - -1.326883967021387);
    }
    else if(time <= 263){
        intercept = 1.055849209842428;
        slope = -2.7702499878046734 - 1.055849209842428;
        return intercept + slope * (x - 1.055849209842428);
    }
    else if(time <= 264){
        intercept = -2.7702499878046734;
        slope = -1.1741176529727158 - -2.7702499878046734;
        return intercept + slope * (x - -2.7702499878046734);
    }
    else if(time <= 265){
        intercept = -1.1741176529727158;
        slope = 0.9728344211258599 - -1.1741176529727158;
        return intercept + slope * (x - -1.1741176529727158);
    }
    else if(time <= 266){
        intercept = 0.9728344211258599;
        slope = 0.8088690227524415 - 0.9728344211258599;
        return intercept + slope * (x - 0.9728344211258599);
    }
    else if(time <= 267){
        intercept = 0.8088690227524415;
        slope = 0.9165373474758272 - 0.8088690227524415;
        return intercept + slope * (x - 0.8088690227524415);
    }
    else if(time <= 268){
        intercept = 0.9165373474758272;
        slope = -0.6856941854766537 - 0.9165373474758272;
        return intercept + slope * (x - 0.9165373474758272);
    }
    else if(time <= 269){
        intercept = -0.6856941854766537;
        slope = 1.7874314512671106 - -0.6856941854766537;
        return intercept + slope * (x - -0.6856941854766537);
    }
    else if(time <= 270){
        intercept = 1.7874314512671106;
        slope = -0.754251281665309 - 1.7874314512671106;
        return intercept + slope * (x - 1.7874314512671106);
    }
    else if(time <= 271){
        intercept = -0.754251281665309;
        slope = -0.32995069101610647 - -0.754251281665309;
        return intercept + slope * (x - -0.754251281665309);
    }
    else if(time <= 272){
        intercept = -0.32995069101610647;
        slope = 0.6958467989064857 - -0.32995069101610647;
        return intercept + slope * (x - -0.32995069101610647);
    }
    else if(time <= 273){
        intercept = 0.6958467989064857;
        slope = -0.39362827494604713 - 0.6958467989064857;
        return intercept + slope * (x - 0.6958467989064857);
    }
    else if(time <= 274){
        intercept = -0.39362827494604713;
        slope = 0.831349994944003 - -0.39362827494604713;
        return intercept + slope * (x - -0.39362827494604713);
    }
    else if(time <= 275){
        intercept = 0.831349994944003;
        slope = -1.574895694488441 - 0.831349994944003;
        return intercept + slope * (x - 0.831349994944003);
    }
    else if(time <= 276){
        intercept = -1.574895694488441;
        slope = -0.2868512926491481 - -1.574895694488441;
        return intercept + slope * (x - -1.574895694488441);
    }
    else if(time <= 277){
        intercept = -0.2868512926491481;
        slope = -1.50362285565031 - -0.2868512926491481;
        return intercept + slope * (x - -0.2868512926491481);
    }
    else if(time <= 278){
        intercept = -1.50362285565031;
        slope = -0.6550403387340549 - -1.50362285565031;
        return intercept + slope * (x - -1.50362285565031);
    }
    else if(time <= 279){
        intercept = -0.6550403387340549;
        slope = 1.1147409760018916 - -0.6550403387340549;
        return intercept + slope * (x - -0.6550403387340549);
    }
    else if(time <= 280){
        intercept = 1.1147409760018916;
        slope = -0.07430887523894444 - 1.1147409760018916;
        return intercept + slope * (x - 1.1147409760018916);
    }
    else if(time <= 281){
        intercept = -0.07430887523894444;
        slope = 0.08161549155190331 - -0.07430887523894444;
        return intercept + slope * (x - -0.07430887523894444);
    }
    else if(time <= 282){
        intercept = 0.08161549155190331;
        slope = -0.2871095865655306 - 0.08161549155190331;
        return intercept + slope * (x - 0.08161549155190331);
    }
    else if(time <= 283){
        intercept = -0.2871095865655306;
        slope = 0.22505567175010355 - -0.2871095865655306;
        return intercept + slope * (x - -0.2871095865655306);
    }
    else if(time <= 284){
        intercept = 0.22505567175010355;
        slope = 1.0951856747558548 - 0.22505567175010355;
        return intercept + slope * (x - 0.22505567175010355);
    }
    else if(time <= 285){
        intercept = 1.0951856747558548;
        slope = -0.8618966535932757 - 1.0951856747558548;
        return intercept + slope * (x - 1.0951856747558548);
    }
    else if(time <= 286){
        intercept = -0.8618966535932757;
        slope = -1.550801667564777 - -0.8618966535932757;
        return intercept + slope * (x - -0.8618966535932757);
    }
    else if(time <= 287){
        intercept = -1.550801667564777;
        slope = 0.6276043487246439 - -1.550801667564777;
        return intercept + slope * (x - -1.550801667564777);
    }
    else if(time <= 288){
        intercept = 0.6276043487246439;
        slope = -0.6367072277539553 - 0.6276043487246439;
        return intercept + slope * (x - 0.6276043487246439);
    }
    else if(time <= 289){
        intercept = -0.6367072277539553;
        slope = -0.45651055388657696 - -0.6367072277539553;
        return intercept + slope * (x - -0.6367072277539553);
    }
    else if(time <= 290){
        intercept = -0.45651055388657696;
        slope = -0.44334306017475206 - -0.45651055388657696;
        return intercept + slope * (x - -0.45651055388657696);
    }
    else if(time <= 291){
        intercept = -0.44334306017475206;
        slope = 0.05783360141270621 - -0.44334306017475206;
        return intercept + slope * (x - -0.44334306017475206);
    }
    return 0.05783360141270621;
}

real dataFunc__ran_norm3(real time){
    // DataStructure for variable ran_norm3
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 1.5746582829054756;
        slope = 0.9868092108402696 - 1.5746582829054756;
        return intercept + slope * (x - 1.5746582829054756);
    }
    else if(time <= 2){
        intercept = 0.9868092108402696;
        slope = -1.454215415684406 - 0.9868092108402696;
        return intercept + slope * (x - 0.9868092108402696);
    }
    else if(time <= 3){
        intercept = -1.454215415684406;
        slope = 0.7867282311257076 - -1.454215415684406;
        return intercept + slope * (x - -1.454215415684406);
    }
    else if(time <= 4){
        intercept = 0.7867282311257076;
        slope = -1.4390814028295185 - 0.7867282311257076;
        return intercept + slope * (x - 0.7867282311257076);
    }
    else if(time <= 5){
        intercept = -1.4390814028295185;
        slope = -0.016249921174031356 - -1.4390814028295185;
        return intercept + slope * (x - -1.4390814028295185);
    }
    else if(time <= 6){
        intercept = -0.016249921174031356;
        slope = -0.4236999076335148 - -0.016249921174031356;
        return intercept + slope * (x - -0.016249921174031356);
    }
    else if(time <= 7){
        intercept = -0.4236999076335148;
        slope = 0.2234589880754986 - -0.4236999076335148;
        return intercept + slope * (x - -0.4236999076335148);
    }
    else if(time <= 8){
        intercept = 0.2234589880754986;
        slope = 0.7659516433000193 - 0.2234589880754986;
        return intercept + slope * (x - 0.2234589880754986);
    }
    else if(time <= 9){
        intercept = 0.7659516433000193;
        slope = 0.4261673578900779 - 0.7659516433000193;
        return intercept + slope * (x - 0.7659516433000193);
    }
    else if(time <= 10){
        intercept = 0.4261673578900779;
        slope = -1.2324247913275612 - 0.4261673578900779;
        return intercept + slope * (x - 0.4261673578900779);
    }
    else if(time <= 11){
        intercept = -1.2324247913275612;
        slope = 0.15032211153134245 - -1.2324247913275612;
        return intercept + slope * (x - -1.2324247913275612);
    }
    else if(time <= 12){
        intercept = 0.15032211153134245;
        slope = 1.4677875513746819 - 0.15032211153134245;
        return intercept + slope * (x - 0.15032211153134245);
    }
    else if(time <= 13){
        intercept = 1.4677875513746819;
        slope = 2.3778409813305266 - 1.4677875513746819;
        return intercept + slope * (x - 1.4677875513746819);
    }
    else if(time <= 14){
        intercept = 2.3778409813305266;
        slope = 1.2875181228599775 - 2.3778409813305266;
        return intercept + slope * (x - 2.3778409813305266);
    }
    else if(time <= 15){
        intercept = 1.2875181228599775;
        slope = -1.0726901185733053 - 1.2875181228599775;
        return intercept + slope * (x - 1.2875181228599775);
    }
    else if(time <= 16){
        intercept = -1.0726901185733053;
        slope = -0.8611833618199786 - -1.0726901185733053;
        return intercept + slope * (x - -1.0726901185733053);
    }
    else if(time <= 17){
        intercept = -0.8611833618199786;
        slope = 1.5844707481737603 - -0.8611833618199786;
        return intercept + slope * (x - -0.8611833618199786);
    }
    else if(time <= 18){
        intercept = 1.5844707481737603;
        slope = -0.5428522970860782 - 1.5844707481737603;
        return intercept + slope * (x - 1.5844707481737603);
    }
    else if(time <= 19){
        intercept = -0.5428522970860782;
        slope = -0.04757870257312107 - -0.5428522970860782;
        return intercept + slope * (x - -0.5428522970860782);
    }
    else if(time <= 20){
        intercept = -0.04757870257312107;
        slope = 1.7413160419120561 - -0.04757870257312107;
        return intercept + slope * (x - -0.04757870257312107);
    }
    else if(time <= 21){
        intercept = 1.7413160419120561;
        slope = -1.9172068659257515 - 1.7413160419120561;
        return intercept + slope * (x - 1.7413160419120561);
    }
    else if(time <= 22){
        intercept = -1.9172068659257515;
        slope = 1.6293930139932813 - -1.9172068659257515;
        return intercept + slope * (x - -1.9172068659257515);
    }
    else if(time <= 23){
        intercept = 1.6293930139932813;
        slope = -0.9022378259682983 - 1.6293930139932813;
        return intercept + slope * (x - 1.6293930139932813);
    }
    else if(time <= 24){
        intercept = -0.9022378259682983;
        slope = 1.266146876872595 - -0.9022378259682983;
        return intercept + slope * (x - -0.9022378259682983);
    }
    else if(time <= 25){
        intercept = 1.266146876872595;
        slope = -0.04555143196596185 - 1.266146876872595;
        return intercept + slope * (x - 1.266146876872595);
    }
    else if(time <= 26){
        intercept = -0.04555143196596185;
        slope = 0.07873299732694065 - -0.04555143196596185;
        return intercept + slope * (x - -0.04555143196596185);
    }
    else if(time <= 27){
        intercept = 0.07873299732694065;
        slope = 0.013312460677451857 - 0.07873299732694065;
        return intercept + slope * (x - 0.07873299732694065);
    }
    else if(time <= 28){
        intercept = 0.013312460677451857;
        slope = -0.21383265965444354 - 0.013312460677451857;
        return intercept + slope * (x - 0.013312460677451857);
    }
    else if(time <= 29){
        intercept = -0.21383265965444354;
        slope = -1.3356439072371238 - -0.21383265965444354;
        return intercept + slope * (x - -0.21383265965444354);
    }
    else if(time <= 30){
        intercept = -1.3356439072371238;
        slope = 0.7094606091247068 - -1.3356439072371238;
        return intercept + slope * (x - -1.3356439072371238);
    }
    else if(time <= 31){
        intercept = 0.7094606091247068;
        slope = -0.2628635083359326 - 0.7094606091247068;
        return intercept + slope * (x - 0.7094606091247068);
    }
    else if(time <= 32){
        intercept = -0.2628635083359326;
        slope = 0.3211116748790724 - -0.2628635083359326;
        return intercept + slope * (x - -0.2628635083359326);
    }
    else if(time <= 33){
        intercept = 0.3211116748790724;
        slope = -0.9821347910526096 - 0.3211116748790724;
        return intercept + slope * (x - 0.3211116748790724);
    }
    else if(time <= 34){
        intercept = -0.9821347910526096;
        slope = -0.47216250612063815 - -0.9821347910526096;
        return intercept + slope * (x - -0.9821347910526096);
    }
    else if(time <= 35){
        intercept = -0.47216250612063815;
        slope = -0.2823107602339158 - -0.47216250612063815;
        return intercept + slope * (x - -0.47216250612063815);
    }
    else if(time <= 36){
        intercept = -0.2823107602339158;
        slope = 1.306776872139866 - -0.2823107602339158;
        return intercept + slope * (x - -0.2823107602339158);
    }
    else if(time <= 37){
        intercept = 1.306776872139866;
        slope = -0.23077896124798883 - 1.306776872139866;
        return intercept + slope * (x - 1.306776872139866);
    }
    else if(time <= 38){
        intercept = -0.23077896124798883;
        slope = -1.4998073936720029 - -0.23077896124798883;
        return intercept + slope * (x - -0.23077896124798883);
    }
    else if(time <= 39){
        intercept = -1.4998073936720029;
        slope = -0.9677467350904474 - -1.4998073936720029;
        return intercept + slope * (x - -1.4998073936720029);
    }
    else if(time <= 40){
        intercept = -0.9677467350904474;
        slope = -0.3798576961354161 - -0.9677467350904474;
        return intercept + slope * (x - -0.9677467350904474);
    }
    else if(time <= 41){
        intercept = -0.3798576961354161;
        slope = -1.2755855575784287 - -0.3798576961354161;
        return intercept + slope * (x - -0.3798576961354161);
    }
    else if(time <= 42){
        intercept = -1.2755855575784287;
        slope = 0.48280969201356255 - -1.2755855575784287;
        return intercept + slope * (x - -1.2755855575784287);
    }
    else if(time <= 43){
        intercept = 0.48280969201356255;
        slope = -1.662932510677752 - 0.48280969201356255;
        return intercept + slope * (x - 0.48280969201356255);
    }
    else if(time <= 44){
        intercept = -1.662932510677752;
        slope = 0.6246499235655968 - -1.662932510677752;
        return intercept + slope * (x - -1.662932510677752);
    }
    else if(time <= 45){
        intercept = 0.6246499235655968;
        slope = 0.26283946895664617 - 0.6246499235655968;
        return intercept + slope * (x - 0.6246499235655968);
    }
    else if(time <= 46){
        intercept = 0.26283946895664617;
        slope = 0.5021442974352877 - 0.26283946895664617;
        return intercept + slope * (x - 0.26283946895664617);
    }
    else if(time <= 47){
        intercept = 0.5021442974352877;
        slope = 0.9237440664215614 - 0.5021442974352877;
        return intercept + slope * (x - 0.5021442974352877);
    }
    else if(time <= 48){
        intercept = 0.9237440664215614;
        slope = -0.8761597176945729 - 0.9237440664215614;
        return intercept + slope * (x - 0.9237440664215614);
    }
    else if(time <= 49){
        intercept = -0.8761597176945729;
        slope = 0.6019226384191598 - -0.8761597176945729;
        return intercept + slope * (x - -0.8761597176945729);
    }
    else if(time <= 50){
        intercept = 0.6019226384191598;
        slope = -0.25433915807919466 - 0.6019226384191598;
        return intercept + slope * (x - 0.6019226384191598);
    }
    else if(time <= 51){
        intercept = -0.25433915807919466;
        slope = 0.7378267278572145 - -0.25433915807919466;
        return intercept + slope * (x - -0.25433915807919466);
    }
    else if(time <= 52){
        intercept = 0.7378267278572145;
        slope = -0.3172662545902693 - 0.7378267278572145;
        return intercept + slope * (x - 0.7378267278572145);
    }
    else if(time <= 53){
        intercept = -0.3172662545902693;
        slope = 0.6059587844724427 - -0.3172662545902693;
        return intercept + slope * (x - -0.3172662545902693);
    }
    else if(time <= 54){
        intercept = 0.6059587844724427;
        slope = 0.3086650421599266 - 0.6059587844724427;
        return intercept + slope * (x - 0.6059587844724427);
    }
    else if(time <= 55){
        intercept = 0.3086650421599266;
        slope = -1.7456759171855856 - 0.3086650421599266;
        return intercept + slope * (x - 0.3086650421599266);
    }
    else if(time <= 56){
        intercept = -1.7456759171855856;
        slope = -0.8449831050309113 - -1.7456759171855856;
        return intercept + slope * (x - -1.7456759171855856);
    }
    else if(time <= 57){
        intercept = -0.8449831050309113;
        slope = -0.9749884284872656 - -0.8449831050309113;
        return intercept + slope * (x - -0.8449831050309113);
    }
    else if(time <= 58){
        intercept = -0.9749884284872656;
        slope = -0.7150708208861177 - -0.9749884284872656;
        return intercept + slope * (x - -0.9749884284872656);
    }
    else if(time <= 59){
        intercept = -0.7150708208861177;
        slope = 0.8007898274092812 - -0.7150708208861177;
        return intercept + slope * (x - -0.7150708208861177);
    }
    else if(time <= 60){
        intercept = 0.8007898274092812;
        slope = 1.1899007136296191 - 0.8007898274092812;
        return intercept + slope * (x - 0.8007898274092812);
    }
    else if(time <= 61){
        intercept = 1.1899007136296191;
        slope = -0.04619605983896872 - 1.1899007136296191;
        return intercept + slope * (x - 1.1899007136296191);
    }
    else if(time <= 62){
        intercept = -0.04619605983896872;
        slope = 0.3620655723741995 - -0.04619605983896872;
        return intercept + slope * (x - -0.04619605983896872);
    }
    else if(time <= 63){
        intercept = 0.3620655723741995;
        slope = -0.8585883387729596 - 0.3620655723741995;
        return intercept + slope * (x - 0.3620655723741995);
    }
    else if(time <= 64){
        intercept = -0.8585883387729596;
        slope = -0.5098678678413407 - -0.8585883387729596;
        return intercept + slope * (x - -0.8585883387729596);
    }
    else if(time <= 65){
        intercept = -0.5098678678413407;
        slope = -0.5631209861537984 - -0.5098678678413407;
        return intercept + slope * (x - -0.5098678678413407);
    }
    else if(time <= 66){
        intercept = -0.5631209861537984;
        slope = 0.9081088835596786 - -0.5631209861537984;
        return intercept + slope * (x - -0.5631209861537984);
    }
    else if(time <= 67){
        intercept = 0.9081088835596786;
        slope = 0.31415683319943494 - 0.9081088835596786;
        return intercept + slope * (x - 0.9081088835596786);
    }
    else if(time <= 68){
        intercept = 0.31415683319943494;
        slope = -0.10669200748339958 - 0.31415683319943494;
        return intercept + slope * (x - 0.31415683319943494);
    }
    else if(time <= 69){
        intercept = -0.10669200748339958;
        slope = -0.582946604097711 - -0.10669200748339958;
        return intercept + slope * (x - -0.10669200748339958);
    }
    else if(time <= 70){
        intercept = -0.582946604097711;
        slope = -1.9975144374008138 - -0.582946604097711;
        return intercept + slope * (x - -0.582946604097711);
    }
    else if(time <= 71){
        intercept = -1.9975144374008138;
        slope = -0.142258484330789 - -1.9975144374008138;
        return intercept + slope * (x - -1.9975144374008138);
    }
    else if(time <= 72){
        intercept = -0.142258484330789;
        slope = -0.5823050374426942 - -0.142258484330789;
        return intercept + slope * (x - -0.142258484330789);
    }
    else if(time <= 73){
        intercept = -0.5823050374426942;
        slope = 1.1075882420990228 - -0.5823050374426942;
        return intercept + slope * (x - -0.5823050374426942);
    }
    else if(time <= 74){
        intercept = 1.1075882420990228;
        slope = 0.21227101740438925 - 1.1075882420990228;
        return intercept + slope * (x - 1.1075882420990228);
    }
    else if(time <= 75){
        intercept = 0.21227101740438925;
        slope = 0.4884479807613885 - 0.21227101740438925;
        return intercept + slope * (x - 0.21227101740438925);
    }
    else if(time <= 76){
        intercept = 0.4884479807613885;
        slope = -0.6123646022123606 - 0.4884479807613885;
        return intercept + slope * (x - 0.4884479807613885);
    }
    else if(time <= 77){
        intercept = -0.6123646022123606;
        slope = -1.8295384126922252 - -0.6123646022123606;
        return intercept + slope * (x - -0.6123646022123606);
    }
    else if(time <= 78){
        intercept = -1.8295384126922252;
        slope = 1.4972520707222512 - -1.8295384126922252;
        return intercept + slope * (x - -1.8295384126922252);
    }
    else if(time <= 79){
        intercept = 1.4972520707222512;
        slope = 0.4666706617290986 - 1.4972520707222512;
        return intercept + slope * (x - 1.4972520707222512);
    }
    else if(time <= 80){
        intercept = 0.4666706617290986;
        slope = -0.8394012910252422 - 0.4666706617290986;
        return intercept + slope * (x - 0.4666706617290986);
    }
    else if(time <= 81){
        intercept = -0.8394012910252422;
        slope = 3.2576229232598024 - -0.8394012910252422;
        return intercept + slope * (x - -0.8394012910252422);
    }
    else if(time <= 82){
        intercept = 3.2576229232598024;
        slope = -0.4761943872368306 - 3.2576229232598024;
        return intercept + slope * (x - 3.2576229232598024);
    }
    else if(time <= 83){
        intercept = -0.4761943872368306;
        slope = 0.8529531148275781 - -0.4761943872368306;
        return intercept + slope * (x - -0.4761943872368306);
    }
    else if(time <= 84){
        intercept = 0.8529531148275781;
        slope = 1.683324178807937 - 0.8529531148275781;
        return intercept + slope * (x - 0.8529531148275781);
    }
    else if(time <= 85){
        intercept = 1.683324178807937;
        slope = -2.129661828311454 - 1.683324178807937;
        return intercept + slope * (x - 1.683324178807937);
    }
    else if(time <= 86){
        intercept = -2.129661828311454;
        slope = -1.1262283013522323 - -2.129661828311454;
        return intercept + slope * (x - -2.129661828311454);
    }
    else if(time <= 87){
        intercept = -1.1262283013522323;
        slope = -0.12403962803614127 - -1.1262283013522323;
        return intercept + slope * (x - -1.1262283013522323);
    }
    else if(time <= 88){
        intercept = -0.12403962803614127;
        slope = -0.8270701230488557 - -0.12403962803614127;
        return intercept + slope * (x - -0.12403962803614127);
    }
    else if(time <= 89){
        intercept = -0.8270701230488557;
        slope = 0.9902052860463672 - -0.8270701230488557;
        return intercept + slope * (x - -0.8270701230488557);
    }
    else if(time <= 90){
        intercept = 0.9902052860463672;
        slope = 0.8804731060132219 - 0.9902052860463672;
        return intercept + slope * (x - 0.9902052860463672);
    }
    else if(time <= 91){
        intercept = 0.8804731060132219;
        slope = -1.125383719446625 - 0.8804731060132219;
        return intercept + slope * (x - 0.8804731060132219);
    }
    else if(time <= 92){
        intercept = -1.125383719446625;
        slope = 1.9103225155263248 - -1.125383719446625;
        return intercept + slope * (x - -1.125383719446625);
    }
    else if(time <= 93){
        intercept = 1.9103225155263248;
        slope = 0.6212064047244863 - 1.9103225155263248;
        return intercept + slope * (x - 1.9103225155263248);
    }
    else if(time <= 94){
        intercept = 0.6212064047244863;
        slope = 1.2535100297409878 - 0.6212064047244863;
        return intercept + slope * (x - 0.6212064047244863);
    }
    else if(time <= 95){
        intercept = 1.2535100297409878;
        slope = -0.20045808314572341 - 1.2535100297409878;
        return intercept + slope * (x - 1.2535100297409878);
    }
    else if(time <= 96){
        intercept = -0.20045808314572341;
        slope = -0.9057439416205869 - -0.20045808314572341;
        return intercept + slope * (x - -0.20045808314572341);
    }
    else if(time <= 97){
        intercept = -0.9057439416205869;
        slope = 0.48725891084930256 - -0.9057439416205869;
        return intercept + slope * (x - -0.9057439416205869);
    }
    else if(time <= 98){
        intercept = 0.48725891084930256;
        slope = -0.6051283268041749 - 0.48725891084930256;
        return intercept + slope * (x - 0.48725891084930256);
    }
    else if(time <= 99){
        intercept = -0.6051283268041749;
        slope = 0.3945825420299264 - -0.6051283268041749;
        return intercept + slope * (x - -0.6051283268041749);
    }
    else if(time <= 100){
        intercept = 0.3945825420299264;
        slope = -0.917262634269719 - 0.3945825420299264;
        return intercept + slope * (x - 0.3945825420299264);
    }
    else if(time <= 101){
        intercept = -0.917262634269719;
        slope = -0.20346113993908949 - -0.917262634269719;
        return intercept + slope * (x - -0.917262634269719);
    }
    else if(time <= 102){
        intercept = -0.20346113993908949;
        slope = -0.7666186716620403 - -0.20346113993908949;
        return intercept + slope * (x - -0.20346113993908949);
    }
    else if(time <= 103){
        intercept = -0.7666186716620403;
        slope = 1.2373611125420676 - -0.7666186716620403;
        return intercept + slope * (x - -0.7666186716620403);
    }
    else if(time <= 104){
        intercept = 1.2373611125420676;
        slope = 0.5250581169163014 - 1.2373611125420676;
        return intercept + slope * (x - 1.2373611125420676);
    }
    else if(time <= 105){
        intercept = 0.5250581169163014;
        slope = -0.5443786364209994 - 0.5250581169163014;
        return intercept + slope * (x - 0.5250581169163014);
    }
    else if(time <= 106){
        intercept = -0.5443786364209994;
        slope = 0.5236332755141425 - -0.5443786364209994;
        return intercept + slope * (x - -0.5443786364209994);
    }
    else if(time <= 107){
        intercept = 0.5236332755141425;
        slope = 0.8400592857717043 - 0.5236332755141425;
        return intercept + slope * (x - 0.5236332755141425);
    }
    else if(time <= 108){
        intercept = 0.8400592857717043;
        slope = -1.103320424622411 - 0.8400592857717043;
        return intercept + slope * (x - 0.8400592857717043);
    }
    else if(time <= 109){
        intercept = -1.103320424622411;
        slope = 0.7865369396458063 - -1.103320424622411;
        return intercept + slope * (x - -1.103320424622411);
    }
    else if(time <= 110){
        intercept = 0.7865369396458063;
        slope = -1.718925554046274 - 0.7865369396458063;
        return intercept + slope * (x - 0.7865369396458063);
    }
    else if(time <= 111){
        intercept = -1.718925554046274;
        slope = -0.3057256921346189 - -1.718925554046274;
        return intercept + slope * (x - -1.718925554046274);
    }
    else if(time <= 112){
        intercept = -0.3057256921346189;
        slope = 1.290935111015547 - -0.3057256921346189;
        return intercept + slope * (x - -0.3057256921346189);
    }
    else if(time <= 113){
        intercept = 1.290935111015547;
        slope = 0.9177137627635896 - 1.290935111015547;
        return intercept + slope * (x - 1.290935111015547);
    }
    else if(time <= 114){
        intercept = 0.9177137627635896;
        slope = -0.6376589951000243 - 0.9177137627635896;
        return intercept + slope * (x - 0.9177137627635896);
    }
    else if(time <= 115){
        intercept = -0.6376589951000243;
        slope = 0.3303642635542361 - -0.6376589951000243;
        return intercept + slope * (x - -0.6376589951000243);
    }
    else if(time <= 116){
        intercept = 0.3303642635542361;
        slope = -1.3741659398353228 - 0.3303642635542361;
        return intercept + slope * (x - 0.3303642635542361);
    }
    else if(time <= 117){
        intercept = -1.3741659398353228;
        slope = -0.5393057984865264 - -1.3741659398353228;
        return intercept + slope * (x - -1.3741659398353228);
    }
    else if(time <= 118){
        intercept = -0.5393057984865264;
        slope = -1.1196052602103355 - -0.5393057984865264;
        return intercept + slope * (x - -0.5393057984865264);
    }
    else if(time <= 119){
        intercept = -1.1196052602103355;
        slope = 0.608575989202095 - -1.1196052602103355;
        return intercept + slope * (x - -1.1196052602103355);
    }
    else if(time <= 120){
        intercept = 0.608575989202095;
        slope = -2.041131543754125 - 0.608575989202095;
        return intercept + slope * (x - 0.608575989202095);
    }
    else if(time <= 121){
        intercept = -2.041131543754125;
        slope = -1.724712764546618 - -2.041131543754125;
        return intercept + slope * (x - -2.041131543754125);
    }
    else if(time <= 122){
        intercept = -1.724712764546618;
        slope = 1.668877504569684 - -1.724712764546618;
        return intercept + slope * (x - -1.724712764546618);
    }
    else if(time <= 123){
        intercept = 1.668877504569684;
        slope = 0.3995389412390266 - 1.668877504569684;
        return intercept + slope * (x - 1.668877504569684);
    }
    else if(time <= 124){
        intercept = 0.3995389412390266;
        slope = -1.2213905754815924 - 0.3995389412390266;
        return intercept + slope * (x - 0.3995389412390266);
    }
    else if(time <= 125){
        intercept = -1.2213905754815924;
        slope = 0.460055030984755 - -1.2213905754815924;
        return intercept + slope * (x - -1.2213905754815924);
    }
    else if(time <= 126){
        intercept = 0.460055030984755;
        slope = -0.27423576289925555 - 0.460055030984755;
        return intercept + slope * (x - 0.460055030984755);
    }
    else if(time <= 127){
        intercept = -0.27423576289925555;
        slope = -0.5162817604794709 - -0.27423576289925555;
        return intercept + slope * (x - -0.27423576289925555);
    }
    else if(time <= 128){
        intercept = -0.5162817604794709;
        slope = -0.00744706831546081 - -0.5162817604794709;
        return intercept + slope * (x - -0.5162817604794709);
    }
    else if(time <= 129){
        intercept = -0.00744706831546081;
        slope = 0.6390648561965261 - -0.00744706831546081;
        return intercept + slope * (x - -0.00744706831546081);
    }
    else if(time <= 130){
        intercept = 0.6390648561965261;
        slope = 0.36592707042747996 - 0.6390648561965261;
        return intercept + slope * (x - 0.6390648561965261);
    }
    else if(time <= 131){
        intercept = 0.36592707042747996;
        slope = 1.1394936195367888 - 0.36592707042747996;
        return intercept + slope * (x - 0.36592707042747996);
    }
    else if(time <= 132){
        intercept = 1.1394936195367888;
        slope = 2.002315250688776 - 1.1394936195367888;
        return intercept + slope * (x - 1.1394936195367888);
    }
    else if(time <= 133){
        intercept = 2.002315250688776;
        slope = 0.7977741184554012 - 2.002315250688776;
        return intercept + slope * (x - 2.002315250688776);
    }
    else if(time <= 134){
        intercept = 0.7977741184554012;
        slope = -0.16428571029127315 - 0.7977741184554012;
        return intercept + slope * (x - 0.7977741184554012);
    }
    else if(time <= 135){
        intercept = -0.16428571029127315;
        slope = -0.3859611581083209 - -0.16428571029127315;
        return intercept + slope * (x - -0.16428571029127315);
    }
    else if(time <= 136){
        intercept = -0.3859611581083209;
        slope = 1.0921048901669854 - -0.3859611581083209;
        return intercept + slope * (x - -0.3859611581083209);
    }
    else if(time <= 137){
        intercept = 1.0921048901669854;
        slope = -0.6363351874266449 - 1.0921048901669854;
        return intercept + slope * (x - 1.0921048901669854);
    }
    else if(time <= 138){
        intercept = -0.6363351874266449;
        slope = 0.73903445923562 - -0.6363351874266449;
        return intercept + slope * (x - -0.6363351874266449);
    }
    else if(time <= 139){
        intercept = 0.73903445923562;
        slope = 3.3536181588224285 - 0.73903445923562;
        return intercept + slope * (x - 0.73903445923562);
    }
    else if(time <= 140){
        intercept = 3.3536181588224285;
        slope = 1.2321469721757767 - 3.3536181588224285;
        return intercept + slope * (x - 3.3536181588224285);
    }
    else if(time <= 141){
        intercept = 1.2321469721757767;
        slope = 0.44966433276166345 - 1.2321469721757767;
        return intercept + slope * (x - 1.2321469721757767);
    }
    else if(time <= 142){
        intercept = 0.44966433276166345;
        slope = 0.47443342935229016 - 0.44966433276166345;
        return intercept + slope * (x - 0.44966433276166345);
    }
    else if(time <= 143){
        intercept = 0.47443342935229016;
        slope = -1.173152050416291 - 0.47443342935229016;
        return intercept + slope * (x - 0.47443342935229016);
    }
    else if(time <= 144){
        intercept = -1.173152050416291;
        slope = 0.16601847388109964 - -1.173152050416291;
        return intercept + slope * (x - -1.173152050416291);
    }
    else if(time <= 145){
        intercept = 0.16601847388109964;
        slope = -1.5942979599549805 - 0.16601847388109964;
        return intercept + slope * (x - 0.16601847388109964);
    }
    else if(time <= 146){
        intercept = -1.5942979599549805;
        slope = -0.24227535803688272 - -1.5942979599549805;
        return intercept + slope * (x - -1.5942979599549805);
    }
    else if(time <= 147){
        intercept = -0.24227535803688272;
        slope = 0.7017941159643698 - -0.24227535803688272;
        return intercept + slope * (x - -0.24227535803688272);
    }
    else if(time <= 148){
        intercept = 0.7017941159643698;
        slope = 1.21919302846449 - 0.7017941159643698;
        return intercept + slope * (x - 0.7017941159643698);
    }
    else if(time <= 149){
        intercept = 1.21919302846449;
        slope = 0.03305936540219368 - 1.21919302846449;
        return intercept + slope * (x - 1.21919302846449);
    }
    else if(time <= 150){
        intercept = 0.03305936540219368;
        slope = -0.40040439025588337 - 0.03305936540219368;
        return intercept + slope * (x - 0.03305936540219368);
    }
    else if(time <= 151){
        intercept = -0.40040439025588337;
        slope = 0.29386551863886295 - -0.40040439025588337;
        return intercept + slope * (x - -0.40040439025588337);
    }
    else if(time <= 152){
        intercept = 0.29386551863886295;
        slope = 0.6642445045111034 - 0.29386551863886295;
        return intercept + slope * (x - 0.29386551863886295);
    }
    else if(time <= 153){
        intercept = 0.6642445045111034;
        slope = 0.03771956155787736 - 0.6642445045111034;
        return intercept + slope * (x - 0.6642445045111034);
    }
    else if(time <= 154){
        intercept = 0.03771956155787736;
        slope = -1.8620762777767312 - 0.03771956155787736;
        return intercept + slope * (x - 0.03771956155787736);
    }
    else if(time <= 155){
        intercept = -1.8620762777767312;
        slope = -0.25219546720665076 - -1.8620762777767312;
        return intercept + slope * (x - -1.8620762777767312);
    }
    else if(time <= 156){
        intercept = -0.25219546720665076;
        slope = -0.5448343286717683 - -0.25219546720665076;
        return intercept + slope * (x - -0.25219546720665076);
    }
    else if(time <= 157){
        intercept = -0.5448343286717683;
        slope = 0.337280375138526 - -0.5448343286717683;
        return intercept + slope * (x - -0.5448343286717683);
    }
    else if(time <= 158){
        intercept = 0.337280375138526;
        slope = 0.7190569982640267 - 0.337280375138526;
        return intercept + slope * (x - 0.337280375138526);
    }
    else if(time <= 159){
        intercept = 0.7190569982640267;
        slope = 0.9087274359775804 - 0.7190569982640267;
        return intercept + slope * (x - 0.7190569982640267);
    }
    else if(time <= 160){
        intercept = 0.9087274359775804;
        slope = -1.8017998980147003 - 0.9087274359775804;
        return intercept + slope * (x - 0.9087274359775804);
    }
    else if(time <= 161){
        intercept = -1.8017998980147003;
        slope = -0.959051233674413 - -1.8017998980147003;
        return intercept + slope * (x - -1.8017998980147003);
    }
    else if(time <= 162){
        intercept = -0.959051233674413;
        slope = -1.1904779432005945 - -0.959051233674413;
        return intercept + slope * (x - -0.959051233674413);
    }
    else if(time <= 163){
        intercept = -1.1904779432005945;
        slope = -0.7837334466514504 - -1.1904779432005945;
        return intercept + slope * (x - -1.1904779432005945);
    }
    else if(time <= 164){
        intercept = -0.7837334466514504;
        slope = 1.509839656668401 - -0.7837334466514504;
        return intercept + slope * (x - -0.7837334466514504);
    }
    else if(time <= 165){
        intercept = 1.509839656668401;
        slope = -0.436711219469284 - 1.509839656668401;
        return intercept + slope * (x - 1.509839656668401);
    }
    else if(time <= 166){
        intercept = -0.436711219469284;
        slope = -1.4885884357166232 - -0.436711219469284;
        return intercept + slope * (x - -0.436711219469284);
    }
    else if(time <= 167){
        intercept = -1.4885884357166232;
        slope = -0.5930907326287463 - -1.4885884357166232;
        return intercept + slope * (x - -1.4885884357166232);
    }
    else if(time <= 168){
        intercept = -0.5930907326287463;
        slope = 3.3665098433420217 - -0.5930907326287463;
        return intercept + slope * (x - -0.5930907326287463);
    }
    else if(time <= 169){
        intercept = 3.3665098433420217;
        slope = -0.31857136634943994 - 3.3665098433420217;
        return intercept + slope * (x - 3.3665098433420217);
    }
    else if(time <= 170){
        intercept = -0.31857136634943994;
        slope = 1.6825473221790452 - -0.31857136634943994;
        return intercept + slope * (x - -0.31857136634943994);
    }
    else if(time <= 171){
        intercept = 1.6825473221790452;
        slope = 2.4586609299174196 - 1.6825473221790452;
        return intercept + slope * (x - 1.6825473221790452);
    }
    else if(time <= 172){
        intercept = 2.4586609299174196;
        slope = 0.45065836799649855 - 2.4586609299174196;
        return intercept + slope * (x - 2.4586609299174196);
    }
    else if(time <= 173){
        intercept = 0.45065836799649855;
        slope = -0.5909587922775097 - 0.45065836799649855;
        return intercept + slope * (x - 0.45065836799649855);
    }
    else if(time <= 174){
        intercept = -0.5909587922775097;
        slope = -0.17101687340998045 - -0.5909587922775097;
        return intercept + slope * (x - -0.5909587922775097);
    }
    else if(time <= 175){
        intercept = -0.17101687340998045;
        slope = 0.05767015643955339 - -0.17101687340998045;
        return intercept + slope * (x - -0.17101687340998045);
    }
    else if(time <= 176){
        intercept = 0.05767015643955339;
        slope = -1.8182029001837297 - 0.05767015643955339;
        return intercept + slope * (x - 0.05767015643955339);
    }
    else if(time <= 177){
        intercept = -1.8182029001837297;
        slope = -0.3012518009262944 - -1.8182029001837297;
        return intercept + slope * (x - -1.8182029001837297);
    }
    else if(time <= 178){
        intercept = -0.3012518009262944;
        slope = -1.5369117053749577 - -0.3012518009262944;
        return intercept + slope * (x - -0.3012518009262944);
    }
    else if(time <= 179){
        intercept = -1.5369117053749577;
        slope = -1.2748635875118992 - -1.5369117053749577;
        return intercept + slope * (x - -1.5369117053749577);
    }
    else if(time <= 180){
        intercept = -1.2748635875118992;
        slope = 0.04808799957565056 - -1.2748635875118992;
        return intercept + slope * (x - -1.2748635875118992);
    }
    else if(time <= 181){
        intercept = 0.04808799957565056;
        slope = -1.5997193691793665 - 0.04808799957565056;
        return intercept + slope * (x - 0.04808799957565056);
    }
    else if(time <= 182){
        intercept = -1.5997193691793665;
        slope = 1.4610259347549506 - -1.5997193691793665;
        return intercept + slope * (x - -1.5997193691793665);
    }
    else if(time <= 183){
        intercept = 1.4610259347549506;
        slope = 2.096414722864375 - 1.4610259347549506;
        return intercept + slope * (x - 1.4610259347549506);
    }
    else if(time <= 184){
        intercept = 2.096414722864375;
        slope = -0.38670587281241986 - 2.096414722864375;
        return intercept + slope * (x - 2.096414722864375);
    }
    else if(time <= 185){
        intercept = -0.38670587281241986;
        slope = 0.9928686719536599 - -0.38670587281241986;
        return intercept + slope * (x - -0.38670587281241986);
    }
    else if(time <= 186){
        intercept = 0.9928686719536599;
        slope = 1.2034019122648172 - 0.9928686719536599;
        return intercept + slope * (x - 0.9928686719536599);
    }
    else if(time <= 187){
        intercept = 1.2034019122648172;
        slope = 0.31673266852369236 - 1.2034019122648172;
        return intercept + slope * (x - 1.2034019122648172);
    }
    else if(time <= 188){
        intercept = 0.31673266852369236;
        slope = 1.4341988446187528 - 0.31673266852369236;
        return intercept + slope * (x - 0.31673266852369236);
    }
    else if(time <= 189){
        intercept = 1.4341988446187528;
        slope = 0.23638840834697675 - 1.4341988446187528;
        return intercept + slope * (x - 1.4341988446187528);
    }
    else if(time <= 190){
        intercept = 0.23638840834697675;
        slope = 1.4693016350180887 - 0.23638840834697675;
        return intercept + slope * (x - 0.23638840834697675);
    }
    else if(time <= 191){
        intercept = 1.4693016350180887;
        slope = -0.8718285401343768 - 1.4693016350180887;
        return intercept + slope * (x - 1.4693016350180887);
    }
    else if(time <= 192){
        intercept = -0.8718285401343768;
        slope = 0.2490878289445329 - -0.8718285401343768;
        return intercept + slope * (x - -0.8718285401343768);
    }
    else if(time <= 193){
        intercept = 0.2490878289445329;
        slope = -0.4149333417708321 - 0.2490878289445329;
        return intercept + slope * (x - 0.2490878289445329);
    }
    else if(time <= 194){
        intercept = -0.4149333417708321;
        slope = -0.7188883911557536 - -0.4149333417708321;
        return intercept + slope * (x - -0.4149333417708321);
    }
    else if(time <= 195){
        intercept = -0.7188883911557536;
        slope = -0.9518640755625316 - -0.7188883911557536;
        return intercept + slope * (x - -0.7188883911557536);
    }
    else if(time <= 196){
        intercept = -0.9518640755625316;
        slope = 2.260417383278651 - -0.9518640755625316;
        return intercept + slope * (x - -0.9518640755625316);
    }
    else if(time <= 197){
        intercept = 2.260417383278651;
        slope = 1.008974467973743 - 2.260417383278651;
        return intercept + slope * (x - 2.260417383278651);
    }
    else if(time <= 198){
        intercept = 1.008974467973743;
        slope = -0.7636272096002763 - 1.008974467973743;
        return intercept + slope * (x - 1.008974467973743);
    }
    else if(time <= 199){
        intercept = -0.7636272096002763;
        slope = -1.9592095931537392 - -0.7636272096002763;
        return intercept + slope * (x - -0.7636272096002763);
    }
    else if(time <= 200){
        intercept = -1.9592095931537392;
        slope = 1.674271112745857 - -1.9592095931537392;
        return intercept + slope * (x - -1.9592095931537392);
    }
    else if(time <= 201){
        intercept = 1.674271112745857;
        slope = 0.15818816791695667 - 1.674271112745857;
        return intercept + slope * (x - 1.674271112745857);
    }
    else if(time <= 202){
        intercept = 0.15818816791695667;
        slope = -1.1998307614332018 - 0.15818816791695667;
        return intercept + slope * (x - 0.15818816791695667);
    }
    else if(time <= 203){
        intercept = -1.1998307614332018;
        slope = 0.36276873866170545 - -1.1998307614332018;
        return intercept + slope * (x - -1.1998307614332018);
    }
    else if(time <= 204){
        intercept = 0.36276873866170545;
        slope = 0.5236725745260303 - 0.36276873866170545;
        return intercept + slope * (x - 0.36276873866170545);
    }
    else if(time <= 205){
        intercept = 0.5236725745260303;
        slope = 0.5840485630589635 - 0.5236725745260303;
        return intercept + slope * (x - 0.5236725745260303);
    }
    else if(time <= 206){
        intercept = 0.5840485630589635;
        slope = -0.9725559758752832 - 0.5840485630589635;
        return intercept + slope * (x - 0.5840485630589635);
    }
    else if(time <= 207){
        intercept = -0.9725559758752832;
        slope = -0.6695488748817491 - -0.9725559758752832;
        return intercept + slope * (x - -0.9725559758752832);
    }
    else if(time <= 208){
        intercept = -0.6695488748817491;
        slope = -1.134786285153664 - -0.6695488748817491;
        return intercept + slope * (x - -0.6695488748817491);
    }
    else if(time <= 209){
        intercept = -1.134786285153664;
        slope = 0.5514717407163264 - -1.134786285153664;
        return intercept + slope * (x - -1.134786285153664);
    }
    else if(time <= 210){
        intercept = 0.5514717407163264;
        slope = -1.3398659451147805 - 0.5514717407163264;
        return intercept + slope * (x - 0.5514717407163264);
    }
    else if(time <= 211){
        intercept = -1.3398659451147805;
        slope = 1.6902653654443005 - -1.3398659451147805;
        return intercept + slope * (x - -1.3398659451147805);
    }
    else if(time <= 212){
        intercept = 1.6902653654443005;
        slope = -0.21744630094011588 - 1.6902653654443005;
        return intercept + slope * (x - 1.6902653654443005);
    }
    else if(time <= 213){
        intercept = -0.21744630094011588;
        slope = 0.14734418018206957 - -0.21744630094011588;
        return intercept + slope * (x - -0.21744630094011588);
    }
    else if(time <= 214){
        intercept = 0.14734418018206957;
        slope = 0.1762796119631377 - 0.14734418018206957;
        return intercept + slope * (x - 0.14734418018206957);
    }
    else if(time <= 215){
        intercept = 0.1762796119631377;
        slope = 0.9602855326480738 - 0.1762796119631377;
        return intercept + slope * (x - 0.1762796119631377);
    }
    else if(time <= 216){
        intercept = 0.9602855326480738;
        slope = -0.35715776614365863 - 0.9602855326480738;
        return intercept + slope * (x - 0.9602855326480738);
    }
    else if(time <= 217){
        intercept = -0.35715776614365863;
        slope = -0.14139911334170902 - -0.35715776614365863;
        return intercept + slope * (x - -0.35715776614365863);
    }
    else if(time <= 218){
        intercept = -0.14139911334170902;
        slope = 0.11801825966794541 - -0.14139911334170902;
        return intercept + slope * (x - -0.14139911334170902);
    }
    else if(time <= 219){
        intercept = 0.11801825966794541;
        slope = -0.15161206885084527 - 0.11801825966794541;
        return intercept + slope * (x - 0.11801825966794541);
    }
    else if(time <= 220){
        intercept = -0.15161206885084527;
        slope = 0.5902900886927659 - -0.15161206885084527;
        return intercept + slope * (x - -0.15161206885084527);
    }
    else if(time <= 221){
        intercept = 0.5902900886927659;
        slope = -1.2222509980175729 - 0.5902900886927659;
        return intercept + slope * (x - 0.5902900886927659);
    }
    else if(time <= 222){
        intercept = -1.2222509980175729;
        slope = 1.2010625694584014 - -1.2222509980175729;
        return intercept + slope * (x - -1.2222509980175729);
    }
    else if(time <= 223){
        intercept = 1.2010625694584014;
        slope = 0.8932423896028777 - 1.2010625694584014;
        return intercept + slope * (x - 1.2010625694584014);
    }
    else if(time <= 224){
        intercept = 0.8932423896028777;
        slope = -2.105449657292294 - 0.8932423896028777;
        return intercept + slope * (x - 0.8932423896028777);
    }
    else if(time <= 225){
        intercept = -2.105449657292294;
        slope = 0.3443611328120446 - -2.105449657292294;
        return intercept + slope * (x - -2.105449657292294);
    }
    else if(time <= 226){
        intercept = 0.3443611328120446;
        slope = 0.2164504369488322 - 0.3443611328120446;
        return intercept + slope * (x - 0.3443611328120446);
    }
    else if(time <= 227){
        intercept = 0.2164504369488322;
        slope = 0.15664795759185926 - 0.2164504369488322;
        return intercept + slope * (x - 0.2164504369488322);
    }
    else if(time <= 228){
        intercept = 0.15664795759185926;
        slope = -1.4376741325053004 - 0.15664795759185926;
        return intercept + slope * (x - 0.15664795759185926);
    }
    else if(time <= 229){
        intercept = -1.4376741325053004;
        slope = 1.3655184449392248 - -1.4376741325053004;
        return intercept + slope * (x - -1.4376741325053004);
    }
    else if(time <= 230){
        intercept = 1.3655184449392248;
        slope = -1.611636790959044 - 1.3655184449392248;
        return intercept + slope * (x - 1.3655184449392248);
    }
    else if(time <= 231){
        intercept = -1.611636790959044;
        slope = 0.5691235759661493 - -1.611636790959044;
        return intercept + slope * (x - -1.611636790959044);
    }
    else if(time <= 232){
        intercept = 0.5691235759661493;
        slope = -1.1629905181764495 - 0.5691235759661493;
        return intercept + slope * (x - 0.5691235759661493);
    }
    else if(time <= 233){
        intercept = -1.1629905181764495;
        slope = -1.029730189590685 - -1.1629905181764495;
        return intercept + slope * (x - -1.1629905181764495);
    }
    else if(time <= 234){
        intercept = -1.029730189590685;
        slope = -1.5230298208989785 - -1.029730189590685;
        return intercept + slope * (x - -1.029730189590685);
    }
    else if(time <= 235){
        intercept = -1.5230298208989785;
        slope = 0.48033803107667655 - -1.5230298208989785;
        return intercept + slope * (x - -1.5230298208989785);
    }
    else if(time <= 236){
        intercept = 0.48033803107667655;
        slope = 0.3551704630363718 - 0.48033803107667655;
        return intercept + slope * (x - 0.48033803107667655);
    }
    else if(time <= 237){
        intercept = 0.3551704630363718;
        slope = -1.0052003147752653 - 0.3551704630363718;
        return intercept + slope * (x - 0.3551704630363718);
    }
    else if(time <= 238){
        intercept = -1.0052003147752653;
        slope = 0.23055839476666273 - -1.0052003147752653;
        return intercept + slope * (x - -1.0052003147752653);
    }
    else if(time <= 239){
        intercept = 0.23055839476666273;
        slope = 1.743659432522373 - 0.23055839476666273;
        return intercept + slope * (x - 0.23055839476666273);
    }
    else if(time <= 240){
        intercept = 1.743659432522373;
        slope = -0.06974457092314856 - 1.743659432522373;
        return intercept + slope * (x - 1.743659432522373);
    }
    else if(time <= 241){
        intercept = -0.06974457092314856;
        slope = 0.30242617497525615 - -0.06974457092314856;
        return intercept + slope * (x - -0.06974457092314856);
    }
    else if(time <= 242){
        intercept = 0.30242617497525615;
        slope = -0.7781637729338883 - 0.30242617497525615;
        return intercept + slope * (x - 0.30242617497525615);
    }
    else if(time <= 243){
        intercept = -0.7781637729338883;
        slope = -1.0554333104943008 - -0.7781637729338883;
        return intercept + slope * (x - -0.7781637729338883);
    }
    else if(time <= 244){
        intercept = -1.0554333104943008;
        slope = 0.7061762440115046 - -1.0554333104943008;
        return intercept + slope * (x - -1.0554333104943008);
    }
    else if(time <= 245){
        intercept = 0.7061762440115046;
        slope = 0.7337672557189953 - 0.7061762440115046;
        return intercept + slope * (x - 0.7061762440115046);
    }
    else if(time <= 246){
        intercept = 0.7337672557189953;
        slope = -1.8056198161669945 - 0.7337672557189953;
        return intercept + slope * (x - 0.7337672557189953);
    }
    else if(time <= 247){
        intercept = -1.8056198161669945;
        slope = 1.2911563301671412 - -1.8056198161669945;
        return intercept + slope * (x - -1.8056198161669945);
    }
    else if(time <= 248){
        intercept = 1.2911563301671412;
        slope = 1.0577773437131603 - 1.2911563301671412;
        return intercept + slope * (x - 1.2911563301671412);
    }
    else if(time <= 249){
        intercept = 1.0577773437131603;
        slope = -2.3906375202482564 - 1.0577773437131603;
        return intercept + slope * (x - 1.0577773437131603);
    }
    else if(time <= 250){
        intercept = -2.3906375202482564;
        slope = -0.9500971436269916 - -2.3906375202482564;
        return intercept + slope * (x - -2.3906375202482564);
    }
    else if(time <= 251){
        intercept = -0.9500971436269916;
        slope = 0.19845094585111478 - -0.9500971436269916;
        return intercept + slope * (x - -0.9500971436269916);
    }
    else if(time <= 252){
        intercept = 0.19845094585111478;
        slope = -0.892664073585393 - 0.19845094585111478;
        return intercept + slope * (x - 0.19845094585111478);
    }
    else if(time <= 253){
        intercept = -0.892664073585393;
        slope = 0.7019627759802809 - -0.892664073585393;
        return intercept + slope * (x - -0.892664073585393);
    }
    else if(time <= 254){
        intercept = 0.7019627759802809;
        slope = 0.26304192703120616 - 0.7019627759802809;
        return intercept + slope * (x - 0.7019627759802809);
    }
    else if(time <= 255){
        intercept = 0.26304192703120616;
        slope = 0.8987458214077624 - 0.26304192703120616;
        return intercept + slope * (x - 0.26304192703120616);
    }
    else if(time <= 256){
        intercept = 0.8987458214077624;
        slope = -0.53840402771231 - 0.8987458214077624;
        return intercept + slope * (x - 0.8987458214077624);
    }
    else if(time <= 257){
        intercept = -0.53840402771231;
        slope = 2.0623455868305722 - -0.53840402771231;
        return intercept + slope * (x - -0.53840402771231);
    }
    else if(time <= 258){
        intercept = 2.0623455868305722;
        slope = 0.2097260861337407 - 2.0623455868305722;
        return intercept + slope * (x - 2.0623455868305722);
    }
    else if(time <= 259){
        intercept = 0.2097260861337407;
        slope = 1.7952386678162533 - 0.2097260861337407;
        return intercept + slope * (x - 0.2097260861337407);
    }
    else if(time <= 260){
        intercept = 1.7952386678162533;
        slope = 1.2195808160082657 - 1.7952386678162533;
        return intercept + slope * (x - 1.7952386678162533);
    }
    else if(time <= 261){
        intercept = 1.2195808160082657;
        slope = 1.702441523483337 - 1.2195808160082657;
        return intercept + slope * (x - 1.2195808160082657);
    }
    else if(time <= 262){
        intercept = 1.702441523483337;
        slope = -1.0090561824227837 - 1.702441523483337;
        return intercept + slope * (x - 1.702441523483337);
    }
    else if(time <= 263){
        intercept = -1.0090561824227837;
        slope = 1.01674812511622 - -1.0090561824227837;
        return intercept + slope * (x - -1.0090561824227837);
    }
    else if(time <= 264){
        intercept = 1.01674812511622;
        slope = -0.8306659718049227 - 1.01674812511622;
        return intercept + slope * (x - 1.01674812511622);
    }
    else if(time <= 265){
        intercept = -0.8306659718049227;
        slope = -0.3688123201222364 - -0.8306659718049227;
        return intercept + slope * (x - -0.8306659718049227);
    }
    else if(time <= 266){
        intercept = -0.3688123201222364;
        slope = -0.6922250901871699 - -0.3688123201222364;
        return intercept + slope * (x - -0.3688123201222364);
    }
    else if(time <= 267){
        intercept = -0.6922250901871699;
        slope = -0.9755701002247794 - -0.6922250901871699;
        return intercept + slope * (x - -0.6922250901871699);
    }
    else if(time <= 268){
        intercept = -0.9755701002247794;
        slope = 1.2749279758043353 - -0.9755701002247794;
        return intercept + slope * (x - -0.9755701002247794);
    }
    else if(time <= 269){
        intercept = 1.2749279758043353;
        slope = -0.22795862766678537 - 1.2749279758043353;
        return intercept + slope * (x - 1.2749279758043353);
    }
    else if(time <= 270){
        intercept = -0.22795862766678537;
        slope = 0.3061377520171428 - -0.22795862766678537;
        return intercept + slope * (x - -0.22795862766678537);
    }
    else if(time <= 271){
        intercept = 0.3061377520171428;
        slope = -0.5545748567754178 - 0.3061377520171428;
        return intercept + slope * (x - 0.3061377520171428);
    }
    else if(time <= 272){
        intercept = -0.5545748567754178;
        slope = -0.1955550961555803 - -0.5545748567754178;
        return intercept + slope * (x - -0.5545748567754178);
    }
    else if(time <= 273){
        intercept = -0.1955550961555803;
        slope = -0.07093583285387901 - -0.1955550961555803;
        return intercept + slope * (x - -0.1955550961555803);
    }
    else if(time <= 274){
        intercept = -0.07093583285387901;
        slope = -0.6872647975830949 - -0.07093583285387901;
        return intercept + slope * (x - -0.07093583285387901);
    }
    else if(time <= 275){
        intercept = -0.6872647975830949;
        slope = -1.2143542886354894 - -0.6872647975830949;
        return intercept + slope * (x - -0.6872647975830949);
    }
    else if(time <= 276){
        intercept = -1.2143542886354894;
        slope = -0.10906846447939673 - -1.2143542886354894;
        return intercept + slope * (x - -1.2143542886354894);
    }
    else if(time <= 277){
        intercept = -0.10906846447939673;
        slope = 0.4848656897964901 - -0.10906846447939673;
        return intercept + slope * (x - -0.10906846447939673);
    }
    else if(time <= 278){
        intercept = 0.4848656897964901;
        slope = -1.6547263546536173 - 0.4848656897964901;
        return intercept + slope * (x - 0.4848656897964901);
    }
    else if(time <= 279){
        intercept = -1.6547263546536173;
        slope = -0.6894286727122464 - -1.6547263546536173;
        return intercept + slope * (x - -1.6547263546536173);
    }
    else if(time <= 280){
        intercept = -0.6894286727122464;
        slope = 0.6639369723401838 - -0.6894286727122464;
        return intercept + slope * (x - -0.6894286727122464);
    }
    else if(time <= 281){
        intercept = 0.6639369723401838;
        slope = 1.391792226451344 - 0.6639369723401838;
        return intercept + slope * (x - 0.6639369723401838);
    }
    else if(time <= 282){
        intercept = 1.391792226451344;
        slope = -0.23141537692749242 - 1.391792226451344;
        return intercept + slope * (x - 1.391792226451344);
    }
    else if(time <= 283){
        intercept = -0.23141537692749242;
        slope = -0.644269923607363 - -0.23141537692749242;
        return intercept + slope * (x - -0.23141537692749242);
    }
    else if(time <= 284){
        intercept = -0.644269923607363;
        slope = -0.03327737603617581 - -0.644269923607363;
        return intercept + slope * (x - -0.644269923607363);
    }
    else if(time <= 285){
        intercept = -0.03327737603617581;
        slope = 1.3579135985220852 - -0.03327737603617581;
        return intercept + slope * (x - -0.03327737603617581);
    }
    else if(time <= 286){
        intercept = 1.3579135985220852;
        slope = 0.5880026023215974 - 1.3579135985220852;
        return intercept + slope * (x - 1.3579135985220852);
    }
    else if(time <= 287){
        intercept = 0.5880026023215974;
        slope = -0.3850970399550458 - 0.5880026023215974;
        return intercept + slope * (x - 0.5880026023215974);
    }
    else if(time <= 288){
        intercept = -0.3850970399550458;
        slope = 0.660580942283063 - -0.3850970399550458;
        return intercept + slope * (x - -0.3850970399550458);
    }
    else if(time <= 289){
        intercept = 0.660580942283063;
        slope = 1.000433453059598 - 0.660580942283063;
        return intercept + slope * (x - 0.660580942283063);
    }
    else if(time <= 290){
        intercept = 1.000433453059598;
        slope = -0.6094649584317953 - 1.000433453059598;
        return intercept + slope * (x - 1.000433453059598);
    }
    else if(time <= 291){
        intercept = -0.6094649584317953;
        slope = -0.20348440436041235 - -0.6094649584317953;
        return intercept + slope * (x - -0.6094649584317953);
    }
    return -0.20348440436041235;
}

vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time, real minimum_order_processing_time){
    vector[6] dydt;  // Return vector of the ODE function

    // State variables
    real work_in_process_inventory = outcome[1];
    real inventory = outcome[2];
    real inventory_with_p_noise = outcome[3];
    real backlog = outcome[4];
    real wip_with_p_noise = outcome[5];
    real expected_order_rate = outcome[6];

    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real manufacturing_cycle_time = 8;
    real desired_wip = manufacturing_cycle_time * desired_production;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real ran_norm1 = None;
    real ran_norm2 = None;
    real process_corr_time = 3;
    real time_step = 0.0625;
    real p_noise_scale = 0.1;
    real wip_wo_p_noise = work_in_process_inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm1(time);
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real inventory_dydt = production_rate - shipment_rate;
    real inventory_wo_p_noise = inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm2(time);
    real inventory_with_p_noise_change_rate = inventory_wo_p_noise - inventory_with_p_noise / process_corr_time;
    real order_fulfillment_rate = shipment_rate;
    real wip_with_p_noise_change_rate = wip_wo_p_noise - wip_with_p_noise / process_corr_time;
    real customer_order_rate = None;
    real order_rate = dataFunc__customer_order_rate(time);
    real inventory_with_p_noise_dydt = inventory_with_p_noise_change_rate;
    real time_to_average_order_rate = 8;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real wip_with_p_noise_dydt = wip_with_p_noise_change_rate;

    dydt[1] = work_in_process_inventory_dydt;
    dydt[2] = inventory_dydt;
    dydt[3] = inventory_with_p_noise_dydt;
    dydt[4] = backlog_dydt;
    dydt[5] = wip_with_p_noise_dydt;
    dydt[6] = expected_order_rate_dydt;

    return dydt;
}
