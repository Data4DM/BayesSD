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

real dataFunc__ran_norm1(real time){
    // DataStructure for variable ran_norm1
    real slope;
    real intercept;

    if(time <= 1){
        intercept = 0.25818828821929307;
        slope = -0.37893588813209667 - 0.25818828821929307;
        return intercept + slope * (x - 0.25818828821929307);
    }
    else if(time <= 2){
        intercept = -0.37893588813209667;
        slope = 1.0892017827490936 - -0.37893588813209667;
        return intercept + slope * (x - -0.37893588813209667);
    }
    else if(time <= 3){
        intercept = 1.0892017827490936;
        slope = 0.26766624755070095 - 1.0892017827490936;
        return intercept + slope * (x - 1.0892017827490936);
    }
    else if(time <= 4){
        intercept = 0.26766624755070095;
        slope = -0.8282722633433632 - 0.26766624755070095;
        return intercept + slope * (x - 0.26766624755070095);
    }
    else if(time <= 5){
        intercept = -0.8282722633433632;
        slope = 1.0918477661882464 - -0.8282722633433632;
        return intercept + slope * (x - -0.8282722633433632);
    }
    else if(time <= 6){
        intercept = 1.0918477661882464;
        slope = -0.18316258301385124 - 1.0918477661882464;
        return intercept + slope * (x - 1.0918477661882464);
    }
    else if(time <= 7){
        intercept = -0.18316258301385124;
        slope = -0.41697450111291323 - -0.18316258301385124;
        return intercept + slope * (x - -0.18316258301385124);
    }
    else if(time <= 8){
        intercept = -0.41697450111291323;
        slope = -0.5193636281518877 - -0.41697450111291323;
        return intercept + slope * (x - -0.41697450111291323);
    }
    else if(time <= 9){
        intercept = -0.5193636281518877;
        slope = -0.8805553168640945 - -0.5193636281518877;
        return intercept + slope * (x - -0.5193636281518877);
    }
    else if(time <= 10){
        intercept = -0.8805553168640945;
        slope = -0.533596983146448 - -0.8805553168640945;
        return intercept + slope * (x - -0.8805553168640945);
    }
    else if(time <= 11){
        intercept = -0.533596983146448;
        slope = -0.3517986010881828 - -0.533596983146448;
        return intercept + slope * (x - -0.533596983146448);
    }
    else if(time <= 12){
        intercept = -0.3517986010881828;
        slope = 0.6289277903278789 - -0.3517986010881828;
        return intercept + slope * (x - -0.3517986010881828);
    }
    else if(time <= 13){
        intercept = 0.6289277903278789;
        slope = 0.4939246896921556 - 0.6289277903278789;
        return intercept + slope * (x - 0.6289277903278789);
    }
    else if(time <= 14){
        intercept = 0.4939246896921556;
        slope = -0.4796301387526932 - 0.4939246896921556;
        return intercept + slope * (x - 0.4939246896921556);
    }
    else if(time <= 15){
        intercept = -0.4796301387526932;
        slope = 0.8471701079240215 - -0.4796301387526932;
        return intercept + slope * (x - -0.4796301387526932);
    }
    else if(time <= 16){
        intercept = 0.8471701079240215;
        slope = 0.892301083654371 - 0.8471701079240215;
        return intercept + slope * (x - 0.8471701079240215);
    }
    else if(time <= 17){
        intercept = 0.892301083654371;
        slope = 1.3389225468304 - 0.892301083654371;
        return intercept + slope * (x - 0.892301083654371);
    }
    else if(time <= 18){
        intercept = 1.3389225468304;
        slope = -0.3031559057791838 - 1.3389225468304;
        return intercept + slope * (x - 1.3389225468304);
    }
    else if(time <= 19){
        intercept = -0.3031559057791838;
        slope = 0.5112121862504925 - -0.3031559057791838;
        return intercept + slope * (x - -0.3031559057791838);
    }
    else if(time <= 20){
        intercept = 0.5112121862504925;
        slope = 0.05295172180979583 - 0.5112121862504925;
        return intercept + slope * (x - 0.5112121862504925);
    }
    else if(time <= 21){
        intercept = 0.05295172180979583;
        slope = 0.09100166708978322 - 0.05295172180979583;
        return intercept + slope * (x - 0.05295172180979583);
    }
    else if(time <= 22){
        intercept = 0.09100166708978322;
        slope = -0.2637368109082317 - 0.09100166708978322;
        return intercept + slope * (x - 0.09100166708978322);
    }
    else if(time <= 23){
        intercept = -0.2637368109082317;
        slope = -0.10189899636036294 - -0.2637368109082317;
        return intercept + slope * (x - -0.2637368109082317);
    }
    else if(time <= 24){
        intercept = -0.10189899636036294;
        slope = 0.13061074866487893 - -0.10189899636036294;
        return intercept + slope * (x - -0.10189899636036294);
    }
    else if(time <= 25){
        intercept = 0.13061074866487893;
        slope = 0.08968822029555265 - 0.13061074866487893;
        return intercept + slope * (x - 0.13061074866487893);
    }
    else if(time <= 26){
        intercept = 0.08968822029555265;
        slope = 0.4387758642949418 - 0.08968822029555265;
        return intercept + slope * (x - 0.08968822029555265);
    }
    else if(time <= 27){
        intercept = 0.4387758642949418;
        slope = 0.2720158794117537 - 0.4387758642949418;
        return intercept + slope * (x - 0.4387758642949418);
    }
    else if(time <= 28){
        intercept = 0.2720158794117537;
        slope = 1.150632529810247 - 0.2720158794117537;
        return intercept + slope * (x - 0.2720158794117537);
    }
    else if(time <= 29){
        intercept = 1.150632529810247;
        slope = 0.3185683403053336 - 1.150632529810247;
        return intercept + slope * (x - 1.150632529810247);
    }
    else if(time <= 30){
        intercept = 0.3185683403053336;
        slope = 0.3630313140852744 - 0.3185683403053336;
        return intercept + slope * (x - 0.3185683403053336);
    }
    else if(time <= 31){
        intercept = 0.3630313140852744;
        slope = -0.536105148600697 - 0.3630313140852744;
        return intercept + slope * (x - 0.3630313140852744);
    }
    else if(time <= 32){
        intercept = -0.536105148600697;
        slope = 2.140519050657214 - -0.536105148600697;
        return intercept + slope * (x - -0.536105148600697);
    }
    else if(time <= 33){
        intercept = 2.140519050657214;
        slope = -1.0291832637322782 - 2.140519050657214;
        return intercept + slope * (x - 2.140519050657214);
    }
    else if(time <= 34){
        intercept = -1.0291832637322782;
        slope = -0.712493568747608 - -1.0291832637322782;
        return intercept + slope * (x - -1.0291832637322782);
    }
    else if(time <= 35){
        intercept = -0.712493568747608;
        slope = -2.1361341294056295 - -0.712493568747608;
        return intercept + slope * (x - -0.712493568747608);
    }
    else if(time <= 36){
        intercept = -2.1361341294056295;
        slope = 0.05731869342548486 - -2.1361341294056295;
        return intercept + slope * (x - -2.1361341294056295);
    }
    else if(time <= 37){
        intercept = 0.05731869342548486;
        slope = 0.7630816563591808 - 0.05731869342548486;
        return intercept + slope * (x - 0.05731869342548486);
    }
    else if(time <= 38){
        intercept = 0.7630816563591808;
        slope = 1.7883665365392667 - 0.7630816563591808;
        return intercept + slope * (x - 0.7630816563591808);
    }
    else if(time <= 39){
        intercept = 1.7883665365392667;
        slope = -0.006522579504308824 - 1.7883665365392667;
        return intercept + slope * (x - 1.7883665365392667);
    }
    else if(time <= 40){
        intercept = -0.006522579504308824;
        slope = -1.6047382461638697 - -0.006522579504308824;
        return intercept + slope * (x - -0.006522579504308824);
    }
    else if(time <= 41){
        intercept = -1.6047382461638697;
        slope = 1.0134000467557003 - -1.6047382461638697;
        return intercept + slope * (x - -1.6047382461638697);
    }
    else if(time <= 42){
        intercept = 1.0134000467557003;
        slope = 0.06034801803657017 - 1.0134000467557003;
        return intercept + slope * (x - 1.0134000467557003);
    }
    else if(time <= 43){
        intercept = 0.06034801803657017;
        slope = 0.5989326653696756 - 0.06034801803657017;
        return intercept + slope * (x - 0.06034801803657017);
    }
    else if(time <= 44){
        intercept = 0.5989326653696756;
        slope = 0.6882953997996206 - 0.5989326653696756;
        return intercept + slope * (x - 0.5989326653696756);
    }
    else if(time <= 45){
        intercept = 0.6882953997996206;
        slope = -1.6457356076797016 - 0.6882953997996206;
        return intercept + slope * (x - 0.6882953997996206);
    }
    else if(time <= 46){
        intercept = -1.6457356076797016;
        slope = 0.0640713904205357 - -1.6457356076797016;
        return intercept + slope * (x - -1.6457356076797016);
    }
    else if(time <= 47){
        intercept = 0.0640713904205357;
        slope = -0.9837004243647194 - 0.0640713904205357;
        return intercept + slope * (x - 0.0640713904205357);
    }
    else if(time <= 48){
        intercept = -0.9837004243647194;
        slope = 0.8290700350307524 - -0.9837004243647194;
        return intercept + slope * (x - -0.9837004243647194);
    }
    else if(time <= 49){
        intercept = 0.8290700350307524;
        slope = 0.7037724826217238 - 0.8290700350307524;
        return intercept + slope * (x - 0.8290700350307524);
    }
    else if(time <= 50){
        intercept = 0.7037724826217238;
        slope = -0.59636285221783 - 0.7037724826217238;
        return intercept + slope * (x - 0.7037724826217238);
    }
    else if(time <= 51){
        intercept = -0.59636285221783;
        slope = -1.3339289994279135 - -0.59636285221783;
        return intercept + slope * (x - -0.59636285221783);
    }
    else if(time <= 52){
        intercept = -1.3339289994279135;
        slope = 0.3189511313003817 - -1.3339289994279135;
        return intercept + slope * (x - -1.3339289994279135);
    }
    else if(time <= 53){
        intercept = 0.3189511313003817;
        slope = 0.6550291037550541 - 0.3189511313003817;
        return intercept + slope * (x - 0.3189511313003817);
    }
    else if(time <= 54){
        intercept = 0.6550291037550541;
        slope = -0.1957172289155091 - 0.6550291037550541;
        return intercept + slope * (x - 0.6550291037550541);
    }
    else if(time <= 55){
        intercept = -0.1957172289155091;
        slope = 2.208203605164788 - -0.1957172289155091;
        return intercept + slope * (x - -0.1957172289155091);
    }
    else if(time <= 56){
        intercept = 2.208203605164788;
        slope = -0.44859199285469953 - 2.208203605164788;
        return intercept + slope * (x - 2.208203605164788);
    }
    else if(time <= 57){
        intercept = -0.44859199285469953;
        slope = 0.24029089755042707 - -0.44859199285469953;
        return intercept + slope * (x - -0.44859199285469953);
    }
    else if(time <= 58){
        intercept = 0.24029089755042707;
        slope = 0.22886364353000083 - 0.24029089755042707;
        return intercept + slope * (x - 0.24029089755042707);
    }
    else if(time <= 59){
        intercept = 0.22886364353000083;
        slope = 0.6678351651692451 - 0.22886364353000083;
        return intercept + slope * (x - 0.22886364353000083);
    }
    else if(time <= 60){
        intercept = 0.6678351651692451;
        slope = -0.7207728933317112 - 0.6678351651692451;
        return intercept + slope * (x - 0.6678351651692451);
    }
    else if(time <= 61){
        intercept = -0.7207728933317112;
        slope = 0.14980054067027607 - -0.7207728933317112;
        return intercept + slope * (x - -0.7207728933317112);
    }
    else if(time <= 62){
        intercept = 0.14980054067027607;
        slope = 0.6481917584659505 - 0.14980054067027607;
        return intercept + slope * (x - 0.14980054067027607);
    }
    else if(time <= 63){
        intercept = 0.6481917584659505;
        slope = 0.8369774978126034 - 0.6481917584659505;
        return intercept + slope * (x - 0.6481917584659505);
    }
    else if(time <= 64){
        intercept = 0.8369774978126034;
        slope = 0.701022807547428 - 0.8369774978126034;
        return intercept + slope * (x - 0.8369774978126034);
    }
    else if(time <= 65){
        intercept = 0.701022807547428;
        slope = 1.1903369446873557 - 0.701022807547428;
        return intercept + slope * (x - 0.701022807547428);
    }
    else if(time <= 66){
        intercept = 1.1903369446873557;
        slope = 1.8712046563367857 - 1.1903369446873557;
        return intercept + slope * (x - 1.1903369446873557);
    }
    else if(time <= 67){
        intercept = 1.8712046563367857;
        slope = 0.04862427287974901 - 1.8712046563367857;
        return intercept + slope * (x - 1.8712046563367857);
    }
    else if(time <= 68){
        intercept = 0.04862427287974901;
        slope = 1.2961327638263072 - 0.04862427287974901;
        return intercept + slope * (x - 0.04862427287974901);
    }
    else if(time <= 69){
        intercept = 1.2961327638263072;
        slope = 1.750069188004046 - 1.2961327638263072;
        return intercept + slope * (x - 1.2961327638263072);
    }
    else if(time <= 70){
        intercept = 1.750069188004046;
        slope = -1.1396194643706248 - 1.750069188004046;
        return intercept + slope * (x - 1.750069188004046);
    }
    else if(time <= 71){
        intercept = -1.1396194643706248;
        slope = 2.93368834557589 - -1.1396194643706248;
        return intercept + slope * (x - -1.1396194643706248);
    }
    else if(time <= 72){
        intercept = 2.93368834557589;
        slope = 0.508791732385145 - 2.93368834557589;
        return intercept + slope * (x - 2.93368834557589);
    }
    else if(time <= 73){
        intercept = 0.508791732385145;
        slope = -0.17272320110567738 - 0.508791732385145;
        return intercept + slope * (x - 0.508791732385145);
    }
    else if(time <= 74){
        intercept = -0.17272320110567738;
        slope = -1.130946402357483 - -0.17272320110567738;
        return intercept + slope * (x - -0.17272320110567738);
    }
    else if(time <= 75){
        intercept = -1.130946402357483;
        slope = -1.4297852369599593 - -1.130946402357483;
        return intercept + slope * (x - -1.130946402357483);
    }
    else if(time <= 76){
        intercept = -1.4297852369599593;
        slope = 0.03632094487270513 - -1.4297852369599593;
        return intercept + slope * (x - -1.4297852369599593);
    }
    else if(time <= 77){
        intercept = 0.03632094487270513;
        slope = -0.38757403297154536 - 0.03632094487270513;
        return intercept + slope * (x - 0.03632094487270513);
    }
    else if(time <= 78){
        intercept = -0.38757403297154536;
        slope = -0.5053562677589802 - -0.38757403297154536;
        return intercept + slope * (x - -0.38757403297154536);
    }
    else if(time <= 79){
        intercept = -0.5053562677589802;
        slope = 0.2808533534922008 - -0.5053562677589802;
        return intercept + slope * (x - -0.5053562677589802);
    }
    else if(time <= 80){
        intercept = 0.2808533534922008;
        slope = 0.520509124718586 - 0.2808533534922008;
        return intercept + slope * (x - 0.2808533534922008);
    }
    else if(time <= 81){
        intercept = 0.520509124718586;
        slope = -0.9489406525348821 - 0.520509124718586;
        return intercept + slope * (x - 0.520509124718586);
    }
    else if(time <= 82){
        intercept = -0.9489406525348821;
        slope = -0.07693456520991535 - -0.9489406525348821;
        return intercept + slope * (x - -0.9489406525348821);
    }
    else if(time <= 83){
        intercept = -0.07693456520991535;
        slope = -1.3057489480576754 - -0.07693456520991535;
        return intercept + slope * (x - -0.07693456520991535);
    }
    else if(time <= 84){
        intercept = -1.3057489480576754;
        slope = -1.1226997504633809 - -1.3057489480576754;
        return intercept + slope * (x - -1.3057489480576754);
    }
    else if(time <= 85){
        intercept = -1.1226997504633809;
        slope = 0.42369561096775826 - -1.1226997504633809;
        return intercept + slope * (x - -1.1226997504633809);
    }
    else if(time <= 86){
        intercept = 0.42369561096775826;
        slope = 0.8819277011370984 - 0.42369561096775826;
        return intercept + slope * (x - 0.42369561096775826);
    }
    else if(time <= 87){
        intercept = 0.8819277011370984;
        slope = 0.07815606604386181 - 0.8819277011370984;
        return intercept + slope * (x - 0.8819277011370984);
    }
    else if(time <= 88){
        intercept = 0.07815606604386181;
        slope = -0.24677215037570038 - 0.07815606604386181;
        return intercept + slope * (x - 0.07815606604386181);
    }
    else if(time <= 89){
        intercept = -0.24677215037570038;
        slope = -0.15783765588758916 - -0.24677215037570038;
        return intercept + slope * (x - -0.24677215037570038);
    }
    else if(time <= 90){
        intercept = -0.15783765588758916;
        slope = -0.9384150444545906 - -0.15783765588758916;
        return intercept + slope * (x - -0.15783765588758916);
    }
    else if(time <= 91){
        intercept = -0.9384150444545906;
        slope = 1.5452648597499612 - -0.9384150444545906;
        return intercept + slope * (x - -0.9384150444545906);
    }
    else if(time <= 92){
        intercept = 1.5452648597499612;
        slope = -0.9966855741885435 - 1.5452648597499612;
        return intercept + slope * (x - 1.5452648597499612);
    }
    else if(time <= 93){
        intercept = -0.9966855741885435;
        slope = -2.5288589467359484 - -0.9966855741885435;
        return intercept + slope * (x - -0.9966855741885435);
    }
    else if(time <= 94){
        intercept = -2.5288589467359484;
        slope = -2.3663419645595605 - -2.5288589467359484;
        return intercept + slope * (x - -2.5288589467359484);
    }
    else if(time <= 95){
        intercept = -2.3663419645595605;
        slope = 0.7686981667080715 - -2.3663419645595605;
        return intercept + slope * (x - -2.3663419645595605);
    }
    else if(time <= 96){
        intercept = 0.7686981667080715;
        slope = 0.21625771356945203 - 0.7686981667080715;
        return intercept + slope * (x - 0.7686981667080715);
    }
    else if(time <= 97){
        intercept = 0.21625771356945203;
        slope = -1.6337343931262212 - 0.21625771356945203;
        return intercept + slope * (x - 0.21625771356945203);
    }
    else if(time <= 98){
        intercept = -1.6337343931262212;
        slope = -0.8744627155858733 - -1.6337343931262212;
        return intercept + slope * (x - -1.6337343931262212);
    }
    else if(time <= 99){
        intercept = -0.8744627155858733;
        slope = 0.9336174807011752 - -0.8744627155858733;
        return intercept + slope * (x - -0.8744627155858733);
    }
    else if(time <= 100){
        intercept = 0.9336174807011752;
        slope = 0.8109658262000492 - 0.9336174807011752;
        return intercept + slope * (x - 0.9336174807011752);
    }
    else if(time <= 101){
        intercept = 0.8109658262000492;
        slope = 0.5154651045289949 - 0.8109658262000492;
        return intercept + slope * (x - 0.8109658262000492);
    }
    else if(time <= 102){
        intercept = 0.5154651045289949;
        slope = -0.13470847931976676 - 0.5154651045289949;
        return intercept + slope * (x - 0.5154651045289949);
    }
    else if(time <= 103){
        intercept = -0.13470847931976676;
        slope = -0.058893636573529584 - -0.13470847931976676;
        return intercept + slope * (x - -0.13470847931976676);
    }
    else if(time <= 104){
        intercept = -0.058893636573529584;
        slope = -0.28568791537343474 - -0.058893636573529584;
        return intercept + slope * (x - -0.058893636573529584);
    }
    else if(time <= 105){
        intercept = -0.28568791537343474;
        slope = -1.9140991136926715 - -0.28568791537343474;
        return intercept + slope * (x - -0.28568791537343474);
    }
    else if(time <= 106){
        intercept = -1.9140991136926715;
        slope = -0.5566721066131649 - -1.9140991136926715;
        return intercept + slope * (x - -1.9140991136926715);
    }
    else if(time <= 107){
        intercept = -0.5566721066131649;
        slope = 0.3263771717844719 - -0.5566721066131649;
        return intercept + slope * (x - -0.5566721066131649);
    }
    else if(time <= 108){
        intercept = 0.3263771717844719;
        slope = 1.130039977801366 - 0.3263771717844719;
        return intercept + slope * (x - 0.3263771717844719);
    }
    else if(time <= 109){
        intercept = 1.130039977801366;
        slope = -1.1200158635880846 - 1.130039977801366;
        return intercept + slope * (x - 1.130039977801366);
    }
    else if(time <= 110){
        intercept = -1.1200158635880846;
        slope = -0.9904743678554461 - -1.1200158635880846;
        return intercept + slope * (x - -1.1200158635880846);
    }
    else if(time <= 111){
        intercept = -0.9904743678554461;
        slope = 1.6543320141348221 - -0.9904743678554461;
        return intercept + slope * (x - -0.9904743678554461);
    }
    else if(time <= 112){
        intercept = 1.6543320141348221;
        slope = 0.885484232534001 - 1.6543320141348221;
        return intercept + slope * (x - 1.6543320141348221);
    }
    else if(time <= 113){
        intercept = 0.885484232534001;
        slope = -1.7034654854996047 - 0.885484232534001;
        return intercept + slope * (x - 0.885484232534001);
    }
    else if(time <= 114){
        intercept = -1.7034654854996047;
        slope = -1.8608287247755073 - -1.7034654854996047;
        return intercept + slope * (x - -1.7034654854996047);
    }
    else if(time <= 115){
        intercept = -1.8608287247755073;
        slope = 0.733734412976617 - -1.8608287247755073;
        return intercept + slope * (x - -1.8608287247755073);
    }
    else if(time <= 116){
        intercept = 0.733734412976617;
        slope = -2.7537663822187746 - 0.733734412976617;
        return intercept + slope * (x - 0.733734412976617);
    }
    else if(time <= 117){
        intercept = -2.7537663822187746;
        slope = 0.61104937765358 - -2.7537663822187746;
        return intercept + slope * (x - -2.7537663822187746);
    }
    else if(time <= 118){
        intercept = 0.61104937765358;
        slope = 0.4769453857809994 - 0.61104937765358;
        return intercept + slope * (x - 0.61104937765358);
    }
    else if(time <= 119){
        intercept = 0.4769453857809994;
        slope = -0.06351264962290452 - 0.4769453857809994;
        return intercept + slope * (x - 0.4769453857809994);
    }
    else if(time <= 120){
        intercept = -0.06351264962290452;
        slope = -0.43461223162642093 - -0.06351264962290452;
        return intercept + slope * (x - -0.06351264962290452);
    }
    else if(time <= 121){
        intercept = -0.43461223162642093;
        slope = 0.3028041589470589 - -0.43461223162642093;
        return intercept + slope * (x - -0.43461223162642093);
    }
    else if(time <= 122){
        intercept = 0.3028041589470589;
        slope = -0.06498661245608854 - 0.3028041589470589;
        return intercept + slope * (x - 0.3028041589470589);
    }
    else if(time <= 123){
        intercept = -0.06498661245608854;
        slope = -1.4433892624589473 - -0.06498661245608854;
        return intercept + slope * (x - -0.06498661245608854);
    }
    else if(time <= 124){
        intercept = -1.4433892624589473;
        slope = -1.6213567187536015 - -1.4433892624589473;
        return intercept + slope * (x - -1.4433892624589473);
    }
    else if(time <= 125){
        intercept = -1.6213567187536015;
        slope = -0.5960207379924398 - -1.6213567187536015;
        return intercept + slope * (x - -1.6213567187536015);
    }
    else if(time <= 126){
        intercept = -0.5960207379924398;
        slope = 0.8661423923952047 - -0.5960207379924398;
        return intercept + slope * (x - -0.5960207379924398);
    }
    else if(time <= 127){
        intercept = 0.8661423923952047;
        slope = -0.1460775629603717 - 0.8661423923952047;
        return intercept + slope * (x - 0.8661423923952047);
    }
    else if(time <= 128){
        intercept = -0.1460775629603717;
        slope = -1.0573484715721588 - -0.1460775629603717;
        return intercept + slope * (x - -0.1460775629603717);
    }
    else if(time <= 129){
        intercept = -1.0573484715721588;
        slope = -0.59276560416393 - -1.0573484715721588;
        return intercept + slope * (x - -1.0573484715721588);
    }
    else if(time <= 130){
        intercept = -0.59276560416393;
        slope = 2.428104977245695 - -0.59276560416393;
        return intercept + slope * (x - -0.59276560416393);
    }
    else if(time <= 131){
        intercept = 2.428104977245695;
        slope = -1.0589124839623683 - 2.428104977245695;
        return intercept + slope * (x - 2.428104977245695);
    }
    else if(time <= 132){
        intercept = -1.0589124839623683;
        slope = 0.67055854671463 - -1.0589124839623683;
        return intercept + slope * (x - -1.0589124839623683);
    }
    else if(time <= 133){
        intercept = 0.67055854671463;
        slope = -1.7880321778654216 - 0.67055854671463;
        return intercept + slope * (x - 0.67055854671463);
    }
    else if(time <= 134){
        intercept = -1.7880321778654216;
        slope = 1.2981507437588182 - -1.7880321778654216;
        return intercept + slope * (x - -1.7880321778654216);
    }
    else if(time <= 135){
        intercept = 1.2981507437588182;
        slope = -0.08456224628478679 - 1.2981507437588182;
        return intercept + slope * (x - 1.2981507437588182);
    }
    else if(time <= 136){
        intercept = -0.08456224628478679;
        slope = -0.5530246547802092 - -0.08456224628478679;
        return intercept + slope * (x - -0.08456224628478679);
    }
    else if(time <= 137){
        intercept = -0.5530246547802092;
        slope = 0.5275864652448257 - -0.5530246547802092;
        return intercept + slope * (x - -0.5530246547802092);
    }
    else if(time <= 138){
        intercept = 0.5275864652448257;
        slope = -0.1763144690169459 - 0.5275864652448257;
        return intercept + slope * (x - 0.5275864652448257);
    }
    else if(time <= 139){
        intercept = -0.1763144690169459;
        slope = 1.1940613199552714 - -0.1763144690169459;
        return intercept + slope * (x - -0.1763144690169459);
    }
    else if(time <= 140){
        intercept = 1.1940613199552714;
        slope = 1.1243806003852839 - 1.1940613199552714;
        return intercept + slope * (x - 1.1940613199552714);
    }
    else if(time <= 141){
        intercept = 1.1243806003852839;
        slope = 1.3268605136540126 - 1.1243806003852839;
        return intercept + slope * (x - 1.1243806003852839);
    }
    else if(time <= 142){
        intercept = 1.3268605136540126;
        slope = -0.2902533235356076 - 1.3268605136540126;
        return intercept + slope * (x - 1.3268605136540126);
    }
    else if(time <= 143){
        intercept = -0.2902533235356076;
        slope = -1.430107529888477 - -0.2902533235356076;
        return intercept + slope * (x - -0.2902533235356076);
    }
    else if(time <= 144){
        intercept = -1.430107529888477;
        slope = -0.6510638564978342 - -1.430107529888477;
        return intercept + slope * (x - -1.430107529888477);
    }
    else if(time <= 145){
        intercept = -0.6510638564978342;
        slope = 0.8754164210162168 - -0.6510638564978342;
        return intercept + slope * (x - -0.6510638564978342);
    }
    else if(time <= 146){
        intercept = 0.8754164210162168;
        slope = -0.007632803853692335 - 0.8754164210162168;
        return intercept + slope * (x - 0.8754164210162168);
    }
    else if(time <= 147){
        intercept = -0.007632803853692335;
        slope = 1.4552572786136904 - -0.007632803853692335;
        return intercept + slope * (x - -0.007632803853692335);
    }
    else if(time <= 148){
        intercept = 1.4552572786136904;
        slope = 0.9942591808329636 - 1.4552572786136904;
        return intercept + slope * (x - 1.4552572786136904);
    }
    else if(time <= 149){
        intercept = 0.9942591808329636;
        slope = -0.8577537971181945 - 0.9942591808329636;
        return intercept + slope * (x - 0.9942591808329636);
    }
    else if(time <= 150){
        intercept = -0.8577537971181945;
        slope = 1.134524134700491 - -0.8577537971181945;
        return intercept + slope * (x - -0.8577537971181945);
    }
    else if(time <= 151){
        intercept = 1.134524134700491;
        slope = 0.4886769294083411 - 1.134524134700491;
        return intercept + slope * (x - 1.134524134700491);
    }
    else if(time <= 152){
        intercept = 0.4886769294083411;
        slope = -1.634886230753969 - 0.4886769294083411;
        return intercept + slope * (x - 0.4886769294083411);
    }
    else if(time <= 153){
        intercept = -1.634886230753969;
        slope = -0.9376245157351617 - -1.634886230753969;
        return intercept + slope * (x - -1.634886230753969);
    }
    else if(time <= 154){
        intercept = -0.9376245157351617;
        slope = 0.3316481249790612 - -0.9376245157351617;
        return intercept + slope * (x - -0.9376245157351617);
    }
    else if(time <= 155){
        intercept = 0.3316481249790612;
        slope = 0.6188269194323174 - 0.3316481249790612;
        return intercept + slope * (x - 0.3316481249790612);
    }
    else if(time <= 156){
        intercept = 0.6188269194323174;
        slope = -0.71569641409549 - 0.6188269194323174;
        return intercept + slope * (x - 0.6188269194323174);
    }
    else if(time <= 157){
        intercept = -0.71569641409549;
        slope = 0.5920492203153115 - -0.71569641409549;
        return intercept + slope * (x - -0.71569641409549);
    }
    else if(time <= 158){
        intercept = 0.5920492203153115;
        slope = -0.9155190718476426 - 0.5920492203153115;
        return intercept + slope * (x - 0.5920492203153115);
    }
    else if(time <= 159){
        intercept = -0.9155190718476426;
        slope = 0.9361024779598248 - -0.9155190718476426;
        return intercept + slope * (x - -0.9155190718476426);
    }
    else if(time <= 160){
        intercept = 0.9361024779598248;
        slope = -0.2284519738811602 - 0.9361024779598248;
        return intercept + slope * (x - 0.9361024779598248);
    }
    else if(time <= 161){
        intercept = -0.2284519738811602;
        slope = 1.0954835504964242 - -0.2284519738811602;
        return intercept + slope * (x - -0.2284519738811602);
    }
    else if(time <= 162){
        intercept = 1.0954835504964242;
        slope = -0.6657716719927278 - 1.0954835504964242;
        return intercept + slope * (x - 1.0954835504964242);
    }
    else if(time <= 163){
        intercept = -0.6657716719927278;
        slope = 0.06290787763554564 - -0.6657716719927278;
        return intercept + slope * (x - -0.6657716719927278);
    }
    else if(time <= 164){
        intercept = 0.06290787763554564;
        slope = -1.7769485660410351 - 0.06290787763554564;
        return intercept + slope * (x - 0.06290787763554564);
    }
    else if(time <= 165){
        intercept = -1.7769485660410351;
        slope = 1.1637280542668955 - -1.7769485660410351;
        return intercept + slope * (x - -1.7769485660410351);
    }
    else if(time <= 166){
        intercept = 1.1637280542668955;
        slope = 0.49481076753569664 - 1.1637280542668955;
        return intercept + slope * (x - 1.1637280542668955);
    }
    else if(time <= 167){
        intercept = 0.49481076753569664;
        slope = 1.0216937881637844 - 0.49481076753569664;
        return intercept + slope * (x - 0.49481076753569664);
    }
    else if(time <= 168){
        intercept = 1.0216937881637844;
        slope = -1.0660956289654215 - 1.0216937881637844;
        return intercept + slope * (x - 1.0216937881637844);
    }
    else if(time <= 169){
        intercept = -1.0660956289654215;
        slope = -0.17261363251166492 - -1.0660956289654215;
        return intercept + slope * (x - -1.0660956289654215);
    }
    else if(time <= 170){
        intercept = -0.17261363251166492;
        slope = -0.8441204373281107 - -0.17261363251166492;
        return intercept + slope * (x - -0.17261363251166492);
    }
    else if(time <= 171){
        intercept = -0.8441204373281107;
        slope = -0.15985299383377763 - -0.8441204373281107;
        return intercept + slope * (x - -0.8441204373281107);
    }
    else if(time <= 172){
        intercept = -0.15985299383377763;
        slope = 0.6055862387054116 - -0.15985299383377763;
        return intercept + slope * (x - -0.15985299383377763);
    }
    else if(time <= 173){
        intercept = 0.6055862387054116;
        slope = -0.47738117367117194 - 0.6055862387054116;
        return intercept + slope * (x - 0.6055862387054116);
    }
    else if(time <= 174){
        intercept = -0.47738117367117194;
        slope = -0.5565416072519244 - -0.47738117367117194;
        return intercept + slope * (x - -0.47738117367117194);
    }
    else if(time <= 175){
        intercept = -0.5565416072519244;
        slope = -1.1005136435501826 - -0.5565416072519244;
        return intercept + slope * (x - -0.5565416072519244);
    }
    else if(time <= 176){
        intercept = -1.1005136435501826;
        slope = -1.016117807834385 - -1.1005136435501826;
        return intercept + slope * (x - -1.1005136435501826);
    }
    else if(time <= 177){
        intercept = -1.016117807834385;
        slope = -0.8503008111146547 - -1.016117807834385;
        return intercept + slope * (x - -1.016117807834385);
    }
    else if(time <= 178){
        intercept = -0.8503008111146547;
        slope = 2.955002353254037 - -0.8503008111146547;
        return intercept + slope * (x - -0.8503008111146547);
    }
    else if(time <= 179){
        intercept = 2.955002353254037;
        slope = -0.3937563201659807 - 2.955002353254037;
        return intercept + slope * (x - 2.955002353254037);
    }
    else if(time <= 180){
        intercept = -0.3937563201659807;
        slope = 0.1190265801970685 - -0.3937563201659807;
        return intercept + slope * (x - -0.3937563201659807);
    }
    else if(time <= 181){
        intercept = 0.1190265801970685;
        slope = -0.725341725681863 - 0.1190265801970685;
        return intercept + slope * (x - 0.1190265801970685);
    }
    else if(time <= 182){
        intercept = -0.725341725681863;
        slope = 1.4425537710345486 - -0.725341725681863;
        return intercept + slope * (x - -0.725341725681863);
    }
    else if(time <= 183){
        intercept = 1.4425537710345486;
        slope = -1.427687360719654 - 1.4425537710345486;
        return intercept + slope * (x - 1.4425537710345486);
    }
    else if(time <= 184){
        intercept = -1.427687360719654;
        slope = 0.6790637697090472 - -1.427687360719654;
        return intercept + slope * (x - -1.427687360719654);
    }
    else if(time <= 185){
        intercept = 0.6790637697090472;
        slope = 0.22297618303213698 - 0.6790637697090472;
        return intercept + slope * (x - 0.6790637697090472);
    }
    else if(time <= 186){
        intercept = 0.22297618303213698;
        slope = 0.78681291178881 - 0.22297618303213698;
        return intercept + slope * (x - 0.22297618303213698);
    }
    else if(time <= 187){
        intercept = 0.78681291178881;
        slope = -0.8320579480013933 - 0.78681291178881;
        return intercept + slope * (x - 0.78681291178881);
    }
    else if(time <= 188){
        intercept = -0.8320579480013933;
        slope = -1.4989524610171354 - -0.8320579480013933;
        return intercept + slope * (x - -0.8320579480013933);
    }
    else if(time <= 189){
        intercept = -1.4989524610171354;
        slope = -0.45421418894585885 - -1.4989524610171354;
        return intercept + slope * (x - -1.4989524610171354);
    }
    else if(time <= 190){
        intercept = -0.45421418894585885;
        slope = -1.2162991652152662 - -0.45421418894585885;
        return intercept + slope * (x - -0.45421418894585885);
    }
    else if(time <= 191){
        intercept = -1.2162991652152662;
        slope = -0.898683636839012 - -1.2162991652152662;
        return intercept + slope * (x - -1.2162991652152662);
    }
    else if(time <= 192){
        intercept = -0.898683636839012;
        slope = -1.525127003207942 - -0.898683636839012;
        return intercept + slope * (x - -0.898683636839012);
    }
    else if(time <= 193){
        intercept = -1.525127003207942;
        slope = -1.3379543215260683 - -1.525127003207942;
        return intercept + slope * (x - -1.525127003207942);
    }
    else if(time <= 194){
        intercept = -1.3379543215260683;
        slope = 0.3449096433675758 - -1.3379543215260683;
        return intercept + slope * (x - -1.3379543215260683);
    }
    else if(time <= 195){
        intercept = 0.3449096433675758;
        slope = -0.07130212474064744 - 0.3449096433675758;
        return intercept + slope * (x - 0.3449096433675758);
    }
    else if(time <= 196){
        intercept = -0.07130212474064744;
        slope = 1.653247070811624 - -0.07130212474064744;
        return intercept + slope * (x - -0.07130212474064744);
    }
    else if(time <= 197){
        intercept = 1.653247070811624;
        slope = 0.29862995326733593 - 1.653247070811624;
        return intercept + slope * (x - 1.653247070811624);
    }
    else if(time <= 198){
        intercept = 0.29862995326733593;
        slope = -0.4706143949392231 - 0.29862995326733593;
        return intercept + slope * (x - 0.29862995326733593);
    }
    else if(time <= 199){
        intercept = -0.4706143949392231;
        slope = 0.27570802192037747 - -0.4706143949392231;
        return intercept + slope * (x - -0.4706143949392231);
    }
    else if(time <= 200){
        intercept = 0.27570802192037747;
        slope = -1.2152938630960817 - 0.27570802192037747;
        return intercept + slope * (x - 0.27570802192037747);
    }
    else if(time <= 201){
        intercept = -1.2152938630960817;
        slope = -0.21308276794036438 - -1.2152938630960817;
        return intercept + slope * (x - -1.2152938630960817);
    }
    else if(time <= 202){
        intercept = -0.21308276794036438;
        slope = -0.8247625842868899 - -0.21308276794036438;
        return intercept + slope * (x - -0.21308276794036438);
    }
    else if(time <= 203){
        intercept = -0.8247625842868899;
        slope = 1.3171046757344727 - -0.8247625842868899;
        return intercept + slope * (x - -0.8247625842868899);
    }
    else if(time <= 204){
        intercept = 1.3171046757344727;
        slope = 1.5358643199142363 - 1.3171046757344727;
        return intercept + slope * (x - 1.3171046757344727);
    }
    else if(time <= 205){
        intercept = 1.5358643199142363;
        slope = -0.6405929318407181 - 1.5358643199142363;
        return intercept + slope * (x - 1.5358643199142363);
    }
    else if(time <= 206){
        intercept = -0.6405929318407181;
        slope = -0.010950141040889937 - -0.6405929318407181;
        return intercept + slope * (x - -0.6405929318407181);
    }
    else if(time <= 207){
        intercept = -0.010950141040889937;
        slope = 0.48735613189482063 - -0.010950141040889937;
        return intercept + slope * (x - -0.010950141040889937);
    }
    else if(time <= 208){
        intercept = 0.48735613189482063;
        slope = 0.887629683950806 - 0.48735613189482063;
        return intercept + slope * (x - 0.48735613189482063);
    }
    else if(time <= 209){
        intercept = 0.887629683950806;
        slope = -1.970560147126928 - 0.887629683950806;
        return intercept + slope * (x - 0.887629683950806);
    }
    else if(time <= 210){
        intercept = -1.970560147126928;
        slope = 0.9450611256133755 - -1.970560147126928;
        return intercept + slope * (x - -1.970560147126928);
    }
    else if(time <= 211){
        intercept = 0.9450611256133755;
        slope = -0.024989480831886263 - 0.9450611256133755;
        return intercept + slope * (x - 0.9450611256133755);
    }
    else if(time <= 212){
        intercept = -0.024989480831886263;
        slope = -0.10909659970601095 - -0.024989480831886263;
        return intercept + slope * (x - -0.024989480831886263);
    }
    else if(time <= 213){
        intercept = -0.10909659970601095;
        slope = -1.064622847550472 - -0.10909659970601095;
        return intercept + slope * (x - -0.10909659970601095);
    }
    else if(time <= 214){
        intercept = -1.064622847550472;
        slope = -0.3225759173041703 - -1.064622847550472;
        return intercept + slope * (x - -1.064622847550472);
    }
    else if(time <= 215){
        intercept = -0.3225759173041703;
        slope = 1.1618492787440617 - -0.3225759173041703;
        return intercept + slope * (x - -0.3225759173041703);
    }
    else if(time <= 216){
        intercept = 1.1618492787440617;
        slope = -0.46833128076528696 - 1.1618492787440617;
        return intercept + slope * (x - 1.1618492787440617);
    }
    else if(time <= 217){
        intercept = -0.46833128076528696;
        slope = 1.3068432713954496 - -0.46833128076528696;
        return intercept + slope * (x - -0.46833128076528696);
    }
    else if(time <= 218){
        intercept = 1.3068432713954496;
        slope = 0.6291188303617329 - 1.3068432713954496;
        return intercept + slope * (x - 1.3068432713954496);
    }
    else if(time <= 219){
        intercept = 0.6291188303617329;
        slope = -2.051037432086852 - 0.6291188303617329;
        return intercept + slope * (x - 0.6291188303617329);
    }
    else if(time <= 220){
        intercept = -2.051037432086852;
        slope = -0.30610804184198653 - -2.051037432086852;
        return intercept + slope * (x - -2.051037432086852);
    }
    else if(time <= 221){
        intercept = -0.30610804184198653;
        slope = 0.8810552485711161 - -0.30610804184198653;
        return intercept + slope * (x - -0.30610804184198653);
    }
    else if(time <= 222){
        intercept = 0.8810552485711161;
        slope = -1.6066290675889232 - 0.8810552485711161;
        return intercept + slope * (x - 0.8810552485711161);
    }
    else if(time <= 223){
        intercept = -1.6066290675889232;
        slope = -1.1266831652258475 - -1.6066290675889232;
        return intercept + slope * (x - -1.6066290675889232);
    }
    else if(time <= 224){
        intercept = -1.1266831652258475;
        slope = -0.16149297212112623 - -1.1266831652258475;
        return intercept + slope * (x - -1.1266831652258475);
    }
    else if(time <= 225){
        intercept = -0.16149297212112623;
        slope = 0.5770808509717377 - -0.16149297212112623;
        return intercept + slope * (x - -0.16149297212112623);
    }
    else if(time <= 226){
        intercept = 0.5770808509717377;
        slope = 1.3154981125336869 - 0.5770808509717377;
        return intercept + slope * (x - 0.5770808509717377);
    }
    else if(time <= 227){
        intercept = 1.3154981125336869;
        slope = -2.073847575497515 - 1.3154981125336869;
        return intercept + slope * (x - 1.3154981125336869);
    }
    else if(time <= 228){
        intercept = -2.073847575497515;
        slope = 1.5093049092168924 - -2.073847575497515;
        return intercept + slope * (x - -2.073847575497515);
    }
    else if(time <= 229){
        intercept = 1.5093049092168924;
        slope = -0.8634107884508502 - 1.5093049092168924;
        return intercept + slope * (x - 1.5093049092168924);
    }
    else if(time <= 230){
        intercept = -0.8634107884508502;
        slope = -1.748244438572526 - -0.8634107884508502;
        return intercept + slope * (x - -0.8634107884508502);
    }
    else if(time <= 231){
        intercept = -1.748244438572526;
        slope = 1.1261037198853507 - -1.748244438572526;
        return intercept + slope * (x - -1.748244438572526);
    }
    else if(time <= 232){
        intercept = 1.1261037198853507;
        slope = 0.7863699908291049 - 1.1261037198853507;
        return intercept + slope * (x - 1.1261037198853507);
    }
    else if(time <= 233){
        intercept = 0.7863699908291049;
        slope = 1.7722354848689301 - 0.7863699908291049;
        return intercept + slope * (x - 0.7863699908291049);
    }
    else if(time <= 234){
        intercept = 1.7722354848689301;
        slope = 0.9895724846571583 - 1.7722354848689301;
        return intercept + slope * (x - 1.7722354848689301);
    }
    else if(time <= 235){
        intercept = 0.9895724846571583;
        slope = 1.009537555803566 - 0.9895724846571583;
        return intercept + slope * (x - 0.9895724846571583);
    }
    else if(time <= 236){
        intercept = 1.009537555803566;
        slope = -1.2916842147625676 - 1.009537555803566;
        return intercept + slope * (x - 1.009537555803566);
    }
    else if(time <= 237){
        intercept = -1.2916842147625676;
        slope = 1.7526353287011542 - -1.2916842147625676;
        return intercept + slope * (x - -1.2916842147625676);
    }
    else if(time <= 238){
        intercept = 1.7526353287011542;
        slope = -0.3387565251567636 - 1.7526353287011542;
        return intercept + slope * (x - 1.7526353287011542);
    }
    else if(time <= 239){
        intercept = -0.3387565251567636;
        slope = 0.19528326223276393 - -0.3387565251567636;
        return intercept + slope * (x - -0.3387565251567636);
    }
    else if(time <= 240){
        intercept = 0.19528326223276393;
        slope = -0.8911480980017715 - 0.19528326223276393;
        return intercept + slope * (x - 0.19528326223276393);
    }
    else if(time <= 241){
        intercept = -0.8911480980017715;
        slope = 1.4224363041710522 - -0.8911480980017715;
        return intercept + slope * (x - -0.8911480980017715);
    }
    else if(time <= 242){
        intercept = 1.4224363041710522;
        slope = 0.46534143453670385 - 1.4224363041710522;
        return intercept + slope * (x - 1.4224363041710522);
    }
    else if(time <= 243){
        intercept = 0.46534143453670385;
        slope = 0.3363069821485926 - 0.46534143453670385;
        return intercept + slope * (x - 0.46534143453670385);
    }
    else if(time <= 244){
        intercept = 0.3363069821485926;
        slope = 0.6420061159615222 - 0.3363069821485926;
        return intercept + slope * (x - 0.3363069821485926);
    }
    else if(time <= 245){
        intercept = 0.6420061159615222;
        slope = -1.4496159718004449 - 0.6420061159615222;
        return intercept + slope * (x - 0.6420061159615222);
    }
    else if(time <= 246){
        intercept = -1.4496159718004449;
        slope = -1.3890493886041226 - -1.4496159718004449;
        return intercept + slope * (x - -1.4496159718004449);
    }
    else if(time <= 247){
        intercept = -1.3890493886041226;
        slope = -1.1157937881295659 - -1.3890493886041226;
        return intercept + slope * (x - -1.3890493886041226);
    }
    else if(time <= 248){
        intercept = -1.1157937881295659;
        slope = 0.15457526653848583 - -1.1157937881295659;
        return intercept + slope * (x - -1.1157937881295659);
    }
    else if(time <= 249){
        intercept = 0.15457526653848583;
        slope = 0.7162879095803288 - 0.15457526653848583;
        return intercept + slope * (x - 0.15457526653848583);
    }
    else if(time <= 250){
        intercept = 0.7162879095803288;
        slope = 1.2860430718055607 - 0.7162879095803288;
        return intercept + slope * (x - 0.7162879095803288);
    }
    else if(time <= 251){
        intercept = 1.2860430718055607;
        slope = 0.5680173991562165 - 1.2860430718055607;
        return intercept + slope * (x - 1.2860430718055607);
    }
    else if(time <= 252){
        intercept = 0.5680173991562165;
        slope = 1.8795952109847798 - 0.5680173991562165;
        return intercept + slope * (x - 0.5680173991562165);
    }
    else if(time <= 253){
        intercept = 1.8795952109847798;
        slope = -1.7516209873245174 - 1.8795952109847798;
        return intercept + slope * (x - 1.8795952109847798);
    }
    else if(time <= 254){
        intercept = -1.7516209873245174;
        slope = -0.2778727879545767 - -1.7516209873245174;
        return intercept + slope * (x - -1.7516209873245174);
    }
    else if(time <= 255){
        intercept = -0.2778727879545767;
        slope = 0.16909962572785853 - -0.2778727879545767;
        return intercept + slope * (x - -0.2778727879545767);
    }
    else if(time <= 256){
        intercept = 0.16909962572785853;
        slope = 0.45294463028164866 - 0.16909962572785853;
        return intercept + slope * (x - 0.16909962572785853);
    }
    else if(time <= 257){
        intercept = 0.45294463028164866;
        slope = 0.10623225786021395 - 0.45294463028164866;
        return intercept + slope * (x - 0.45294463028164866);
    }
    else if(time <= 258){
        intercept = 0.10623225786021395;
        slope = 1.3081051862723314 - 0.10623225786021395;
        return intercept + slope * (x - 0.10623225786021395);
    }
    else if(time <= 259){
        intercept = 1.3081051862723314;
        slope = -0.037745321660097156 - 1.3081051862723314;
        return intercept + slope * (x - 1.3081051862723314);
    }
    else if(time <= 260){
        intercept = -0.037745321660097156;
        slope = 0.02226542927298601 - -0.037745321660097156;
        return intercept + slope * (x - -0.037745321660097156);
    }
    else if(time <= 261){
        intercept = 0.02226542927298601;
        slope = -0.005333989680391559 - 0.02226542927298601;
        return intercept + slope * (x - 0.02226542927298601);
    }
    else if(time <= 262){
        intercept = -0.005333989680391559;
        slope = -1.0235778720620687 - -0.005333989680391559;
        return intercept + slope * (x - -0.005333989680391559);
    }
    else if(time <= 263){
        intercept = -1.0235778720620687;
        slope = -0.6112351162032744 - -1.0235778720620687;
        return intercept + slope * (x - -1.0235778720620687);
    }
    else if(time <= 264){
        intercept = -0.6112351162032744;
        slope = 1.0777743488144609 - -0.6112351162032744;
        return intercept + slope * (x - -0.6112351162032744);
    }
    else if(time <= 265){
        intercept = 1.0777743488144609;
        slope = -0.4156288399158775 - 1.0777743488144609;
        return intercept + slope * (x - 1.0777743488144609);
    }
    else if(time <= 266){
        intercept = -0.4156288399158775;
        slope = -0.12313741519351189 - -0.4156288399158775;
        return intercept + slope * (x - -0.4156288399158775);
    }
    else if(time <= 267){
        intercept = -0.12313741519351189;
        slope = -0.2416057705957711 - -0.12313741519351189;
        return intercept + slope * (x - -0.12313741519351189);
    }
    else if(time <= 268){
        intercept = -0.2416057705957711;
        slope = -1.1390178914559599 - -0.2416057705957711;
        return intercept + slope * (x - -0.2416057705957711);
    }
    else if(time <= 269){
        intercept = -1.1390178914559599;
        slope = -1.3424886275034238 - -1.1390178914559599;
        return intercept + slope * (x - -1.1390178914559599);
    }
    else if(time <= 270){
        intercept = -1.3424886275034238;
        slope = 0.8583164334992321 - -1.3424886275034238;
        return intercept + slope * (x - -1.3424886275034238);
    }
    else if(time <= 271){
        intercept = 0.8583164334992321;
        slope = 0.3245190863484149 - 0.8583164334992321;
        return intercept + slope * (x - 0.8583164334992321);
    }
    else if(time <= 272){
        intercept = 0.3245190863484149;
        slope = 1.100900611383864 - 0.3245190863484149;
        return intercept + slope * (x - 0.3245190863484149);
    }
    else if(time <= 273){
        intercept = 1.100900611383864;
        slope = -0.029675158223995787 - 1.100900611383864;
        return intercept + slope * (x - 1.100900611383864);
    }
    else if(time <= 274){
        intercept = -0.029675158223995787;
        slope = -0.15801186804358974 - -0.029675158223995787;
        return intercept + slope * (x - -0.029675158223995787);
    }
    else if(time <= 275){
        intercept = -0.15801186804358974;
        slope = 1.0624530353961834 - -0.15801186804358974;
        return intercept + slope * (x - -0.15801186804358974);
    }
    else if(time <= 276){
        intercept = 1.0624530353961834;
        slope = 0.03402264651148322 - 1.0624530353961834;
        return intercept + slope * (x - 1.0624530353961834);
    }
    else if(time <= 277){
        intercept = 0.03402264651148322;
        slope = -1.0280731652723831 - 0.03402264651148322;
        return intercept + slope * (x - 0.03402264651148322);
    }
    else if(time <= 278){
        intercept = -1.0280731652723831;
        slope = -0.17765783154528308 - -1.0280731652723831;
        return intercept + slope * (x - -1.0280731652723831);
    }
    else if(time <= 279){
        intercept = -0.17765783154528308;
        slope = 0.17731959012019888 - -0.17765783154528308;
        return intercept + slope * (x - -0.17765783154528308);
    }
    else if(time <= 280){
        intercept = 0.17731959012019888;
        slope = 0.15888885951963347 - 0.17731959012019888;
        return intercept + slope * (x - 0.17731959012019888);
    }
    else if(time <= 281){
        intercept = 0.15888885951963347;
        slope = -0.9391611650254202 - 0.15888885951963347;
        return intercept + slope * (x - 0.15888885951963347);
    }
    else if(time <= 282){
        intercept = -0.9391611650254202;
        slope = 0.6246729566143061 - -0.9391611650254202;
        return intercept + slope * (x - -0.9391611650254202);
    }
    else if(time <= 283){
        intercept = 0.6246729566143061;
        slope = 1.604820250213756 - 0.6246729566143061;
        return intercept + slope * (x - 0.6246729566143061);
    }
    else if(time <= 284){
        intercept = 1.604820250213756;
        slope = -1.3778238949763923 - 1.604820250213756;
        return intercept + slope * (x - 1.604820250213756);
    }
    else if(time <= 285){
        intercept = -1.3778238949763923;
        slope = -1.7867465721481597 - -1.3778238949763923;
        return intercept + slope * (x - -1.3778238949763923);
    }
    else if(time <= 286){
        intercept = -1.7867465721481597;
        slope = -0.6982636257305387 - -1.7867465721481597;
        return intercept + slope * (x - -1.7867465721481597);
    }
    else if(time <= 287){
        intercept = -0.6982636257305387;
        slope = -0.3750451448754007 - -0.6982636257305387;
        return intercept + slope * (x - -0.6982636257305387);
    }
    else if(time <= 288){
        intercept = -0.3750451448754007;
        slope = 0.30501412230369274 - -0.3750451448754007;
        return intercept + slope * (x - -0.3750451448754007);
    }
    else if(time <= 289){
        intercept = 0.30501412230369274;
        slope = 0.7723968298460753 - 0.30501412230369274;
        return intercept + slope * (x - 0.30501412230369274);
    }
    else if(time <= 290){
        intercept = 0.7723968298460753;
        slope = 0.2884922135484524 - 0.7723968298460753;
        return intercept + slope * (x - 0.7723968298460753);
    }
    else if(time <= 291){
        intercept = 0.2884922135484524;
        slope = 0.18215395193746375 - 0.2884922135484524;
        return intercept + slope * (x - 0.2884922135484524);
    }
    return 0.18215395193746375;
}

real dataFunc__ran_norm2(real time){
    // DataStructure for variable ran_norm2
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -0.5994852751299428;
        slope = 0.5181618390818444 - -0.5994852751299428;
        return intercept + slope * (x - -0.5994852751299428);
    }
    else if(time <= 2){
        intercept = 0.5181618390818444;
        slope = 1.0302770465258992 - 0.5181618390818444;
        return intercept + slope * (x - 0.5181618390818444);
    }
    else if(time <= 3){
        intercept = 1.0302770465258992;
        slope = -0.16383041073808977 - 1.0302770465258992;
        return intercept + slope * (x - 1.0302770465258992);
    }
    else if(time <= 4){
        intercept = -0.16383041073808977;
        slope = -1.2322651587437656 - -0.16383041073808977;
        return intercept + slope * (x - -0.16383041073808977);
    }
    else if(time <= 5){
        intercept = -1.2322651587437656;
        slope = 0.0837426403304371 - -1.2322651587437656;
        return intercept + slope * (x - -1.2322651587437656);
    }
    else if(time <= 6){
        intercept = 0.0837426403304371;
        slope = -1.2559143587575694 - 0.0837426403304371;
        return intercept + slope * (x - 0.0837426403304371);
    }
    else if(time <= 7){
        intercept = -1.2559143587575694;
        slope = 0.628880558639018 - -1.2559143587575694;
        return intercept + slope * (x - -1.2559143587575694);
    }
    else if(time <= 8){
        intercept = 0.628880558639018;
        slope = -1.280188889794784 - 0.628880558639018;
        return intercept + slope * (x - 0.628880558639018);
    }
    else if(time <= 9){
        intercept = -1.280188889794784;
        slope = -1.9561573421695113 - -1.280188889794784;
        return intercept + slope * (x - -1.280188889794784);
    }
    else if(time <= 10){
        intercept = -1.9561573421695113;
        slope = -0.4057851586894658 - -1.9561573421695113;
        return intercept + slope * (x - -1.9561573421695113);
    }
    else if(time <= 11){
        intercept = -0.4057851586894658;
        slope = -1.225430998825111 - -0.4057851586894658;
        return intercept + slope * (x - -0.4057851586894658);
    }
    else if(time <= 12){
        intercept = -1.225430998825111;
        slope = -1.3249007213669508 - -1.225430998825111;
        return intercept + slope * (x - -1.225430998825111);
    }
    else if(time <= 13){
        intercept = -1.3249007213669508;
        slope = 1.7850570030768174 - -1.3249007213669508;
        return intercept + slope * (x - -1.3249007213669508);
    }
    else if(time <= 14){
        intercept = 1.7850570030768174;
        slope = -0.9117268452895758 - 1.7850570030768174;
        return intercept + slope * (x - 1.7850570030768174);
    }
    else if(time <= 15){
        intercept = -0.9117268452895758;
        slope = 0.28248765907263707 - -0.9117268452895758;
        return intercept + slope * (x - -0.9117268452895758);
    }
    else if(time <= 16){
        intercept = 0.28248765907263707;
        slope = -0.4326763985900943 - 0.28248765907263707;
        return intercept + slope * (x - 0.28248765907263707);
    }
    else if(time <= 17){
        intercept = -0.4326763985900943;
        slope = -0.4170001650930995 - -0.4326763985900943;
        return intercept + slope * (x - -0.4326763985900943);
    }
    else if(time <= 18){
        intercept = -0.4170001650930995;
        slope = -0.7057217085331067 - -0.4170001650930995;
        return intercept + slope * (x - -0.4170001650930995);
    }
    else if(time <= 19){
        intercept = -0.7057217085331067;
        slope = -1.6689459358165653 - -0.7057217085331067;
        return intercept + slope * (x - -0.7057217085331067);
    }
    else if(time <= 20){
        intercept = -1.6689459358165653;
        slope = -0.08599941442718755 - -1.6689459358165653;
        return intercept + slope * (x - -1.6689459358165653);
    }
    else if(time <= 21){
        intercept = -0.08599941442718755;
        slope = -2.0163973252016967 - -0.08599941442718755;
        return intercept + slope * (x - -0.08599941442718755);
    }
    else if(time <= 22){
        intercept = -2.0163973252016967;
        slope = 0.5915303131962889 - -2.0163973252016967;
        return intercept + slope * (x - -2.0163973252016967);
    }
    else if(time <= 23){
        intercept = 0.5915303131962889;
        slope = 0.6053393370650497 - 0.5915303131962889;
        return intercept + slope * (x - 0.5915303131962889);
    }
    else if(time <= 24){
        intercept = 0.6053393370650497;
        slope = 1.541707102724085 - 0.6053393370650497;
        return intercept + slope * (x - 0.6053393370650497);
    }
    else if(time <= 25){
        intercept = 1.541707102724085;
        slope = 1.344772434747327 - 1.541707102724085;
        return intercept + slope * (x - 1.541707102724085);
    }
    else if(time <= 26){
        intercept = 1.344772434747327;
        slope = 0.5133123085941339 - 1.344772434747327;
        return intercept + slope * (x - 1.344772434747327);
    }
    else if(time <= 27){
        intercept = 0.5133123085941339;
        slope = -0.16479563708876246 - 0.5133123085941339;
        return intercept + slope * (x - 0.5133123085941339);
    }
    else if(time <= 28){
        intercept = -0.16479563708876246;
        slope = -1.3579996105746033 - -0.16479563708876246;
        return intercept + slope * (x - -0.16479563708876246);
    }
    else if(time <= 29){
        intercept = -1.3579996105746033;
        slope = -0.4760792818879146 - -1.3579996105746033;
        return intercept + slope * (x - -1.3579996105746033);
    }
    else if(time <= 30){
        intercept = -0.4760792818879146;
        slope = 1.1832136492855851 - -0.4760792818879146;
        return intercept + slope * (x - -0.4760792818879146);
    }
    else if(time <= 31){
        intercept = 1.1832136492855851;
        slope = -0.22485309964016223 - 1.1832136492855851;
        return intercept + slope * (x - 1.1832136492855851);
    }
    else if(time <= 32){
        intercept = -0.22485309964016223;
        slope = -1.5419901132535399 - -0.22485309964016223;
        return intercept + slope * (x - -0.22485309964016223);
    }
    else if(time <= 33){
        intercept = -1.5419901132535399;
        slope = -2.920357498437028 - -1.5419901132535399;
        return intercept + slope * (x - -1.5419901132535399);
    }
    else if(time <= 34){
        intercept = -2.920357498437028;
        slope = -1.1242804193235079 - -2.920357498437028;
        return intercept + slope * (x - -2.920357498437028);
    }
    else if(time <= 35){
        intercept = -1.1242804193235079;
        slope = 0.21905593057189254 - -1.1242804193235079;
        return intercept + slope * (x - -1.1242804193235079);
    }
    else if(time <= 36){
        intercept = 0.21905593057189254;
        slope = -2.59882253384858 - 0.21905593057189254;
        return intercept + slope * (x - 0.21905593057189254);
    }
    else if(time <= 37){
        intercept = -2.59882253384858;
        slope = -0.4756890433368158 - -2.59882253384858;
        return intercept + slope * (x - -2.59882253384858);
    }
    else if(time <= 38){
        intercept = -0.4756890433368158;
        slope = -0.35447277333776883 - -0.4756890433368158;
        return intercept + slope * (x - -0.4756890433368158);
    }
    else if(time <= 39){
        intercept = -0.35447277333776883;
        slope = 1.4004095606095694 - -0.35447277333776883;
        return intercept + slope * (x - -0.35447277333776883);
    }
    else if(time <= 40){
        intercept = 1.4004095606095694;
        slope = 0.3017094031989026 - 1.4004095606095694;
        return intercept + slope * (x - 1.4004095606095694);
    }
    else if(time <= 41){
        intercept = 0.3017094031989026;
        slope = 0.5261523000589212 - 0.3017094031989026;
        return intercept + slope * (x - 0.3017094031989026);
    }
    else if(time <= 42){
        intercept = 0.5261523000589212;
        slope = 1.5794561396760125 - 0.5261523000589212;
        return intercept + slope * (x - 0.5261523000589212);
    }
    else if(time <= 43){
        intercept = 1.5794561396760125;
        slope = -3.1491678456367174 - 1.5794561396760125;
        return intercept + slope * (x - 1.5794561396760125);
    }
    else if(time <= 44){
        intercept = -3.1491678456367174;
        slope = 0.7561202029313249 - -3.1491678456367174;
        return intercept + slope * (x - -3.1491678456367174);
    }
    else if(time <= 45){
        intercept = 0.7561202029313249;
        slope = 0.3688663072972996 - 0.7561202029313249;
        return intercept + slope * (x - 0.7561202029313249);
    }
    else if(time <= 46){
        intercept = 0.3688663072972996;
        slope = -0.15801528735292145 - 0.3688663072972996;
        return intercept + slope * (x - 0.3688663072972996);
    }
    else if(time <= 47){
        intercept = -0.15801528735292145;
        slope = -0.22413367003601353 - -0.15801528735292145;
        return intercept + slope * (x - -0.15801528735292145);
    }
    else if(time <= 48){
        intercept = -0.22413367003601353;
        slope = 1.5226032580083777 - -0.22413367003601353;
        return intercept + slope * (x - -0.22413367003601353);
    }
    else if(time <= 49){
        intercept = 1.5226032580083777;
        slope = 1.0417094372061575 - 1.5226032580083777;
        return intercept + slope * (x - 1.5226032580083777);
    }
    else if(time <= 50){
        intercept = 1.0417094372061575;
        slope = 0.051062368194651604 - 1.0417094372061575;
        return intercept + slope * (x - 1.0417094372061575);
    }
    else if(time <= 51){
        intercept = 0.051062368194651604;
        slope = -1.2999819182464822 - 0.051062368194651604;
        return intercept + slope * (x - 0.051062368194651604);
    }
    else if(time <= 52){
        intercept = -1.2999819182464822;
        slope = -0.4057309802660701 - -1.2999819182464822;
        return intercept + slope * (x - -1.2999819182464822);
    }
    else if(time <= 53){
        intercept = -0.4057309802660701;
        slope = 0.9759680378173937 - -0.4057309802660701;
        return intercept + slope * (x - -0.4057309802660701);
    }
    else if(time <= 54){
        intercept = 0.9759680378173937;
        slope = 0.4427003841280233 - 0.9759680378173937;
        return intercept + slope * (x - 0.9759680378173937);
    }
    else if(time <= 55){
        intercept = 0.4427003841280233;
        slope = -1.165037771579577 - 0.4427003841280233;
        return intercept + slope * (x - 0.4427003841280233);
    }
    else if(time <= 56){
        intercept = -1.165037771579577;
        slope = 0.8386385605969914 - -1.165037771579577;
        return intercept + slope * (x - -1.165037771579577);
    }
    else if(time <= 57){
        intercept = 0.8386385605969914;
        slope = 0.2679477259438551 - 0.8386385605969914;
        return intercept + slope * (x - 0.8386385605969914);
    }
    else if(time <= 58){
        intercept = 0.2679477259438551;
        slope = -0.17869597063326553 - 0.2679477259438551;
        return intercept + slope * (x - 0.2679477259438551);
    }
    else if(time <= 59){
        intercept = -0.17869597063326553;
        slope = 0.5109721666304612 - -0.17869597063326553;
        return intercept + slope * (x - -0.17869597063326553);
    }
    else if(time <= 60){
        intercept = 0.5109721666304612;
        slope = -0.31726190083820494 - 0.5109721666304612;
        return intercept + slope * (x - 0.5109721666304612);
    }
    else if(time <= 61){
        intercept = -0.31726190083820494;
        slope = 0.12952221343185455 - -0.31726190083820494;
        return intercept + slope * (x - -0.31726190083820494);
    }
    else if(time <= 62){
        intercept = 0.12952221343185455;
        slope = -1.358552550340787 - 0.12952221343185455;
        return intercept + slope * (x - 0.12952221343185455);
    }
    else if(time <= 63){
        intercept = -1.358552550340787;
        slope = -1.1835549524299067 - -1.358552550340787;
        return intercept + slope * (x - -1.358552550340787);
    }
    else if(time <= 64){
        intercept = -1.1835549524299067;
        slope = -1.4767088526841115 - -1.1835549524299067;
        return intercept + slope * (x - -1.1835549524299067);
    }
    else if(time <= 65){
        intercept = -1.4767088526841115;
        slope = -1.1753971744731557 - -1.4767088526841115;
        return intercept + slope * (x - -1.4767088526841115);
    }
    else if(time <= 66){
        intercept = -1.1753971744731557;
        slope = 1.0095475882798122 - -1.1753971744731557;
        return intercept + slope * (x - -1.1753971744731557);
    }
    else if(time <= 67){
        intercept = 1.0095475882798122;
        slope = -0.3268239159591251 - 1.0095475882798122;
        return intercept + slope * (x - 1.0095475882798122);
    }
    else if(time <= 68){
        intercept = -0.3268239159591251;
        slope = 0.5503017672887521 - -0.3268239159591251;
        return intercept + slope * (x - -0.3268239159591251);
    }
    else if(time <= 69){
        intercept = 0.5503017672887521;
        slope = 1.3596411002298792 - 0.5503017672887521;
        return intercept + slope * (x - 0.5503017672887521);
    }
    else if(time <= 70){
        intercept = 1.3596411002298792;
        slope = -0.9402268236982714 - 1.3596411002298792;
        return intercept + slope * (x - 1.3596411002298792);
    }
    else if(time <= 71){
        intercept = -0.9402268236982714;
        slope = -0.009601914236562457 - -0.9402268236982714;
        return intercept + slope * (x - -0.9402268236982714);
    }
    else if(time <= 72){
        intercept = -0.009601914236562457;
        slope = 0.6409104430549623 - -0.009601914236562457;
        return intercept + slope * (x - -0.009601914236562457);
    }
    else if(time <= 73){
        intercept = 0.6409104430549623;
        slope = -1.513389799283506 - 0.6409104430549623;
        return intercept + slope * (x - 0.6409104430549623);
    }
    else if(time <= 74){
        intercept = -1.513389799283506;
        slope = -1.3013265297891772 - -1.513389799283506;
        return intercept + slope * (x - -1.513389799283506);
    }
    else if(time <= 75){
        intercept = -1.3013265297891772;
        slope = -1.1412257415099933 - -1.3013265297891772;
        return intercept + slope * (x - -1.3013265297891772);
    }
    else if(time <= 76){
        intercept = -1.1412257415099933;
        slope = 0.8312934046924282 - -1.1412257415099933;
        return intercept + slope * (x - -1.1412257415099933);
    }
    else if(time <= 77){
        intercept = 0.8312934046924282;
        slope = 0.9442740159679505 - 0.8312934046924282;
        return intercept + slope * (x - 0.8312934046924282);
    }
    else if(time <= 78){
        intercept = 0.9442740159679505;
        slope = -1.7112875660311462 - 0.9442740159679505;
        return intercept + slope * (x - 0.9442740159679505);
    }
    else if(time <= 79){
        intercept = -1.7112875660311462;
        slope = 0.3587589816148054 - -1.7112875660311462;
        return intercept + slope * (x - -1.7112875660311462);
    }
    else if(time <= 80){
        intercept = 0.3587589816148054;
        slope = -0.10092818710055806 - 0.3587589816148054;
        return intercept + slope * (x - 0.3587589816148054);
    }
    else if(time <= 81){
        intercept = -0.10092818710055806;
        slope = 0.8928303615042664 - -0.10092818710055806;
        return intercept + slope * (x - -0.10092818710055806);
    }
    else if(time <= 82){
        intercept = 0.8928303615042664;
        slope = 1.0829513119382956 - 0.8928303615042664;
        return intercept + slope * (x - 0.8928303615042664);
    }
    else if(time <= 83){
        intercept = 1.0829513119382956;
        slope = -0.1903814398704076 - 1.0829513119382956;
        return intercept + slope * (x - 1.0829513119382956);
    }
    else if(time <= 84){
        intercept = -0.1903814398704076;
        slope = 0.13264141351407605 - -0.1903814398704076;
        return intercept + slope * (x - -0.1903814398704076);
    }
    else if(time <= 85){
        intercept = 0.13264141351407605;
        slope = -0.6596198074824923 - 0.13264141351407605;
        return intercept + slope * (x - 0.13264141351407605);
    }
    else if(time <= 86){
        intercept = -0.6596198074824923;
        slope = -1.4910978685542815 - -0.6596198074824923;
        return intercept + slope * (x - -0.6596198074824923);
    }
    else if(time <= 87){
        intercept = -1.4910978685542815;
        slope = -0.13612360777324528 - -1.4910978685542815;
        return intercept + slope * (x - -1.4910978685542815);
    }
    else if(time <= 88){
        intercept = -0.13612360777324528;
        slope = -0.6693170258498375 - -0.13612360777324528;
        return intercept + slope * (x - -0.13612360777324528);
    }
    else if(time <= 89){
        intercept = -0.6693170258498375;
        slope = -0.9958751357939165 - -0.6693170258498375;
        return intercept + slope * (x - -0.6693170258498375);
    }
    else if(time <= 90){
        intercept = -0.9958751357939165;
        slope = 0.10259353533216356 - -0.9958751357939165;
        return intercept + slope * (x - -0.9958751357939165);
    }
    else if(time <= 91){
        intercept = 0.10259353533216356;
        slope = -0.8458098047545218 - 0.10259353533216356;
        return intercept + slope * (x - 0.10259353533216356);
    }
    else if(time <= 92){
        intercept = -0.8458098047545218;
        slope = -0.6737459641036634 - -0.8458098047545218;
        return intercept + slope * (x - -0.8458098047545218);
    }
    else if(time <= 93){
        intercept = -0.6737459641036634;
        slope = 0.010785656624375861 - -0.6737459641036634;
        return intercept + slope * (x - -0.6737459641036634);
    }
    else if(time <= 94){
        intercept = 0.010785656624375861;
        slope = 0.050232445128231475 - 0.010785656624375861;
        return intercept + slope * (x - 0.010785656624375861);
    }
    else if(time <= 95){
        intercept = 0.050232445128231475;
        slope = -0.2597072618508255 - 0.050232445128231475;
        return intercept + slope * (x - 0.050232445128231475);
    }
    else if(time <= 96){
        intercept = -0.2597072618508255;
        slope = 0.26114739284603183 - -0.2597072618508255;
        return intercept + slope * (x - -0.2597072618508255);
    }
    else if(time <= 97){
        intercept = 0.26114739284603183;
        slope = 0.6093535941299107 - 0.26114739284603183;
        return intercept + slope * (x - 0.26114739284603183);
    }
    else if(time <= 98){
        intercept = 0.6093535941299107;
        slope = -0.609076654211001 - 0.6093535941299107;
        return intercept + slope * (x - 0.6093535941299107);
    }
    else if(time <= 99){
        intercept = -0.609076654211001;
        slope = -1.0397092243422574 - -0.609076654211001;
        return intercept + slope * (x - -0.609076654211001);
    }
    else if(time <= 100){
        intercept = -1.0397092243422574;
        slope = 0.029205638980844103 - -1.0397092243422574;
        return intercept + slope * (x - -1.0397092243422574);
    }
    else if(time <= 101){
        intercept = 0.029205638980844103;
        slope = -0.5009805829561782 - 0.029205638980844103;
        return intercept + slope * (x - 0.029205638980844103);
    }
    else if(time <= 102){
        intercept = -0.5009805829561782;
        slope = 1.6347267558360339 - -0.5009805829561782;
        return intercept + slope * (x - -0.5009805829561782);
    }
    else if(time <= 103){
        intercept = 1.6347267558360339;
        slope = -0.5184910764626347 - 1.6347267558360339;
        return intercept + slope * (x - 1.6347267558360339);
    }
    else if(time <= 104){
        intercept = -0.5184910764626347;
        slope = -0.6056277688808845 - -0.5184910764626347;
        return intercept + slope * (x - -0.5184910764626347);
    }
    else if(time <= 105){
        intercept = -0.6056277688808845;
        slope = 0.900271830347564 - -0.6056277688808845;
        return intercept + slope * (x - -0.6056277688808845);
    }
    else if(time <= 106){
        intercept = 0.900271830347564;
        slope = 1.414005742071336 - 0.900271830347564;
        return intercept + slope * (x - 0.900271830347564);
    }
    else if(time <= 107){
        intercept = 1.414005742071336;
        slope = -0.3550568226564483 - 1.414005742071336;
        return intercept + slope * (x - 1.414005742071336);
    }
    else if(time <= 108){
        intercept = -0.3550568226564483;
        slope = -0.46732858380857145 - -0.3550568226564483;
        return intercept + slope * (x - -0.3550568226564483);
    }
    else if(time <= 109){
        intercept = -0.46732858380857145;
        slope = 0.050593057548636446 - -0.46732858380857145;
        return intercept + slope * (x - -0.46732858380857145);
    }
    else if(time <= 110){
        intercept = 0.050593057548636446;
        slope = 1.3530282075208457 - 0.050593057548636446;
        return intercept + slope * (x - 0.050593057548636446);
    }
    else if(time <= 111){
        intercept = 1.3530282075208457;
        slope = 0.14655348036659818 - 1.3530282075208457;
        return intercept + slope * (x - 1.3530282075208457);
    }
    else if(time <= 112){
        intercept = 0.14655348036659818;
        slope = 1.1327771950496994 - 0.14655348036659818;
        return intercept + slope * (x - 0.14655348036659818);
    }
    else if(time <= 113){
        intercept = 1.1327771950496994;
        slope = -0.26802839834230446 - 1.1327771950496994;
        return intercept + slope * (x - 1.1327771950496994);
    }
    else if(time <= 114){
        intercept = -0.26802839834230446;
        slope = 0.4768960654158802 - -0.26802839834230446;
        return intercept + slope * (x - -0.26802839834230446);
    }
    else if(time <= 115){
        intercept = 0.4768960654158802;
        slope = -1.1765501355580301 - 0.4768960654158802;
        return intercept + slope * (x - 0.4768960654158802);
    }
    else if(time <= 116){
        intercept = -1.1765501355580301;
        slope = -0.292937560784273 - -1.1765501355580301;
        return intercept + slope * (x - -1.1765501355580301);
    }
    else if(time <= 117){
        intercept = -0.292937560784273;
        slope = -0.5334603989099539 - -0.292937560784273;
        return intercept + slope * (x - -0.292937560784273);
    }
    else if(time <= 118){
        intercept = -0.5334603989099539;
        slope = 0.3161426420011187 - -0.5334603989099539;
        return intercept + slope * (x - -0.5334603989099539);
    }
    else if(time <= 119){
        intercept = 0.3161426420011187;
        slope = -0.46770408103660327 - 0.3161426420011187;
        return intercept + slope * (x - 0.3161426420011187);
    }
    else if(time <= 120){
        intercept = -0.46770408103660327;
        slope = -0.09269956849621602 - -0.46770408103660327;
        return intercept + slope * (x - -0.46770408103660327);
    }
    else if(time <= 121){
        intercept = -0.09269956849621602;
        slope = -0.0962969439684448 - -0.09269956849621602;
        return intercept + slope * (x - -0.09269956849621602);
    }
    else if(time <= 122){
        intercept = -0.0962969439684448;
        slope = 1.106639568844843 - -0.0962969439684448;
        return intercept + slope * (x - -0.0962969439684448);
    }
    else if(time <= 123){
        intercept = 1.106639568844843;
        slope = 0.5914136311927719 - 1.106639568844843;
        return intercept + slope * (x - 1.106639568844843);
    }
    else if(time <= 124){
        intercept = 0.5914136311927719;
        slope = 0.6807532028831207 - 0.5914136311927719;
        return intercept + slope * (x - 0.5914136311927719);
    }
    else if(time <= 125){
        intercept = 0.6807532028831207;
        slope = 0.19995784626582133 - 0.6807532028831207;
        return intercept + slope * (x - 0.6807532028831207);
    }
    else if(time <= 126){
        intercept = 0.19995784626582133;
        slope = 1.0681055069934327 - 0.19995784626582133;
        return intercept + slope * (x - 0.19995784626582133);
    }
    else if(time <= 127){
        intercept = 1.0681055069934327;
        slope = -0.0257209298218804 - 1.0681055069934327;
        return intercept + slope * (x - 1.0681055069934327);
    }
    else if(time <= 128){
        intercept = -0.0257209298218804;
        slope = -0.42577253230289736 - -0.0257209298218804;
        return intercept + slope * (x - -0.0257209298218804);
    }
    else if(time <= 129){
        intercept = -0.42577253230289736;
        slope = -0.967786714810525 - -0.42577253230289736;
        return intercept + slope * (x - -0.42577253230289736);
    }
    else if(time <= 130){
        intercept = -0.967786714810525;
        slope = 2.9347950212027296 - -0.967786714810525;
        return intercept + slope * (x - -0.967786714810525);
    }
    else if(time <= 131){
        intercept = 2.9347950212027296;
        slope = -0.5568657031744991 - 2.9347950212027296;
        return intercept + slope * (x - 2.9347950212027296);
    }
    else if(time <= 132){
        intercept = -0.5568657031744991;
        slope = -0.5648839821365856 - -0.5568657031744991;
        return intercept + slope * (x - -0.5568657031744991);
    }
    else if(time <= 133){
        intercept = -0.5648839821365856;
        slope = 0.7706266586342368 - -0.5648839821365856;
        return intercept + slope * (x - -0.5648839821365856);
    }
    else if(time <= 134){
        intercept = 0.7706266586342368;
        slope = -0.33344698447969856 - 0.7706266586342368;
        return intercept + slope * (x - 0.7706266586342368);
    }
    else if(time <= 135){
        intercept = -0.33344698447969856;
        slope = -0.09585589492129143 - -0.33344698447969856;
        return intercept + slope * (x - -0.33344698447969856);
    }
    else if(time <= 136){
        intercept = -0.09585589492129143;
        slope = -0.364466259781512 - -0.09585589492129143;
        return intercept + slope * (x - -0.09585589492129143);
    }
    else if(time <= 137){
        intercept = -0.364466259781512;
        slope = -0.2113652381718598 - -0.364466259781512;
        return intercept + slope * (x - -0.364466259781512);
    }
    else if(time <= 138){
        intercept = -0.2113652381718598;
        slope = 2.195983105573249 - -0.2113652381718598;
        return intercept + slope * (x - -0.2113652381718598);
    }
    else if(time <= 139){
        intercept = 2.195983105573249;
        slope = 0.33002889677188474 - 2.195983105573249;
        return intercept + slope * (x - 2.195983105573249);
    }
    else if(time <= 140){
        intercept = 0.33002889677188474;
        slope = -0.8085370609061376 - 0.33002889677188474;
        return intercept + slope * (x - 0.33002889677188474);
    }
    else if(time <= 141){
        intercept = -0.8085370609061376;
        slope = 0.5892456106210959 - -0.8085370609061376;
        return intercept + slope * (x - -0.8085370609061376);
    }
    else if(time <= 142){
        intercept = 0.5892456106210959;
        slope = -1.8295689253491187 - 0.5892456106210959;
        return intercept + slope * (x - 0.5892456106210959);
    }
    else if(time <= 143){
        intercept = -1.8295689253491187;
        slope = 0.17828251716776367 - -1.8295689253491187;
        return intercept + slope * (x - -1.8295689253491187);
    }
    else if(time <= 144){
        intercept = 0.17828251716776367;
        slope = 0.2519194554834426 - 0.17828251716776367;
        return intercept + slope * (x - 0.17828251716776367);
    }
    else if(time <= 145){
        intercept = 0.2519194554834426;
        slope = 0.7079621564281904 - 0.2519194554834426;
        return intercept + slope * (x - 0.2519194554834426);
    }
    else if(time <= 146){
        intercept = 0.7079621564281904;
        slope = 1.1267645341788215 - 0.7079621564281904;
        return intercept + slope * (x - 0.7079621564281904);
    }
    else if(time <= 147){
        intercept = 1.1267645341788215;
        slope = 0.828399056365626 - 1.1267645341788215;
        return intercept + slope * (x - 1.1267645341788215);
    }
    else if(time <= 148){
        intercept = 0.828399056365626;
        slope = -0.8492577706046146 - 0.828399056365626;
        return intercept + slope * (x - 0.828399056365626);
    }
    else if(time <= 149){
        intercept = -0.8492577706046146;
        slope = -0.021544409720638397 - -0.8492577706046146;
        return intercept + slope * (x - -0.8492577706046146);
    }
    else if(time <= 150){
        intercept = -0.021544409720638397;
        slope = -1.8563564656087435 - -0.021544409720638397;
        return intercept + slope * (x - -0.021544409720638397);
    }
    else if(time <= 151){
        intercept = -1.8563564656087435;
        slope = 0.6290270453420471 - -1.8563564656087435;
        return intercept + slope * (x - -1.8563564656087435);
    }
    else if(time <= 152){
        intercept = 0.6290270453420471;
        slope = 0.4213828341025245 - 0.6290270453420471;
        return intercept + slope * (x - 0.6290270453420471);
    }
    else if(time <= 153){
        intercept = 0.4213828341025245;
        slope = -1.336326031307944 - 0.4213828341025245;
        return intercept + slope * (x - 0.4213828341025245);
    }
    else if(time <= 154){
        intercept = -1.336326031307944;
        slope = 0.9315338427560883 - -1.336326031307944;
        return intercept + slope * (x - -1.336326031307944);
    }
    else if(time <= 155){
        intercept = 0.9315338427560883;
        slope = -0.24430859839051933 - 0.9315338427560883;
        return intercept + slope * (x - 0.9315338427560883);
    }
    else if(time <= 156){
        intercept = -0.24430859839051933;
        slope = 2.482808145916574 - -0.24430859839051933;
        return intercept + slope * (x - -0.24430859839051933);
    }
    else if(time <= 157){
        intercept = 2.482808145916574;
        slope = 0.11982873349932195 - 2.482808145916574;
        return intercept + slope * (x - 2.482808145916574);
    }
    else if(time <= 158){
        intercept = 0.11982873349932195;
        slope = -0.3320358658131636 - 0.11982873349932195;
        return intercept + slope * (x - 0.11982873349932195);
    }
    else if(time <= 159){
        intercept = -0.3320358658131636;
        slope = 0.20143006242985703 - -0.3320358658131636;
        return intercept + slope * (x - -0.3320358658131636);
    }
    else if(time <= 160){
        intercept = 0.20143006242985703;
        slope = -0.24598288622497724 - 0.20143006242985703;
        return intercept + slope * (x - 0.20143006242985703);
    }
    else if(time <= 161){
        intercept = -0.24598288622497724;
        slope = 0.2463344121315814 - -0.24598288622497724;
        return intercept + slope * (x - -0.24598288622497724);
    }
    else if(time <= 162){
        intercept = 0.2463344121315814;
        slope = -1.1414594064778958 - 0.2463344121315814;
        return intercept + slope * (x - 0.2463344121315814);
    }
    else if(time <= 163){
        intercept = -1.1414594064778958;
        slope = 0.3680460045319378 - -1.1414594064778958;
        return intercept + slope * (x - -1.1414594064778958);
    }
    else if(time <= 164){
        intercept = 0.3680460045319378;
        slope = -1.0823439740317011 - 0.3680460045319378;
        return intercept + slope * (x - 0.3680460045319378);
    }
    else if(time <= 165){
        intercept = -1.0823439740317011;
        slope = 1.0146305140040028 - -1.0823439740317011;
        return intercept + slope * (x - -1.0823439740317011);
    }
    else if(time <= 166){
        intercept = 1.0146305140040028;
        slope = -0.677780322363256 - 1.0146305140040028;
        return intercept + slope * (x - 1.0146305140040028);
    }
    else if(time <= 167){
        intercept = -0.677780322363256;
        slope = -0.6613962683602407 - -0.677780322363256;
        return intercept + slope * (x - -0.677780322363256);
    }
    else if(time <= 168){
        intercept = -0.6613962683602407;
        slope = -0.02084520662580501 - -0.6613962683602407;
        return intercept + slope * (x - -0.6613962683602407);
    }
    else if(time <= 169){
        intercept = -0.02084520662580501;
        slope = 1.7986772096815804 - -0.02084520662580501;
        return intercept + slope * (x - -0.02084520662580501);
    }
    else if(time <= 170){
        intercept = 1.7986772096815804;
        slope = 1.3570313442057114 - 1.7986772096815804;
        return intercept + slope * (x - 1.7986772096815804);
    }
    else if(time <= 171){
        intercept = 1.3570313442057114;
        slope = -0.16786354785074573 - 1.3570313442057114;
        return intercept + slope * (x - 1.3570313442057114);
    }
    else if(time <= 172){
        intercept = -0.16786354785074573;
        slope = -0.7635207206045942 - -0.16786354785074573;
        return intercept + slope * (x - -0.16786354785074573);
    }
    else if(time <= 173){
        intercept = -0.7635207206045942;
        slope = -0.671344005807203 - -0.7635207206045942;
        return intercept + slope * (x - -0.7635207206045942);
    }
    else if(time <= 174){
        intercept = -0.671344005807203;
        slope = -0.583252327892828 - -0.671344005807203;
        return intercept + slope * (x - -0.671344005807203);
    }
    else if(time <= 175){
        intercept = -0.583252327892828;
        slope = 2.7049764981489317 - -0.583252327892828;
        return intercept + slope * (x - -0.583252327892828);
    }
    else if(time <= 176){
        intercept = 2.7049764981489317;
        slope = -0.6203033063538606 - 2.7049764981489317;
        return intercept + slope * (x - 2.7049764981489317);
    }
    else if(time <= 177){
        intercept = -0.6203033063538606;
        slope = 1.3987848613348708 - -0.6203033063538606;
        return intercept + slope * (x - -0.6203033063538606);
    }
    else if(time <= 178){
        intercept = 1.3987848613348708;
        slope = 0.04905293747425554 - 1.3987848613348708;
        return intercept + slope * (x - 1.3987848613348708);
    }
    else if(time <= 179){
        intercept = 0.04905293747425554;
        slope = 0.1954297087746358 - 0.04905293747425554;
        return intercept + slope * (x - 0.04905293747425554);
    }
    else if(time <= 180){
        intercept = 0.1954297087746358;
        slope = -0.5471970523095337 - 0.1954297087746358;
        return intercept + slope * (x - 0.1954297087746358);
    }
    else if(time <= 181){
        intercept = -0.5471970523095337;
        slope = -0.2156767538603143 - -0.5471970523095337;
        return intercept + slope * (x - -0.5471970523095337);
    }
    else if(time <= 182){
        intercept = -0.2156767538603143;
        slope = 0.19730818549203524 - -0.2156767538603143;
        return intercept + slope * (x - -0.2156767538603143);
    }
    else if(time <= 183){
        intercept = 0.19730818549203524;
        slope = 0.4629362654232094 - 0.19730818549203524;
        return intercept + slope * (x - 0.19730818549203524);
    }
    else if(time <= 184){
        intercept = 0.4629362654232094;
        slope = 0.9028471263105833 - 0.4629362654232094;
        return intercept + slope * (x - 0.4629362654232094);
    }
    else if(time <= 185){
        intercept = 0.9028471263105833;
        slope = 1.1871624106858205 - 0.9028471263105833;
        return intercept + slope * (x - 0.9028471263105833);
    }
    else if(time <= 186){
        intercept = 1.1871624106858205;
        slope = -1.1819290070962285 - 1.1871624106858205;
        return intercept + slope * (x - 1.1871624106858205);
    }
    else if(time <= 187){
        intercept = -1.1819290070962285;
        slope = 0.8982295648408433 - -1.1819290070962285;
        return intercept + slope * (x - -1.1819290070962285);
    }
    else if(time <= 188){
        intercept = 0.8982295648408433;
        slope = -1.2384139612158052 - 0.8982295648408433;
        return intercept + slope * (x - 0.8982295648408433);
    }
    else if(time <= 189){
        intercept = -1.2384139612158052;
        slope = -0.03277450495376532 - -1.2384139612158052;
        return intercept + slope * (x - -1.2384139612158052);
    }
    else if(time <= 190){
        intercept = -0.03277450495376532;
        slope = 0.3767100788418802 - -0.03277450495376532;
        return intercept + slope * (x - -0.03277450495376532);
    }
    else if(time <= 191){
        intercept = 0.3767100788418802;
        slope = -0.47878774786199174 - 0.3767100788418802;
        return intercept + slope * (x - 0.3767100788418802);
    }
    else if(time <= 192){
        intercept = -0.47878774786199174;
        slope = 0.09954947588160885 - -0.47878774786199174;
        return intercept + slope * (x - -0.47878774786199174);
    }
    else if(time <= 193){
        intercept = 0.09954947588160885;
        slope = 0.04843226726853589 - 0.09954947588160885;
        return intercept + slope * (x - 0.09954947588160885);
    }
    else if(time <= 194){
        intercept = 0.04843226726853589;
        slope = -0.2712608469448989 - 0.04843226726853589;
        return intercept + slope * (x - 0.04843226726853589);
    }
    else if(time <= 195){
        intercept = -0.2712608469448989;
        slope = -0.18899744893711992 - -0.2712608469448989;
        return intercept + slope * (x - -0.2712608469448989);
    }
    else if(time <= 196){
        intercept = -0.18899744893711992;
        slope = 0.19587533019491662 - -0.18899744893711992;
        return intercept + slope * (x - -0.18899744893711992);
    }
    else if(time <= 197){
        intercept = 0.19587533019491662;
        slope = -0.42307462004712676 - 0.19587533019491662;
        return intercept + slope * (x - 0.19587533019491662);
    }
    else if(time <= 198){
        intercept = -0.42307462004712676;
        slope = -1.1641305278189165 - -0.42307462004712676;
        return intercept + slope * (x - -0.42307462004712676);
    }
    else if(time <= 199){
        intercept = -1.1641305278189165;
        slope = -0.2682461095786345 - -1.1641305278189165;
        return intercept + slope * (x - -1.1641305278189165);
    }
    else if(time <= 200){
        intercept = -0.2682461095786345;
        slope = -0.9262070540994739 - -0.2682461095786345;
        return intercept + slope * (x - -0.2682461095786345);
    }
    else if(time <= 201){
        intercept = -0.9262070540994739;
        slope = 1.5497277219958014 - -0.9262070540994739;
        return intercept + slope * (x - -0.9262070540994739);
    }
    else if(time <= 202){
        intercept = 1.5497277219958014;
        slope = -0.4115089302614031 - 1.5497277219958014;
        return intercept + slope * (x - 1.5497277219958014);
    }
    else if(time <= 203){
        intercept = -0.4115089302614031;
        slope = 1.2464167555554997 - -0.4115089302614031;
        return intercept + slope * (x - -0.4115089302614031);
    }
    else if(time <= 204){
        intercept = 1.2464167555554997;
        slope = -0.056993601750833595 - 1.2464167555554997;
        return intercept + slope * (x - 1.2464167555554997);
    }
    else if(time <= 205){
        intercept = -0.056993601750833595;
        slope = -0.8853067972403459 - -0.056993601750833595;
        return intercept + slope * (x - -0.056993601750833595);
    }
    else if(time <= 206){
        intercept = -0.8853067972403459;
        slope = -1.068556512670723 - -0.8853067972403459;
        return intercept + slope * (x - -0.8853067972403459);
    }
    else if(time <= 207){
        intercept = -1.068556512670723;
        slope = 0.8868428613440278 - -1.068556512670723;
        return intercept + slope * (x - -1.068556512670723);
    }
    else if(time <= 208){
        intercept = 0.8868428613440278;
        slope = -1.6759913968705673 - 0.8868428613440278;
        return intercept + slope * (x - 0.8868428613440278);
    }
    else if(time <= 209){
        intercept = -1.6759913968705673;
        slope = 0.7228864744617939 - -1.6759913968705673;
        return intercept + slope * (x - -1.6759913968705673);
    }
    else if(time <= 210){
        intercept = 0.7228864744617939;
        slope = 0.5286511352833738 - 0.7228864744617939;
        return intercept + slope * (x - 0.7228864744617939);
    }
    else if(time <= 211){
        intercept = 0.5286511352833738;
        slope = -0.36524004029699336 - 0.5286511352833738;
        return intercept + slope * (x - 0.5286511352833738);
    }
    else if(time <= 212){
        intercept = -0.36524004029699336;
        slope = -0.3138986840850646 - -0.36524004029699336;
        return intercept + slope * (x - -0.36524004029699336);
    }
    else if(time <= 213){
        intercept = -0.3138986840850646;
        slope = -0.14684423752716785 - -0.3138986840850646;
        return intercept + slope * (x - -0.3138986840850646);
    }
    else if(time <= 214){
        intercept = -0.14684423752716785;
        slope = 0.8509226336128485 - -0.14684423752716785;
        return intercept + slope * (x - -0.14684423752716785);
    }
    else if(time <= 215){
        intercept = 0.8509226336128485;
        slope = 0.20343042111278892 - 0.8509226336128485;
        return intercept + slope * (x - 0.8509226336128485);
    }
    else if(time <= 216){
        intercept = 0.20343042111278892;
        slope = -1.1421070389458565 - 0.20343042111278892;
        return intercept + slope * (x - 0.20343042111278892);
    }
    else if(time <= 217){
        intercept = -1.1421070389458565;
        slope = -0.21626886376239451 - -1.1421070389458565;
        return intercept + slope * (x - -1.1421070389458565);
    }
    else if(time <= 218){
        intercept = -0.21626886376239451;
        slope = 0.8793058634570866 - -0.21626886376239451;
        return intercept + slope * (x - -0.21626886376239451);
    }
    else if(time <= 219){
        intercept = 0.8793058634570866;
        slope = 1.11481072427671 - 0.8793058634570866;
        return intercept + slope * (x - 0.8793058634570866);
    }
    else if(time <= 220){
        intercept = 1.11481072427671;
        slope = -0.07684942542045807 - 1.11481072427671;
        return intercept + slope * (x - 1.11481072427671);
    }
    else if(time <= 221){
        intercept = -0.07684942542045807;
        slope = -0.7056768801388624 - -0.07684942542045807;
        return intercept + slope * (x - -0.07684942542045807);
    }
    else if(time <= 222){
        intercept = -0.7056768801388624;
        slope = -0.26937511655295376 - -0.7056768801388624;
        return intercept + slope * (x - -0.7056768801388624);
    }
    else if(time <= 223){
        intercept = -0.26937511655295376;
        slope = 0.45064838065048346 - -0.26937511655295376;
        return intercept + slope * (x - -0.26937511655295376);
    }
    else if(time <= 224){
        intercept = 0.45064838065048346;
        slope = -1.044509933484921 - 0.45064838065048346;
        return intercept + slope * (x - 0.45064838065048346);
    }
    else if(time <= 225){
        intercept = -1.044509933484921;
        slope = 0.18574630541085765 - -1.044509933484921;
        return intercept + slope * (x - -1.044509933484921);
    }
    else if(time <= 226){
        intercept = 0.18574630541085765;
        slope = 0.2527286121080733 - 0.18574630541085765;
        return intercept + slope * (x - 0.18574630541085765);
    }
    else if(time <= 227){
        intercept = 0.2527286121080733;
        slope = 2.1525035331903326 - 0.2527286121080733;
        return intercept + slope * (x - 0.2527286121080733);
    }
    else if(time <= 228){
        intercept = 2.1525035331903326;
        slope = -0.7674831415526642 - 2.1525035331903326;
        return intercept + slope * (x - 2.1525035331903326);
    }
    else if(time <= 229){
        intercept = -0.7674831415526642;
        slope = -1.5385640108721137 - -0.7674831415526642;
        return intercept + slope * (x - -0.7674831415526642);
    }
    else if(time <= 230){
        intercept = -1.5385640108721137;
        slope = -0.8472945302760915 - -1.5385640108721137;
        return intercept + slope * (x - -1.5385640108721137);
    }
    else if(time <= 231){
        intercept = -0.8472945302760915;
        slope = -0.04774696654340497 - -0.8472945302760915;
        return intercept + slope * (x - -0.8472945302760915);
    }
    else if(time <= 232){
        intercept = -0.04774696654340497;
        slope = -1.2194323415025274 - -0.04774696654340497;
        return intercept + slope * (x - -0.04774696654340497);
    }
    else if(time <= 233){
        intercept = -1.2194323415025274;
        slope = -2.6275490375274058 - -1.2194323415025274;
        return intercept + slope * (x - -1.2194323415025274);
    }
    else if(time <= 234){
        intercept = -2.6275490375274058;
        slope = 1.0821913469932813 - -2.6275490375274058;
        return intercept + slope * (x - -2.6275490375274058);
    }
    else if(time <= 235){
        intercept = 1.0821913469932813;
        slope = -1.0339355063131876 - 1.0821913469932813;
        return intercept + slope * (x - 1.0821913469932813);
    }
    else if(time <= 236){
        intercept = -1.0339355063131876;
        slope = 0.1150188831652123 - -1.0339355063131876;
        return intercept + slope * (x - -1.0339355063131876);
    }
    else if(time <= 237){
        intercept = 0.1150188831652123;
        slope = -0.17266185443466636 - 0.1150188831652123;
        return intercept + slope * (x - 0.1150188831652123);
    }
    else if(time <= 238){
        intercept = -0.17266185443466636;
        slope = 0.8242893339271194 - -0.17266185443466636;
        return intercept + slope * (x - -0.17266185443466636);
    }
    else if(time <= 239){
        intercept = 0.8242893339271194;
        slope = -0.19076740663393382 - 0.8242893339271194;
        return intercept + slope * (x - 0.8242893339271194);
    }
    else if(time <= 240){
        intercept = -0.19076740663393382;
        slope = 1.094622372635908 - -0.19076740663393382;
        return intercept + slope * (x - -0.19076740663393382);
    }
    else if(time <= 241){
        intercept = 1.094622372635908;
        slope = 0.24623045219482137 - 1.094622372635908;
        return intercept + slope * (x - 1.094622372635908);
    }
    else if(time <= 242){
        intercept = 0.24623045219482137;
        slope = -0.1325099873349063 - 0.24623045219482137;
        return intercept + slope * (x - 0.24623045219482137);
    }
    else if(time <= 243){
        intercept = -0.1325099873349063;
        slope = -0.8540432144004171 - -0.1325099873349063;
        return intercept + slope * (x - -0.1325099873349063);
    }
    else if(time <= 244){
        intercept = -0.8540432144004171;
        slope = -0.03010198369649403 - -0.8540432144004171;
        return intercept + slope * (x - -0.8540432144004171);
    }
    else if(time <= 245){
        intercept = -0.03010198369649403;
        slope = -0.9906402644321689 - -0.03010198369649403;
        return intercept + slope * (x - -0.03010198369649403);
    }
    else if(time <= 246){
        intercept = -0.9906402644321689;
        slope = 1.3375797782964067 - -0.9906402644321689;
        return intercept + slope * (x - -0.9906402644321689);
    }
    else if(time <= 247){
        intercept = 1.3375797782964067;
        slope = -0.11279965278814517 - 1.3375797782964067;
        return intercept + slope * (x - 1.3375797782964067);
    }
    else if(time <= 248){
        intercept = -0.11279965278814517;
        slope = -0.7371704135237038 - -0.11279965278814517;
        return intercept + slope * (x - -0.11279965278814517);
    }
    else if(time <= 249){
        intercept = -0.7371704135237038;
        slope = 0.16185251443394796 - -0.7371704135237038;
        return intercept + slope * (x - -0.7371704135237038);
    }
    else if(time <= 250){
        intercept = 0.16185251443394796;
        slope = 1.1140450823793733 - 0.16185251443394796;
        return intercept + slope * (x - 0.16185251443394796);
    }
    else if(time <= 251){
        intercept = 1.1140450823793733;
        slope = -0.0017489279586599892 - 1.1140450823793733;
        return intercept + slope * (x - 1.1140450823793733);
    }
    else if(time <= 252){
        intercept = -0.0017489279586599892;
        slope = -0.27248672652934774 - -0.0017489279586599892;
        return intercept + slope * (x - -0.0017489279586599892);
    }
    else if(time <= 253){
        intercept = -0.27248672652934774;
        slope = 0.953319712260393 - -0.27248672652934774;
        return intercept + slope * (x - -0.27248672652934774);
    }
    else if(time <= 254){
        intercept = 0.953319712260393;
        slope = 1.7573719839149773 - 0.953319712260393;
        return intercept + slope * (x - 0.953319712260393);
    }
    else if(time <= 255){
        intercept = 1.7573719839149773;
        slope = 1.183270166202989 - 1.7573719839149773;
        return intercept + slope * (x - 1.7573719839149773);
    }
    else if(time <= 256){
        intercept = 1.183270166202989;
        slope = 1.6198377269961421 - 1.183270166202989;
        return intercept + slope * (x - 1.183270166202989);
    }
    else if(time <= 257){
        intercept = 1.6198377269961421;
        slope = -0.847175824459603 - 1.6198377269961421;
        return intercept + slope * (x - 1.6198377269961421);
    }
    else if(time <= 258){
        intercept = -0.847175824459603;
        slope = 0.23978166575720175 - -0.847175824459603;
        return intercept + slope * (x - -0.847175824459603);
    }
    else if(time <= 259){
        intercept = 0.23978166575720175;
        slope = 0.5809751111879454 - 0.23978166575720175;
        return intercept + slope * (x - 0.23978166575720175);
    }
    else if(time <= 260){
        intercept = 0.5809751111879454;
        slope = 0.08334773611607292 - 0.5809751111879454;
        return intercept + slope * (x - 0.5809751111879454);
    }
    else if(time <= 261){
        intercept = 0.08334773611607292;
        slope = -1.1616404859218596 - 0.08334773611607292;
        return intercept + slope * (x - 0.08334773611607292);
    }
    else if(time <= 262){
        intercept = -1.1616404859218596;
        slope = 1.1467603953369108 - -1.1616404859218596;
        return intercept + slope * (x - -1.1616404859218596);
    }
    else if(time <= 263){
        intercept = 1.1467603953369108;
        slope = 0.6133046186460592 - 1.1467603953369108;
        return intercept + slope * (x - 1.1467603953369108);
    }
    else if(time <= 264){
        intercept = 0.6133046186460592;
        slope = 1.2548139723674911 - 0.6133046186460592;
        return intercept + slope * (x - 0.6133046186460592);
    }
    else if(time <= 265){
        intercept = 1.2548139723674911;
        slope = -0.5338625720722562 - 1.2548139723674911;
        return intercept + slope * (x - 1.2548139723674911);
    }
    else if(time <= 266){
        intercept = -0.5338625720722562;
        slope = -1.0912052825755445 - -0.5338625720722562;
        return intercept + slope * (x - -0.5338625720722562);
    }
    else if(time <= 267){
        intercept = -1.0912052825755445;
        slope = 0.4479216701322142 - -1.0912052825755445;
        return intercept + slope * (x - -1.0912052825755445);
    }
    else if(time <= 268){
        intercept = 0.4479216701322142;
        slope = 0.23870348344272269 - 0.4479216701322142;
        return intercept + slope * (x - 0.4479216701322142);
    }
    else if(time <= 269){
        intercept = 0.23870348344272269;
        slope = 0.7987301513270529 - 0.23870348344272269;
        return intercept + slope * (x - 0.23870348344272269);
    }
    else if(time <= 270){
        intercept = 0.7987301513270529;
        slope = -0.20593819817262352 - 0.7987301513270529;
        return intercept + slope * (x - 0.7987301513270529);
    }
    else if(time <= 271){
        intercept = -0.20593819817262352;
        slope = 1.275586681524095 - -0.20593819817262352;
        return intercept + slope * (x - -0.20593819817262352);
    }
    else if(time <= 272){
        intercept = 1.275586681524095;
        slope = -1.0196234272044216 - 1.275586681524095;
        return intercept + slope * (x - 1.275586681524095);
    }
    else if(time <= 273){
        intercept = -1.0196234272044216;
        slope = -0.2627039150080225 - -1.0196234272044216;
        return intercept + slope * (x - -1.0196234272044216);
    }
    else if(time <= 274){
        intercept = -0.2627039150080225;
        slope = 0.5808248641497737 - -0.2627039150080225;
        return intercept + slope * (x - -0.2627039150080225);
    }
    else if(time <= 275){
        intercept = 0.5808248641497737;
        slope = -0.044754155002921514 - 0.5808248641497737;
        return intercept + slope * (x - 0.5808248641497737);
    }
    else if(time <= 276){
        intercept = -0.044754155002921514;
        slope = 0.8504082468301595 - -0.044754155002921514;
        return intercept + slope * (x - -0.044754155002921514);
    }
    else if(time <= 277){
        intercept = 0.8504082468301595;
        slope = -1.2890523694585119 - 0.8504082468301595;
        return intercept + slope * (x - 0.8504082468301595);
    }
    else if(time <= 278){
        intercept = -1.2890523694585119;
        slope = 0.280326147498879 - -1.2890523694585119;
        return intercept + slope * (x - -1.2890523694585119);
    }
    else if(time <= 279){
        intercept = 0.280326147498879;
        slope = 0.8759096715707962 - 0.280326147498879;
        return intercept + slope * (x - 0.280326147498879);
    }
    else if(time <= 280){
        intercept = 0.8759096715707962;
        slope = -0.2622214596288415 - 0.8759096715707962;
        return intercept + slope * (x - 0.8759096715707962);
    }
    else if(time <= 281){
        intercept = -0.2622214596288415;
        slope = 0.993936519037655 - -0.2622214596288415;
        return intercept + slope * (x - -0.2622214596288415);
    }
    else if(time <= 282){
        intercept = 0.993936519037655;
        slope = -1.446211770279436 - 0.993936519037655;
        return intercept + slope * (x - 0.993936519037655);
    }
    else if(time <= 283){
        intercept = -1.446211770279436;
        slope = 1.4546326714452265 - -1.446211770279436;
        return intercept + slope * (x - -1.446211770279436);
    }
    else if(time <= 284){
        intercept = 1.4546326714452265;
        slope = -0.8975086806213562 - 1.4546326714452265;
        return intercept + slope * (x - 1.4546326714452265);
    }
    else if(time <= 285){
        intercept = -0.8975086806213562;
        slope = 0.9966568405952687 - -0.8975086806213562;
        return intercept + slope * (x - -0.8975086806213562);
    }
    else if(time <= 286){
        intercept = 0.9966568405952687;
        slope = 1.2685019264005557 - 0.9966568405952687;
        return intercept + slope * (x - 0.9966568405952687);
    }
    else if(time <= 287){
        intercept = 1.2685019264005557;
        slope = 0.4960741819252232 - 1.2685019264005557;
        return intercept + slope * (x - 1.2685019264005557);
    }
    else if(time <= 288){
        intercept = 0.4960741819252232;
        slope = -0.987489625300407 - 0.4960741819252232;
        return intercept + slope * (x - 0.4960741819252232);
    }
    else if(time <= 289){
        intercept = -0.987489625300407;
        slope = 1.807012502415468 - -0.987489625300407;
        return intercept + slope * (x - -0.987489625300407);
    }
    else if(time <= 290){
        intercept = 1.807012502415468;
        slope = -1.2685495788962942 - 1.807012502415468;
        return intercept + slope * (x - 1.807012502415468);
    }
    else if(time <= 291){
        intercept = -1.2685495788962942;
        slope = -0.8096638061909442 - -1.2685495788962942;
        return intercept + slope * (x - -1.2685495788962942);
    }
    return -0.8096638061909442;
}

vector vensim_ode_func(real time, vector outcome, real minimum_order_processing_time, real inventory_adjustment_time){
    vector[6] dydt;  // Return vector of the ODE function

    // State variables
    real expected_order_rate = outcome[1];
    real wip_with_p_noise = outcome[2];
    real inventory = outcome[3];
    real backlog = outcome[4];
    real inventory_with_p_noise = outcome[5];
    real work_in_process_inventory = outcome[6];

    real time_step = 0.0625;
    real ran_norm1 = None;
    real p_noise_scale = 0.1;
    real process_corr_time = 3;
    real wip_wo_p_noise = work_in_process_inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm1(time);
    real wip_with_p_noise_change_rate = wip_wo_p_noise - wip_with_p_noise / process_corr_time;
    real wip_with_p_noise_dydt = wip_with_p_noise_change_rate;
    real time_to_average_order_rate = 8;
    real ran_norm2 = None;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real manufacturing_cycle_time = 8;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real inventory_wo_p_noise = inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm2(time);
    real inventory_with_p_noise_change_rate = inventory_wo_p_noise - inventory_with_p_noise / process_corr_time;
    real inventory_with_p_noise_dydt = inventory_with_p_noise_change_rate;
    real wip_adjustment_time = 2;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real customer_order_rate = None;
    real order_rate = dataFunc__customer_order_rate(time);
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real inventory_dydt = production_rate - shipment_rate;
    real backlog_dydt = order_rate - order_fulfillment_rate;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;

    dydt[1] = expected_order_rate_dydt;
    dydt[2] = wip_with_p_noise_dydt;
    dydt[3] = inventory_dydt;
    dydt[4] = backlog_dydt;
    dydt[5] = inventory_with_p_noise_dydt;
    dydt[6] = work_in_process_inventory_dydt;

    return dydt;
}
