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
        intercept = 0.6326194285188528;
        slope = -1.6247970664654166 - 0.6326194285188528;
        return intercept + slope * (x - 0.6326194285188528);
    }
    else if(time <= 2){
        intercept = -1.6247970664654166;
        slope = 0.7208114322544251 - -1.6247970664654166;
        return intercept + slope * (x - -1.6247970664654166);
    }
    else if(time <= 3){
        intercept = 0.7208114322544251;
        slope = -1.8160170208119482 - 0.7208114322544251;
        return intercept + slope * (x - 0.7208114322544251);
    }
    else if(time <= 4){
        intercept = -1.8160170208119482;
        slope = 0.09023184310307499 - -1.8160170208119482;
        return intercept + slope * (x - -1.8160170208119482);
    }
    else if(time <= 5){
        intercept = 0.09023184310307499;
        slope = 1.032161924750172 - 0.09023184310307499;
        return intercept + slope * (x - 0.09023184310307499);
    }
    else if(time <= 6){
        intercept = 1.032161924750172;
        slope = 0.889192632857106 - 1.032161924750172;
        return intercept + slope * (x - 1.032161924750172);
    }
    else if(time <= 7){
        intercept = 0.889192632857106;
        slope = 0.8814535719538994 - 0.889192632857106;
        return intercept + slope * (x - 0.889192632857106);
    }
    else if(time <= 8){
        intercept = 0.8814535719538994;
        slope = 1.5810585848632226 - 0.8814535719538994;
        return intercept + slope * (x - 0.8814535719538994);
    }
    else if(time <= 9){
        intercept = 1.5810585848632226;
        slope = 1.098656222422521 - 1.5810585848632226;
        return intercept + slope * (x - 1.5810585848632226);
    }
    else if(time <= 10){
        intercept = 1.098656222422521;
        slope = -0.5176387317105305 - 1.098656222422521;
        return intercept + slope * (x - 1.098656222422521);
    }
    else if(time <= 11){
        intercept = -0.5176387317105305;
        slope = 2.014259581429694 - -0.5176387317105305;
        return intercept + slope * (x - -0.5176387317105305);
    }
    else if(time <= 12){
        intercept = 2.014259581429694;
        slope = -0.6726454025225599 - 2.014259581429694;
        return intercept + slope * (x - 2.014259581429694);
    }
    else if(time <= 13){
        intercept = -0.6726454025225599;
        slope = 2.1161300210198495 - -0.6726454025225599;
        return intercept + slope * (x - -0.6726454025225599);
    }
    else if(time <= 14){
        intercept = 2.1161300210198495;
        slope = 1.5613535485657353 - 2.1161300210198495;
        return intercept + slope * (x - 2.1161300210198495);
    }
    else if(time <= 15){
        intercept = 1.5613535485657353;
        slope = 1.7359849735808701 - 1.5613535485657353;
        return intercept + slope * (x - 1.5613535485657353);
    }
    else if(time <= 16){
        intercept = 1.7359849735808701;
        slope = -2.0045791572496294 - 1.7359849735808701;
        return intercept + slope * (x - 1.7359849735808701);
    }
    else if(time <= 17){
        intercept = -2.0045791572496294;
        slope = 0.4999864315162988 - -2.0045791572496294;
        return intercept + slope * (x - -2.0045791572496294);
    }
    else if(time <= 18){
        intercept = 0.4999864315162988;
        slope = 1.1321018190260634 - 0.4999864315162988;
        return intercept + slope * (x - 0.4999864315162988);
    }
    else if(time <= 19){
        intercept = 1.1321018190260634;
        slope = -1.4405402314562383 - 1.1321018190260634;
        return intercept + slope * (x - 1.1321018190260634);
    }
    else if(time <= 20){
        intercept = -1.4405402314562383;
        slope = 1.45812686974674 - -1.4405402314562383;
        return intercept + slope * (x - -1.4405402314562383);
    }
    else if(time <= 21){
        intercept = 1.45812686974674;
        slope = 0.6447362371949318 - 1.45812686974674;
        return intercept + slope * (x - 1.45812686974674);
    }
    else if(time <= 22){
        intercept = 0.6447362371949318;
        slope = -0.3498923259387434 - 0.6447362371949318;
        return intercept + slope * (x - 0.6447362371949318);
    }
    else if(time <= 23){
        intercept = -0.3498923259387434;
        slope = -1.0816769732728917 - -0.3498923259387434;
        return intercept + slope * (x - -0.3498923259387434);
    }
    else if(time <= 24){
        intercept = -1.0816769732728917;
        slope = -1.0835618048851108 - -1.0816769732728917;
        return intercept + slope * (x - -1.0816769732728917);
    }
    else if(time <= 25){
        intercept = -1.0835618048851108;
        slope = -0.6662986003025995 - -1.0835618048851108;
        return intercept + slope * (x - -1.0835618048851108);
    }
    else if(time <= 26){
        intercept = -0.6662986003025995;
        slope = -0.12362164067801036 - -0.6662986003025995;
        return intercept + slope * (x - -0.6662986003025995);
    }
    else if(time <= 27){
        intercept = -0.12362164067801036;
        slope = 0.6200918696111241 - -0.12362164067801036;
        return intercept + slope * (x - -0.12362164067801036);
    }
    else if(time <= 28){
        intercept = 0.6200918696111241;
        slope = -0.9223569732123273 - 0.6200918696111241;
        return intercept + slope * (x - 0.6200918696111241);
    }
    else if(time <= 29){
        intercept = -0.9223569732123273;
        slope = 0.20411063473585803 - -0.9223569732123273;
        return intercept + slope * (x - -0.9223569732123273);
    }
    else if(time <= 30){
        intercept = 0.20411063473585803;
        slope = 0.18451385597045727 - 0.20411063473585803;
        return intercept + slope * (x - 0.20411063473585803);
    }
    else if(time <= 31){
        intercept = 0.18451385597045727;
        slope = 1.1918424243020838 - 0.18451385597045727;
        return intercept + slope * (x - 0.18451385597045727);
    }
    else if(time <= 32){
        intercept = 1.1918424243020838;
        slope = 0.4574381094800493 - 1.1918424243020838;
        return intercept + slope * (x - 1.1918424243020838);
    }
    else if(time <= 33){
        intercept = 0.4574381094800493;
        slope = 0.1813666389379802 - 0.4574381094800493;
        return intercept + slope * (x - 0.4574381094800493);
    }
    else if(time <= 34){
        intercept = 0.1813666389379802;
        slope = -0.361502868383316 - 0.1813666389379802;
        return intercept + slope * (x - 0.1813666389379802);
    }
    else if(time <= 35){
        intercept = -0.361502868383316;
        slope = -1.0066232418290295 - -0.361502868383316;
        return intercept + slope * (x - -0.361502868383316);
    }
    else if(time <= 36){
        intercept = -1.0066232418290295;
        slope = 1.6585545933246368 - -1.0066232418290295;
        return intercept + slope * (x - -1.0066232418290295);
    }
    else if(time <= 37){
        intercept = 1.6585545933246368;
        slope = 0.35008872680283054 - 1.6585545933246368;
        return intercept + slope * (x - 1.6585545933246368);
    }
    else if(time <= 38){
        intercept = 0.35008872680283054;
        slope = 0.4549849346326579 - 0.35008872680283054;
        return intercept + slope * (x - 0.35008872680283054);
    }
    else if(time <= 39){
        intercept = 0.4549849346326579;
        slope = 1.6521347287660337 - 0.4549849346326579;
        return intercept + slope * (x - 0.4549849346326579);
    }
    else if(time <= 40){
        intercept = 1.6521347287660337;
        slope = -1.9352913453789802 - 1.6521347287660337;
        return intercept + slope * (x - 1.6521347287660337);
    }
    else if(time <= 41){
        intercept = -1.9352913453789802;
        slope = 0.08603126668900561 - -1.9352913453789802;
        return intercept + slope * (x - -1.9352913453789802);
    }
    else if(time <= 42){
        intercept = 0.08603126668900561;
        slope = 1.003206183469728 - 0.08603126668900561;
        return intercept + slope * (x - 0.08603126668900561);
    }
    else if(time <= 43){
        intercept = 1.003206183469728;
        slope = -0.12932023968187303 - 1.003206183469728;
        return intercept + slope * (x - 1.003206183469728);
    }
    else if(time <= 44){
        intercept = -0.12932023968187303;
        slope = -0.009486012897902725 - -0.12932023968187303;
        return intercept + slope * (x - -0.12932023968187303);
    }
    else if(time <= 45){
        intercept = -0.009486012897902725;
        slope = 0.9199671600341993 - -0.009486012897902725;
        return intercept + slope * (x - -0.009486012897902725);
    }
    else if(time <= 46){
        intercept = 0.9199671600341993;
        slope = -0.7643911162702235 - 0.9199671600341993;
        return intercept + slope * (x - 0.9199671600341993);
    }
    else if(time <= 47){
        intercept = -0.7643911162702235;
        slope = -0.788035223301726 - -0.7643911162702235;
        return intercept + slope * (x - -0.7643911162702235);
    }
    else if(time <= 48){
        intercept = -0.788035223301726;
        slope = -1.0807716315975346 - -0.788035223301726;
        return intercept + slope * (x - -0.788035223301726);
    }
    else if(time <= 49){
        intercept = -1.0807716315975346;
        slope = -0.11368491989482081 - -1.0807716315975346;
        return intercept + slope * (x - -1.0807716315975346);
    }
    else if(time <= 50){
        intercept = -0.11368491989482081;
        slope = 0.6647766095162504 - -0.11368491989482081;
        return intercept + slope * (x - -0.11368491989482081);
    }
    else if(time <= 51){
        intercept = 0.6647766095162504;
        slope = -0.3815077242857538 - 0.6647766095162504;
        return intercept + slope * (x - 0.6647766095162504);
    }
    else if(time <= 52){
        intercept = -0.3815077242857538;
        slope = -0.08263388876667943 - -0.3815077242857538;
        return intercept + slope * (x - -0.3815077242857538);
    }
    else if(time <= 53){
        intercept = -0.08263388876667943;
        slope = -0.4616327400614052 - -0.08263388876667943;
        return intercept + slope * (x - -0.08263388876667943);
    }
    else if(time <= 54){
        intercept = -0.4616327400614052;
        slope = -1.9387185237770042 - -0.4616327400614052;
        return intercept + slope * (x - -0.4616327400614052);
    }
    else if(time <= 55){
        intercept = -1.9387185237770042;
        slope = 0.7695507849316993 - -1.9387185237770042;
        return intercept + slope * (x - -1.9387185237770042);
    }
    else if(time <= 56){
        intercept = 0.7695507849316993;
        slope = 0.9995234180613377 - 0.7695507849316993;
        return intercept + slope * (x - 0.7695507849316993);
    }
    else if(time <= 57){
        intercept = 0.9995234180613377;
        slope = -0.9736913536727835 - 0.9995234180613377;
        return intercept + slope * (x - 0.9995234180613377);
    }
    else if(time <= 58){
        intercept = -0.9736913536727835;
        slope = -0.5379523432912386 - -0.9736913536727835;
        return intercept + slope * (x - -0.9736913536727835);
    }
    else if(time <= 59){
        intercept = -0.5379523432912386;
        slope = -1.292871881121813 - -0.5379523432912386;
        return intercept + slope * (x - -0.5379523432912386);
    }
    else if(time <= 60){
        intercept = -1.292871881121813;
        slope = -0.27389085830533 - -1.292871881121813;
        return intercept + slope * (x - -1.292871881121813);
    }
    else if(time <= 61){
        intercept = -0.27389085830533;
        slope = -1.0124203878752103 - -0.27389085830533;
        return intercept + slope * (x - -0.27389085830533);
    }
    else if(time <= 62){
        intercept = -1.0124203878752103;
        slope = 1.2212493520522738 - -1.0124203878752103;
        return intercept + slope * (x - -1.0124203878752103);
    }
    else if(time <= 63){
        intercept = 1.2212493520522738;
        slope = -0.2942342618427645 - 1.2212493520522738;
        return intercept + slope * (x - 1.2212493520522738);
    }
    else if(time <= 64){
        intercept = -0.2942342618427645;
        slope = 1.0175659754813384 - -0.2942342618427645;
        return intercept + slope * (x - -0.2942342618427645);
    }
    else if(time <= 65){
        intercept = 1.0175659754813384;
        slope = 0.10238363487702382 - 1.0175659754813384;
        return intercept + slope * (x - 1.0175659754813384);
    }
    else if(time <= 66){
        intercept = 0.10238363487702382;
        slope = -0.23995512660435175 - 0.10238363487702382;
        return intercept + slope * (x - 0.10238363487702382);
    }
    else if(time <= 67){
        intercept = -0.23995512660435175;
        slope = 1.9650582440499196 - -0.23995512660435175;
        return intercept + slope * (x - -0.23995512660435175);
    }
    else if(time <= 68){
        intercept = 1.9650582440499196;
        slope = -1.1497995128318987 - 1.9650582440499196;
        return intercept + slope * (x - 1.9650582440499196);
    }
    else if(time <= 69){
        intercept = -1.1497995128318987;
        slope = 2.076213983247096 - -1.1497995128318987;
        return intercept + slope * (x - -1.1497995128318987);
    }
    else if(time <= 70){
        intercept = 2.076213983247096;
        slope = -0.2630794660706631 - 2.076213983247096;
        return intercept + slope * (x - 2.076213983247096);
    }
    else if(time <= 71){
        intercept = -0.2630794660706631;
        slope = 0.527963730852176 - -0.2630794660706631;
        return intercept + slope * (x - -0.2630794660706631);
    }
    else if(time <= 72){
        intercept = 0.527963730852176;
        slope = -1.4801431304813408 - 0.527963730852176;
        return intercept + slope * (x - 0.527963730852176);
    }
    else if(time <= 73){
        intercept = -1.4801431304813408;
        slope = -1.2156264938939811 - -1.4801431304813408;
        return intercept + slope * (x - -1.4801431304813408);
    }
    else if(time <= 74){
        intercept = -1.2156264938939811;
        slope = -1.2146203749168838 - -1.2156264938939811;
        return intercept + slope * (x - -1.2156264938939811);
    }
    else if(time <= 75){
        intercept = -1.2146203749168838;
        slope = 0.4091664288382258 - -1.2146203749168838;
        return intercept + slope * (x - -1.2146203749168838);
    }
    else if(time <= 76){
        intercept = 0.4091664288382258;
        slope = 0.7348017651626761 - 0.4091664288382258;
        return intercept + slope * (x - 0.4091664288382258);
    }
    else if(time <= 77){
        intercept = 0.7348017651626761;
        slope = -0.8086037658746608 - 0.7348017651626761;
        return intercept + slope * (x - 0.7348017651626761);
    }
    else if(time <= 78){
        intercept = -0.8086037658746608;
        slope = 0.44359065559438166 - -0.8086037658746608;
        return intercept + slope * (x - -0.8086037658746608);
    }
    else if(time <= 79){
        intercept = 0.44359065559438166;
        slope = 0.2612766766246676 - 0.44359065559438166;
        return intercept + slope * (x - 0.44359065559438166);
    }
    else if(time <= 80){
        intercept = 0.2612766766246676;
        slope = -0.24467910758039257 - 0.2612766766246676;
        return intercept + slope * (x - 0.2612766766246676);
    }
    else if(time <= 81){
        intercept = -0.24467910758039257;
        slope = -0.6257596087327172 - -0.24467910758039257;
        return intercept + slope * (x - -0.24467910758039257);
    }
    else if(time <= 82){
        intercept = -0.6257596087327172;
        slope = 1.0764749674171912 - -0.6257596087327172;
        return intercept + slope * (x - -0.6257596087327172);
    }
    else if(time <= 83){
        intercept = 1.0764749674171912;
        slope = 0.9868370954784728 - 1.0764749674171912;
        return intercept + slope * (x - 1.0764749674171912);
    }
    else if(time <= 84){
        intercept = 0.9868370954784728;
        slope = 0.5157112489179927 - 0.9868370954784728;
        return intercept + slope * (x - 0.9868370954784728);
    }
    else if(time <= 85){
        intercept = 0.5157112489179927;
        slope = 0.8216710084979465 - 0.5157112489179927;
        return intercept + slope * (x - 0.5157112489179927);
    }
    else if(time <= 86){
        intercept = 0.8216710084979465;
        slope = 0.972143505702468 - 0.8216710084979465;
        return intercept + slope * (x - 0.8216710084979465);
    }
    else if(time <= 87){
        intercept = 0.972143505702468;
        slope = -0.4906213032154121 - 0.972143505702468;
        return intercept + slope * (x - 0.972143505702468);
    }
    else if(time <= 88){
        intercept = -0.4906213032154121;
        slope = 1.2555676737193793 - -0.4906213032154121;
        return intercept + slope * (x - -0.4906213032154121);
    }
    else if(time <= 89){
        intercept = 1.2555676737193793;
        slope = 0.6255122948495564 - 1.2555676737193793;
        return intercept + slope * (x - 1.2555676737193793);
    }
    else if(time <= 90){
        intercept = 0.6255122948495564;
        slope = 1.036264699137861 - 0.6255122948495564;
        return intercept + slope * (x - 0.6255122948495564);
    }
    else if(time <= 91){
        intercept = 1.036264699137861;
        slope = 1.9326510647829405 - 1.036264699137861;
        return intercept + slope * (x - 1.036264699137861);
    }
    else if(time <= 92){
        intercept = 1.9326510647829405;
        slope = 0.2866794259211223 - 1.9326510647829405;
        return intercept + slope * (x - 1.9326510647829405);
    }
    else if(time <= 93){
        intercept = 0.2866794259211223;
        slope = 0.4989521640041461 - 0.2866794259211223;
        return intercept + slope * (x - 0.2866794259211223);
    }
    else if(time <= 94){
        intercept = 0.4989521640041461;
        slope = 0.7061278196887862 - 0.4989521640041461;
        return intercept + slope * (x - 0.4989521640041461);
    }
    else if(time <= 95){
        intercept = 0.7061278196887862;
        slope = 1.2708900539884527 - 0.7061278196887862;
        return intercept + slope * (x - 0.7061278196887862);
    }
    else if(time <= 96){
        intercept = 1.2708900539884527;
        slope = 0.8289836879227874 - 1.2708900539884527;
        return intercept + slope * (x - 1.2708900539884527);
    }
    else if(time <= 97){
        intercept = 0.8289836879227874;
        slope = 1.0315861221162783 - 0.8289836879227874;
        return intercept + slope * (x - 0.8289836879227874);
    }
    else if(time <= 98){
        intercept = 1.0315861221162783;
        slope = 0.09312579435784814 - 1.0315861221162783;
        return intercept + slope * (x - 1.0315861221162783);
    }
    else if(time <= 99){
        intercept = 0.09312579435784814;
        slope = -1.7426085340367043 - 0.09312579435784814;
        return intercept + slope * (x - 0.09312579435784814);
    }
    else if(time <= 100){
        intercept = -1.7426085340367043;
        slope = 1.2263686701891447 - -1.7426085340367043;
        return intercept + slope * (x - -1.7426085340367043);
    }
    else if(time <= 101){
        intercept = 1.2263686701891447;
        slope = -1.4047086681192298 - 1.2263686701891447;
        return intercept + slope * (x - 1.2263686701891447);
    }
    else if(time <= 102){
        intercept = -1.4047086681192298;
        slope = -0.3727869838381254 - -1.4047086681192298;
        return intercept + slope * (x - -1.4047086681192298);
    }
    else if(time <= 103){
        intercept = -0.3727869838381254;
        slope = 0.389831227847541 - -0.3727869838381254;
        return intercept + slope * (x - -0.3727869838381254);
    }
    else if(time <= 104){
        intercept = 0.389831227847541;
        slope = -0.6482133605516077 - 0.389831227847541;
        return intercept + slope * (x - 0.389831227847541);
    }
    else if(time <= 105){
        intercept = -0.6482133605516077;
        slope = -1.7976226064182153 - -0.6482133605516077;
        return intercept + slope * (x - -0.6482133605516077);
    }
    else if(time <= 106){
        intercept = -1.7976226064182153;
        slope = 0.7714709278663076 - -1.7976226064182153;
        return intercept + slope * (x - -1.7976226064182153);
    }
    else if(time <= 107){
        intercept = 0.7714709278663076;
        slope = 0.16833619500651914 - 0.7714709278663076;
        return intercept + slope * (x - 0.7714709278663076);
    }
    else if(time <= 108){
        intercept = 0.16833619500651914;
        slope = 0.33814401517047304 - 0.16833619500651914;
        return intercept + slope * (x - 0.16833619500651914);
    }
    else if(time <= 109){
        intercept = 0.33814401517047304;
        slope = 0.9965757629480203 - 0.33814401517047304;
        return intercept + slope * (x - 0.33814401517047304);
    }
    else if(time <= 110){
        intercept = 0.9965757629480203;
        slope = -0.13478567064918187 - 0.9965757629480203;
        return intercept + slope * (x - 0.9965757629480203);
    }
    else if(time <= 111){
        intercept = -0.13478567064918187;
        slope = 0.5051483051410569 - -0.13478567064918187;
        return intercept + slope * (x - -0.13478567064918187);
    }
    else if(time <= 112){
        intercept = 0.5051483051410569;
        slope = -0.4827234460223516 - 0.5051483051410569;
        return intercept + slope * (x - 0.5051483051410569);
    }
    else if(time <= 113){
        intercept = -0.4827234460223516;
        slope = 2.202193202287531 - -0.4827234460223516;
        return intercept + slope * (x - -0.4827234460223516);
    }
    else if(time <= 114){
        intercept = 2.202193202287531;
        slope = -0.10466895993540966 - 2.202193202287531;
        return intercept + slope * (x - 2.202193202287531);
    }
    else if(time <= 115){
        intercept = -0.10466895993540966;
        slope = 0.6203593965829768 - -0.10466895993540966;
        return intercept + slope * (x - -0.10466895993540966);
    }
    else if(time <= 116){
        intercept = 0.6203593965829768;
        slope = -0.35142651669512 - 0.6203593965829768;
        return intercept + slope * (x - 0.6203593965829768);
    }
    else if(time <= 117){
        intercept = -0.35142651669512;
        slope = 1.0531400346036863 - -0.35142651669512;
        return intercept + slope * (x - -0.35142651669512);
    }
    else if(time <= 118){
        intercept = 1.0531400346036863;
        slope = 0.07778340613042682 - 1.0531400346036863;
        return intercept + slope * (x - 1.0531400346036863);
    }
    else if(time <= 119){
        intercept = 0.07778340613042682;
        slope = -1.0223045712024763 - 0.07778340613042682;
        return intercept + slope * (x - 0.07778340613042682);
    }
    else if(time <= 120){
        intercept = -1.0223045712024763;
        slope = -0.553887333858269 - -1.0223045712024763;
        return intercept + slope * (x - -1.0223045712024763);
    }
    else if(time <= 121){
        intercept = -0.553887333858269;
        slope = -0.25484014090503215 - -0.553887333858269;
        return intercept + slope * (x - -0.553887333858269);
    }
    else if(time <= 122){
        intercept = -0.25484014090503215;
        slope = 0.4991227948393476 - -0.25484014090503215;
        return intercept + slope * (x - -0.25484014090503215);
    }
    else if(time <= 123){
        intercept = 0.4991227948393476;
        slope = -0.012336492047092222 - 0.4991227948393476;
        return intercept + slope * (x - 0.4991227948393476);
    }
    else if(time <= 124){
        intercept = -0.012336492047092222;
        slope = -0.3265589565769607 - -0.012336492047092222;
        return intercept + slope * (x - -0.012336492047092222);
    }
    else if(time <= 125){
        intercept = -0.3265589565769607;
        slope = -0.9943801788775558 - -0.3265589565769607;
        return intercept + slope * (x - -0.3265589565769607);
    }
    else if(time <= 126){
        intercept = -0.9943801788775558;
        slope = 1.3468590689459377 - -0.9943801788775558;
        return intercept + slope * (x - -0.9943801788775558);
    }
    else if(time <= 127){
        intercept = 1.3468590689459377;
        slope = 0.6377661045148226 - 1.3468590689459377;
        return intercept + slope * (x - 1.3468590689459377);
    }
    else if(time <= 128){
        intercept = 0.6377661045148226;
        slope = -0.8934587780991495 - 0.6377661045148226;
        return intercept + slope * (x - 0.6377661045148226);
    }
    else if(time <= 129){
        intercept = -0.8934587780991495;
        slope = 0.1160486100235793 - -0.8934587780991495;
        return intercept + slope * (x - -0.8934587780991495);
    }
    else if(time <= 130){
        intercept = 0.1160486100235793;
        slope = -1.4153831531411045 - 0.1160486100235793;
        return intercept + slope * (x - 0.1160486100235793);
    }
    else if(time <= 131){
        intercept = -1.4153831531411045;
        slope = 0.6956534660803979 - -1.4153831531411045;
        return intercept + slope * (x - -1.4153831531411045);
    }
    else if(time <= 132){
        intercept = 0.6956534660803979;
        slope = -2.2556529450268967 - 0.6956534660803979;
        return intercept + slope * (x - 0.6956534660803979);
    }
    else if(time <= 133){
        intercept = -2.2556529450268967;
        slope = -1.7328800150794932 - -2.2556529450268967;
        return intercept + slope * (x - -2.2556529450268967);
    }
    else if(time <= 134){
        intercept = -1.7328800150794932;
        slope = 0.850648023042497 - -1.7328800150794932;
        return intercept + slope * (x - -1.7328800150794932);
    }
    else if(time <= 135){
        intercept = 0.850648023042497;
        slope = -0.3603960210495093 - 0.850648023042497;
        return intercept + slope * (x - 0.850648023042497);
    }
    else if(time <= 136){
        intercept = -0.3603960210495093;
        slope = -0.2427895161021423 - -0.3603960210495093;
        return intercept + slope * (x - -0.3603960210495093);
    }
    else if(time <= 137){
        intercept = -0.2427895161021423;
        slope = -0.290979950820569 - -0.2427895161021423;
        return intercept + slope * (x - -0.2427895161021423);
    }
    else if(time <= 138){
        intercept = -0.290979950820569;
        slope = -1.0784205218321075 - -0.290979950820569;
        return intercept + slope * (x - -0.290979950820569);
    }
    else if(time <= 139){
        intercept = -1.0784205218321075;
        slope = 1.1722987055857923 - -1.0784205218321075;
        return intercept + slope * (x - -1.0784205218321075);
    }
    else if(time <= 140){
        intercept = 1.1722987055857923;
        slope = 0.07136712600816345 - 1.1722987055857923;
        return intercept + slope * (x - 1.1722987055857923);
    }
    else if(time <= 141){
        intercept = 0.07136712600816345;
        slope = 0.13494964668281173 - 0.07136712600816345;
        return intercept + slope * (x - 0.07136712600816345);
    }
    else if(time <= 142){
        intercept = 0.13494964668281173;
        slope = -0.5152396774917137 - 0.13494964668281173;
        return intercept + slope * (x - 0.13494964668281173);
    }
    else if(time <= 143){
        intercept = -0.5152396774917137;
        slope = -1.4593832863154734 - -0.5152396774917137;
        return intercept + slope * (x - -0.5152396774917137);
    }
    else if(time <= 144){
        intercept = -1.4593832863154734;
        slope = -2.6444813434831667 - -1.4593832863154734;
        return intercept + slope * (x - -1.4593832863154734);
    }
    else if(time <= 145){
        intercept = -2.6444813434831667;
        slope = -0.0733617059866987 - -2.6444813434831667;
        return intercept + slope * (x - -2.6444813434831667);
    }
    else if(time <= 146){
        intercept = -0.0733617059866987;
        slope = 1.050571280990809 - -0.0733617059866987;
        return intercept + slope * (x - -0.0733617059866987);
    }
    else if(time <= 147){
        intercept = 1.050571280990809;
        slope = -1.5331862768478006 - 1.050571280990809;
        return intercept + slope * (x - 1.050571280990809);
    }
    else if(time <= 148){
        intercept = -1.5331862768478006;
        slope = 0.8170072741021237 - -1.5331862768478006;
        return intercept + slope * (x - -1.5331862768478006);
    }
    else if(time <= 149){
        intercept = 0.8170072741021237;
        slope = 0.2797527743532199 - 0.8170072741021237;
        return intercept + slope * (x - 0.8170072741021237);
    }
    else if(time <= 150){
        intercept = 0.2797527743532199;
        slope = -2.5930027378055187 - 0.2797527743532199;
        return intercept + slope * (x - 0.2797527743532199);
    }
    else if(time <= 151){
        intercept = -2.5930027378055187;
        slope = 2.550112376799824 - -2.5930027378055187;
        return intercept + slope * (x - -2.5930027378055187);
    }
    else if(time <= 152){
        intercept = 2.550112376799824;
        slope = 0.8426069328898074 - 2.550112376799824;
        return intercept + slope * (x - 2.550112376799824);
    }
    else if(time <= 153){
        intercept = 0.8426069328898074;
        slope = 1.9807991083700947 - 0.8426069328898074;
        return intercept + slope * (x - 0.8426069328898074);
    }
    else if(time <= 154){
        intercept = 1.9807991083700947;
        slope = 0.017844243972113434 - 1.9807991083700947;
        return intercept + slope * (x - 1.9807991083700947);
    }
    else if(time <= 155){
        intercept = 0.017844243972113434;
        slope = 1.8264624667652993 - 0.017844243972113434;
        return intercept + slope * (x - 0.017844243972113434);
    }
    else if(time <= 156){
        intercept = 1.8264624667652993;
        slope = -0.2774315881693323 - 1.8264624667652993;
        return intercept + slope * (x - 1.8264624667652993);
    }
    else if(time <= 157){
        intercept = -0.2774315881693323;
        slope = 0.38637617975051775 - -0.2774315881693323;
        return intercept + slope * (x - -0.2774315881693323);
    }
    else if(time <= 158){
        intercept = 0.38637617975051775;
        slope = 0.4934893879892992 - 0.38637617975051775;
        return intercept + slope * (x - 0.38637617975051775);
    }
    else if(time <= 159){
        intercept = 0.4934893879892992;
        slope = 0.16929246191460065 - 0.4934893879892992;
        return intercept + slope * (x - 0.4934893879892992);
    }
    else if(time <= 160){
        intercept = 0.16929246191460065;
        slope = 1.3727912239941156 - 0.16929246191460065;
        return intercept + slope * (x - 0.16929246191460065);
    }
    else if(time <= 161){
        intercept = 1.3727912239941156;
        slope = -0.7866485421627932 - 1.3727912239941156;
        return intercept + slope * (x - 1.3727912239941156);
    }
    else if(time <= 162){
        intercept = -0.7866485421627932;
        slope = 2.091799554729311 - -0.7866485421627932;
        return intercept + slope * (x - -0.7866485421627932);
    }
    else if(time <= 163){
        intercept = 2.091799554729311;
        slope = -0.768141522548805 - 2.091799554729311;
        return intercept + slope * (x - 2.091799554729311);
    }
    else if(time <= 164){
        intercept = -0.768141522548805;
        slope = 0.8817785478374133 - -0.768141522548805;
        return intercept + slope * (x - -0.768141522548805);
    }
    else if(time <= 165){
        intercept = 0.8817785478374133;
        slope = -0.505990180543785 - 0.8817785478374133;
        return intercept + slope * (x - 0.8817785478374133);
    }
    else if(time <= 166){
        intercept = -0.505990180543785;
        slope = 0.28612162579518435 - -0.505990180543785;
        return intercept + slope * (x - -0.505990180543785);
    }
    else if(time <= 167){
        intercept = 0.28612162579518435;
        slope = 0.6836775349001032 - 0.28612162579518435;
        return intercept + slope * (x - 0.28612162579518435);
    }
    else if(time <= 168){
        intercept = 0.6836775349001032;
        slope = 1.6347969315554824 - 0.6836775349001032;
        return intercept + slope * (x - 0.6836775349001032);
    }
    else if(time <= 169){
        intercept = 1.6347969315554824;
        slope = -0.5638402501863647 - 1.6347969315554824;
        return intercept + slope * (x - 1.6347969315554824);
    }
    else if(time <= 170){
        intercept = -0.5638402501863647;
        slope = 0.3108761526340721 - -0.5638402501863647;
        return intercept + slope * (x - -0.5638402501863647);
    }
    else if(time <= 171){
        intercept = 0.3108761526340721;
        slope = 0.3356823677221697 - 0.3108761526340721;
        return intercept + slope * (x - 0.3108761526340721);
    }
    else if(time <= 172){
        intercept = 0.3356823677221697;
        slope = 0.4537462357868295 - 0.3356823677221697;
        return intercept + slope * (x - 0.3356823677221697);
    }
    else if(time <= 173){
        intercept = 0.4537462357868295;
        slope = 0.184562513656912 - 0.4537462357868295;
        return intercept + slope * (x - 0.4537462357868295);
    }
    else if(time <= 174){
        intercept = 0.184562513656912;
        slope = -1.0816456554283933 - 0.184562513656912;
        return intercept + slope * (x - 0.184562513656912);
    }
    else if(time <= 175){
        intercept = -1.0816456554283933;
        slope = -0.38915418894935394 - -1.0816456554283933;
        return intercept + slope * (x - -1.0816456554283933);
    }
    else if(time <= 176){
        intercept = -0.38915418894935394;
        slope = -1.4361713057539918 - -0.38915418894935394;
        return intercept + slope * (x - -0.38915418894935394);
    }
    else if(time <= 177){
        intercept = -1.4361713057539918;
        slope = -0.6134448218618678 - -1.4361713057539918;
        return intercept + slope * (x - -1.4361713057539918);
    }
    else if(time <= 178){
        intercept = -0.6134448218618678;
        slope = 1.496750362783324 - -0.6134448218618678;
        return intercept + slope * (x - -0.6134448218618678);
    }
    else if(time <= 179){
        intercept = 1.496750362783324;
        slope = 0.12028552814471885 - 1.496750362783324;
        return intercept + slope * (x - 1.496750362783324);
    }
    else if(time <= 180){
        intercept = 0.12028552814471885;
        slope = -0.14279634910152197 - 0.12028552814471885;
        return intercept + slope * (x - 0.12028552814471885);
    }
    else if(time <= 181){
        intercept = -0.14279634910152197;
        slope = 0.4940035895279523 - -0.14279634910152197;
        return intercept + slope * (x - -0.14279634910152197);
    }
    else if(time <= 182){
        intercept = 0.4940035895279523;
        slope = 0.4757934287971099 - 0.4940035895279523;
        return intercept + slope * (x - 0.4940035895279523);
    }
    else if(time <= 183){
        intercept = 0.4757934287971099;
        slope = -0.5183633990660962 - 0.4757934287971099;
        return intercept + slope * (x - 0.4757934287971099);
    }
    else if(time <= 184){
        intercept = -0.5183633990660962;
        slope = -1.1156052945266006 - -0.5183633990660962;
        return intercept + slope * (x - -0.5183633990660962);
    }
    else if(time <= 185){
        intercept = -1.1156052945266006;
        slope = 0.3658021859914908 - -1.1156052945266006;
        return intercept + slope * (x - -1.1156052945266006);
    }
    else if(time <= 186){
        intercept = 0.3658021859914908;
        slope = 1.4799582792999844 - 0.3658021859914908;
        return intercept + slope * (x - 0.3658021859914908);
    }
    else if(time <= 187){
        intercept = 1.4799582792999844;
        slope = -1.8272263369010266 - 1.4799582792999844;
        return intercept + slope * (x - 1.4799582792999844);
    }
    else if(time <= 188){
        intercept = -1.8272263369010266;
        slope = -0.02859686346185846 - -1.8272263369010266;
        return intercept + slope * (x - -1.8272263369010266);
    }
    else if(time <= 189){
        intercept = -0.02859686346185846;
        slope = 0.25974499020971115 - -0.02859686346185846;
        return intercept + slope * (x - -0.02859686346185846);
    }
    else if(time <= 190){
        intercept = 0.25974499020971115;
        slope = -0.4785481697107757 - 0.25974499020971115;
        return intercept + slope * (x - 0.25974499020971115);
    }
    else if(time <= 191){
        intercept = -0.4785481697107757;
        slope = 0.5055873629876892 - -0.4785481697107757;
        return intercept + slope * (x - -0.4785481697107757);
    }
    else if(time <= 192){
        intercept = 0.5055873629876892;
        slope = 0.13938101047685997 - 0.5055873629876892;
        return intercept + slope * (x - 0.5055873629876892);
    }
    else if(time <= 193){
        intercept = 0.13938101047685997;
        slope = 1.5281412160314651 - 0.13938101047685997;
        return intercept + slope * (x - 0.13938101047685997);
    }
    else if(time <= 194){
        intercept = 1.5281412160314651;
        slope = -1.3589499784558101 - 1.5281412160314651;
        return intercept + slope * (x - 1.5281412160314651);
    }
    else if(time <= 195){
        intercept = -1.3589499784558101;
        slope = 0.22200660261124988 - -1.3589499784558101;
        return intercept + slope * (x - -1.3589499784558101);
    }
    else if(time <= 196){
        intercept = 0.22200660261124988;
        slope = -0.5980081039593267 - 0.22200660261124988;
        return intercept + slope * (x - 0.22200660261124988);
    }
    else if(time <= 197){
        intercept = -0.5980081039593267;
        slope = -0.29042035251001064 - -0.5980081039593267;
        return intercept + slope * (x - -0.5980081039593267);
    }
    else if(time <= 198){
        intercept = -0.29042035251001064;
        slope = 0.36936358095655397 - -0.29042035251001064;
        return intercept + slope * (x - -0.29042035251001064);
    }
    else if(time <= 199){
        intercept = 0.36936358095655397;
        slope = 0.8829794409022522 - 0.36936358095655397;
        return intercept + slope * (x - 0.36936358095655397);
    }
    else if(time <= 200){
        intercept = 0.8829794409022522;
        slope = 1.946133364264882 - 0.8829794409022522;
        return intercept + slope * (x - 0.8829794409022522);
    }
    else if(time <= 201){
        intercept = 1.946133364264882;
        slope = -1.27117685074628 - 1.946133364264882;
        return intercept + slope * (x - 1.946133364264882);
    }
    else if(time <= 202){
        intercept = -1.27117685074628;
        slope = -0.11894196996766697 - -1.27117685074628;
        return intercept + slope * (x - -1.27117685074628);
    }
    else if(time <= 203){
        intercept = -0.11894196996766697;
        slope = 0.7363266867614381 - -0.11894196996766697;
        return intercept + slope * (x - -0.11894196996766697);
    }
    else if(time <= 204){
        intercept = 0.7363266867614381;
        slope = -1.5620275759005653 - 0.7363266867614381;
        return intercept + slope * (x - 0.7363266867614381);
    }
    else if(time <= 205){
        intercept = -1.5620275759005653;
        slope = 0.0905285762335922 - -1.5620275759005653;
        return intercept + slope * (x - -1.5620275759005653);
    }
    else if(time <= 206){
        intercept = 0.0905285762335922;
        slope = -0.4529116061461111 - 0.0905285762335922;
        return intercept + slope * (x - 0.0905285762335922);
    }
    else if(time <= 207){
        intercept = -0.4529116061461111;
        slope = 0.18963050524887046 - -0.4529116061461111;
        return intercept + slope * (x - -0.4529116061461111);
    }
    else if(time <= 208){
        intercept = 0.18963050524887046;
        slope = 1.8202466423967476 - 0.18963050524887046;
        return intercept + slope * (x - 0.18963050524887046);
    }
    else if(time <= 209){
        intercept = 1.8202466423967476;
        slope = -0.569568271622203 - 1.8202466423967476;
        return intercept + slope * (x - 1.8202466423967476);
    }
    else if(time <= 210){
        intercept = -0.569568271622203;
        slope = -0.061916717079850074 - -0.569568271622203;
        return intercept + slope * (x - -0.569568271622203);
    }
    else if(time <= 211){
        intercept = -0.061916717079850074;
        slope = 0.12013321687427625 - -0.061916717079850074;
        return intercept + slope * (x - -0.061916717079850074);
    }
    else if(time <= 212){
        intercept = 0.12013321687427625;
        slope = -0.7209592583434191 - 0.12013321687427625;
        return intercept + slope * (x - 0.12013321687427625);
    }
    else if(time <= 213){
        intercept = -0.7209592583434191;
        slope = 0.6042247740183985 - -0.7209592583434191;
        return intercept + slope * (x - -0.7209592583434191);
    }
    else if(time <= 214){
        intercept = 0.6042247740183985;
        slope = -1.4483314854376372 - 0.6042247740183985;
        return intercept + slope * (x - 0.6042247740183985);
    }
    else if(time <= 215){
        intercept = -1.4483314854376372;
        slope = -0.15497363366544747 - -1.4483314854376372;
        return intercept + slope * (x - -1.4483314854376372);
    }
    else if(time <= 216){
        intercept = -0.15497363366544747;
        slope = 0.38798360006996296 - -0.15497363366544747;
        return intercept + slope * (x - -0.15497363366544747);
    }
    else if(time <= 217){
        intercept = 0.38798360006996296;
        slope = 0.18818330729051513 - 0.38798360006996296;
        return intercept + slope * (x - 0.38798360006996296);
    }
    else if(time <= 218){
        intercept = 0.18818330729051513;
        slope = 1.1956741897643508 - 0.18818330729051513;
        return intercept + slope * (x - 0.18818330729051513);
    }
    else if(time <= 219){
        intercept = 1.1956741897643508;
        slope = -0.6026458066767394 - 1.1956741897643508;
        return intercept + slope * (x - 1.1956741897643508);
    }
    else if(time <= 220){
        intercept = -0.6026458066767394;
        slope = -0.24604700010379102 - -0.6026458066767394;
        return intercept + slope * (x - -0.6026458066767394);
    }
    else if(time <= 221){
        intercept = -0.24604700010379102;
        slope = -0.5291971892570546 - -0.24604700010379102;
        return intercept + slope * (x - -0.24604700010379102);
    }
    else if(time <= 222){
        intercept = -0.5291971892570546;
        slope = 0.024805232979201508 - -0.5291971892570546;
        return intercept + slope * (x - -0.5291971892570546);
    }
    else if(time <= 223){
        intercept = 0.024805232979201508;
        slope = 0.1885525891684348 - 0.024805232979201508;
        return intercept + slope * (x - 0.024805232979201508);
    }
    else if(time <= 224){
        intercept = 0.1885525891684348;
        slope = -0.995822909756555 - 0.1885525891684348;
        return intercept + slope * (x - 0.1885525891684348);
    }
    else if(time <= 225){
        intercept = -0.995822909756555;
        slope = -1.2121097846716915 - -0.995822909756555;
        return intercept + slope * (x - -0.995822909756555);
    }
    else if(time <= 226){
        intercept = -1.2121097846716915;
        slope = -0.14010496365993394 - -1.2121097846716915;
        return intercept + slope * (x - -1.2121097846716915);
    }
    else if(time <= 227){
        intercept = -0.14010496365993394;
        slope = 0.07346844980824942 - -0.14010496365993394;
        return intercept + slope * (x - -0.14010496365993394);
    }
    else if(time <= 228){
        intercept = 0.07346844980824942;
        slope = -1.2187933812587368 - 0.07346844980824942;
        return intercept + slope * (x - 0.07346844980824942);
    }
    else if(time <= 229){
        intercept = -1.2187933812587368;
        slope = 0.9960893072796808 - -1.2187933812587368;
        return intercept + slope * (x - -1.2187933812587368);
    }
    else if(time <= 230){
        intercept = 0.9960893072796808;
        slope = 1.33324048032241 - 0.9960893072796808;
        return intercept + slope * (x - 0.9960893072796808);
    }
    else if(time <= 231){
        intercept = 1.33324048032241;
        slope = 1.150254425445706 - 1.33324048032241;
        return intercept + slope * (x - 1.33324048032241);
    }
    else if(time <= 232){
        intercept = 1.150254425445706;
        slope = 0.8395164775130928 - 1.150254425445706;
        return intercept + slope * (x - 1.150254425445706);
    }
    else if(time <= 233){
        intercept = 0.8395164775130928;
        slope = 0.9413839080476082 - 0.8395164775130928;
        return intercept + slope * (x - 0.8395164775130928);
    }
    else if(time <= 234){
        intercept = 0.9413839080476082;
        slope = 1.3172789817054218 - 0.9413839080476082;
        return intercept + slope * (x - 0.9413839080476082);
    }
    else if(time <= 235){
        intercept = 1.3172789817054218;
        slope = 0.5003076630666209 - 1.3172789817054218;
        return intercept + slope * (x - 1.3172789817054218);
    }
    else if(time <= 236){
        intercept = 0.5003076630666209;
        slope = 0.1770545731549952 - 0.5003076630666209;
        return intercept + slope * (x - 0.5003076630666209);
    }
    else if(time <= 237){
        intercept = 0.1770545731549952;
        slope = 1.378751875718563 - 0.1770545731549952;
        return intercept + slope * (x - 0.1770545731549952);
    }
    else if(time <= 238){
        intercept = 1.378751875718563;
        slope = 0.894101687964795 - 1.378751875718563;
        return intercept + slope * (x - 1.378751875718563);
    }
    else if(time <= 239){
        intercept = 0.894101687964795;
        slope = 2.1789796442252722 - 0.894101687964795;
        return intercept + slope * (x - 0.894101687964795);
    }
    else if(time <= 240){
        intercept = 2.1789796442252722;
        slope = -0.4111190447091157 - 2.1789796442252722;
        return intercept + slope * (x - 2.1789796442252722);
    }
    else if(time <= 241){
        intercept = -0.4111190447091157;
        slope = 0.12933361088314282 - -0.4111190447091157;
        return intercept + slope * (x - -0.4111190447091157);
    }
    else if(time <= 242){
        intercept = 0.12933361088314282;
        slope = -1.358402751056162 - 0.12933361088314282;
        return intercept + slope * (x - 0.12933361088314282);
    }
    else if(time <= 243){
        intercept = -1.358402751056162;
        slope = 1.8436848491710374 - -1.358402751056162;
        return intercept + slope * (x - -1.358402751056162);
    }
    else if(time <= 244){
        intercept = 1.8436848491710374;
        slope = -1.4893814750443666 - 1.8436848491710374;
        return intercept + slope * (x - 1.8436848491710374);
    }
    else if(time <= 245){
        intercept = -1.4893814750443666;
        slope = 0.933558657622498 - -1.4893814750443666;
        return intercept + slope * (x - -1.4893814750443666);
    }
    else if(time <= 246){
        intercept = 0.933558657622498;
        slope = -0.5673706842050076 - 0.933558657622498;
        return intercept + slope * (x - 0.933558657622498);
    }
    else if(time <= 247){
        intercept = -0.5673706842050076;
        slope = 0.40849780448934264 - -0.5673706842050076;
        return intercept + slope * (x - -0.5673706842050076);
    }
    else if(time <= 248){
        intercept = 0.40849780448934264;
        slope = -1.1178247236073076 - 0.40849780448934264;
        return intercept + slope * (x - 0.40849780448934264);
    }
    else if(time <= 249){
        intercept = -1.1178247236073076;
        slope = 0.6431235233423923 - -1.1178247236073076;
        return intercept + slope * (x - -1.1178247236073076);
    }
    else if(time <= 250){
        intercept = 0.6431235233423923;
        slope = 0.7242450811061272 - 0.6431235233423923;
        return intercept + slope * (x - 0.6431235233423923);
    }
    else if(time <= 251){
        intercept = 0.7242450811061272;
        slope = 0.06750107057264057 - 0.7242450811061272;
        return intercept + slope * (x - 0.7242450811061272);
    }
    else if(time <= 252){
        intercept = 0.06750107057264057;
        slope = -0.7614511098534 - 0.06750107057264057;
        return intercept + slope * (x - 0.06750107057264057);
    }
    else if(time <= 253){
        intercept = -0.7614511098534;
        slope = 0.0002662681960917979 - -0.7614511098534;
        return intercept + slope * (x - -0.7614511098534);
    }
    else if(time <= 254){
        intercept = 0.0002662681960917979;
        slope = -0.588015700710724 - 0.0002662681960917979;
        return intercept + slope * (x - 0.0002662681960917979);
    }
    else if(time <= 255){
        intercept = -0.588015700710724;
        slope = 0.36493826543260477 - -0.588015700710724;
        return intercept + slope * (x - -0.588015700710724);
    }
    else if(time <= 256){
        intercept = 0.36493826543260477;
        slope = 0.023179826562124466 - 0.36493826543260477;
        return intercept + slope * (x - 0.36493826543260477);
    }
    else if(time <= 257){
        intercept = 0.023179826562124466;
        slope = 0.5945448999055845 - 0.023179826562124466;
        return intercept + slope * (x - 0.023179826562124466);
    }
    else if(time <= 258){
        intercept = 0.5945448999055845;
        slope = 0.5399071284837685 - 0.5945448999055845;
        return intercept + slope * (x - 0.5945448999055845);
    }
    else if(time <= 259){
        intercept = 0.5399071284837685;
        slope = 0.8546025306756485 - 0.5399071284837685;
        return intercept + slope * (x - 0.5399071284837685);
    }
    else if(time <= 260){
        intercept = 0.8546025306756485;
        slope = 1.3801723886904016 - 0.8546025306756485;
        return intercept + slope * (x - 0.8546025306756485);
    }
    else if(time <= 261){
        intercept = 1.3801723886904016;
        slope = 0.5795110541362094 - 1.3801723886904016;
        return intercept + slope * (x - 1.3801723886904016);
    }
    else if(time <= 262){
        intercept = 0.5795110541362094;
        slope = 0.12980092737396037 - 0.5795110541362094;
        return intercept + slope * (x - 0.5795110541362094);
    }
    else if(time <= 263){
        intercept = 0.12980092737396037;
        slope = -0.14736494834508942 - 0.12980092737396037;
        return intercept + slope * (x - 0.12980092737396037);
    }
    else if(time <= 264){
        intercept = -0.14736494834508942;
        slope = 0.35379867237611623 - -0.14736494834508942;
        return intercept + slope * (x - -0.14736494834508942);
    }
    else if(time <= 265){
        intercept = 0.35379867237611623;
        slope = 0.6201041004174613 - 0.35379867237611623;
        return intercept + slope * (x - 0.35379867237611623);
    }
    else if(time <= 266){
        intercept = 0.6201041004174613;
        slope = 0.653722928013559 - 0.6201041004174613;
        return intercept + slope * (x - 0.6201041004174613);
    }
    else if(time <= 267){
        intercept = 0.653722928013559;
        slope = -0.7736567527467028 - 0.653722928013559;
        return intercept + slope * (x - 0.653722928013559);
    }
    else if(time <= 268){
        intercept = -0.7736567527467028;
        slope = -0.9734040249093036 - -0.7736567527467028;
        return intercept + slope * (x - -0.7736567527467028);
    }
    else if(time <= 269){
        intercept = -0.9734040249093036;
        slope = 1.0494593165811108 - -0.9734040249093036;
        return intercept + slope * (x - -0.9734040249093036);
    }
    else if(time <= 270){
        intercept = 1.0494593165811108;
        slope = 2.310595746022168 - 1.0494593165811108;
        return intercept + slope * (x - 1.0494593165811108);
    }
    else if(time <= 271){
        intercept = 2.310595746022168;
        slope = 1.201313305053779 - 2.310595746022168;
        return intercept + slope * (x - 2.310595746022168);
    }
    else if(time <= 272){
        intercept = 1.201313305053779;
        slope = 0.08913513290054875 - 1.201313305053779;
        return intercept + slope * (x - 1.201313305053779);
    }
    else if(time <= 273){
        intercept = 0.08913513290054875;
        slope = 1.2432294793118053 - 0.08913513290054875;
        return intercept + slope * (x - 0.08913513290054875);
    }
    else if(time <= 274){
        intercept = 1.2432294793118053;
        slope = -0.6393926161073985 - 1.2432294793118053;
        return intercept + slope * (x - 1.2432294793118053);
    }
    else if(time <= 275){
        intercept = -0.6393926161073985;
        slope = -0.246592121717382 - -0.6393926161073985;
        return intercept + slope * (x - -0.6393926161073985);
    }
    else if(time <= 276){
        intercept = -0.246592121717382;
        slope = 0.26404942744427085 - -0.246592121717382;
        return intercept + slope * (x - -0.246592121717382);
    }
    else if(time <= 277){
        intercept = 0.26404942744427085;
        slope = -1.048435035363752 - 0.26404942744427085;
        return intercept + slope * (x - 0.26404942744427085);
    }
    else if(time <= 278){
        intercept = -1.048435035363752;
        slope = -1.2988115342531101 - -1.048435035363752;
        return intercept + slope * (x - -1.048435035363752);
    }
    else if(time <= 279){
        intercept = -1.2988115342531101;
        slope = -0.0848800923318809 - -1.2988115342531101;
        return intercept + slope * (x - -1.2988115342531101);
    }
    else if(time <= 280){
        intercept = -0.0848800923318809;
        slope = -0.1904621812524856 - -0.0848800923318809;
        return intercept + slope * (x - -0.0848800923318809);
    }
    else if(time <= 281){
        intercept = -0.1904621812524856;
        slope = 0.6945828187410849 - -0.1904621812524856;
        return intercept + slope * (x - -0.1904621812524856);
    }
    else if(time <= 282){
        intercept = 0.6945828187410849;
        slope = 1.2268608684758384 - 0.6945828187410849;
        return intercept + slope * (x - 0.6945828187410849);
    }
    else if(time <= 283){
        intercept = 1.2268608684758384;
        slope = -0.8883932119073443 - 1.2268608684758384;
        return intercept + slope * (x - 1.2268608684758384);
    }
    else if(time <= 284){
        intercept = -0.8883932119073443;
        slope = -0.09848346638635373 - -0.8883932119073443;
        return intercept + slope * (x - -0.8883932119073443);
    }
    else if(time <= 285){
        intercept = -0.09848346638635373;
        slope = 1.6089108025897563 - -0.09848346638635373;
        return intercept + slope * (x - -0.09848346638635373);
    }
    else if(time <= 286){
        intercept = 1.6089108025897563;
        slope = 0.4236543114649428 - 1.6089108025897563;
        return intercept + slope * (x - 1.6089108025897563);
    }
    else if(time <= 287){
        intercept = 0.4236543114649428;
        slope = 0.321369809998463 - 0.4236543114649428;
        return intercept + slope * (x - 0.4236543114649428);
    }
    else if(time <= 288){
        intercept = 0.321369809998463;
        slope = 1.0759575904448533 - 0.321369809998463;
        return intercept + slope * (x - 0.321369809998463);
    }
    else if(time <= 289){
        intercept = 1.0759575904448533;
        slope = 0.9553648440064381 - 1.0759575904448533;
        return intercept + slope * (x - 1.0759575904448533);
    }
    else if(time <= 290){
        intercept = 0.9553648440064381;
        slope = -0.1668415588091496 - 0.9553648440064381;
        return intercept + slope * (x - 0.9553648440064381);
    }
    else if(time <= 291){
        intercept = -0.1668415588091496;
        slope = 2.9595630845175207 - -0.1668415588091496;
        return intercept + slope * (x - -0.1668415588091496);
    }
    return 2.9595630845175207;
}

real dataFunc__ran_norm2(real time){
    // DataStructure for variable ran_norm2
    real slope;
    real intercept;

    if(time <= 1){
        intercept = -0.8826293509793367;
        slope = -0.8230079710732255 - -0.8826293509793367;
        return intercept + slope * (x - -0.8826293509793367);
    }
    else if(time <= 2){
        intercept = -0.8230079710732255;
        slope = -0.7751136043955921 - -0.8230079710732255;
        return intercept + slope * (x - -0.8230079710732255);
    }
    else if(time <= 3){
        intercept = -0.7751136043955921;
        slope = 0.7041713358199713 - -0.7751136043955921;
        return intercept + slope * (x - -0.7751136043955921);
    }
    else if(time <= 4){
        intercept = 0.7041713358199713;
        slope = -0.03692685826824199 - 0.7041713358199713;
        return intercept + slope * (x - 0.7041713358199713);
    }
    else if(time <= 5){
        intercept = -0.03692685826824199;
        slope = -0.5465671362092194 - -0.03692685826824199;
        return intercept + slope * (x - -0.03692685826824199);
    }
    else if(time <= 6){
        intercept = -0.5465671362092194;
        slope = -0.24642970021246344 - -0.5465671362092194;
        return intercept + slope * (x - -0.5465671362092194);
    }
    else if(time <= 7){
        intercept = -0.24642970021246344;
        slope = 1.1548998627269462 - -0.24642970021246344;
        return intercept + slope * (x - -0.24642970021246344);
    }
    else if(time <= 8){
        intercept = 1.1548998627269462;
        slope = 3.2351160986332435 - 1.1548998627269462;
        return intercept + slope * (x - 1.1548998627269462);
    }
    else if(time <= 9){
        intercept = 3.2351160986332435;
        slope = -0.10511845709859473 - 3.2351160986332435;
        return intercept + slope * (x - 3.2351160986332435);
    }
    else if(time <= 10){
        intercept = -0.10511845709859473;
        slope = 0.8516769827769584 - -0.10511845709859473;
        return intercept + slope * (x - -0.10511845709859473);
    }
    else if(time <= 11){
        intercept = 0.8516769827769584;
        slope = -0.6697138231885088 - 0.8516769827769584;
        return intercept + slope * (x - 0.8516769827769584);
    }
    else if(time <= 12){
        intercept = -0.6697138231885088;
        slope = -0.31066623262335674 - -0.6697138231885088;
        return intercept + slope * (x - -0.6697138231885088);
    }
    else if(time <= 13){
        intercept = -0.31066623262335674;
        slope = 0.33691334403728385 - -0.31066623262335674;
        return intercept + slope * (x - -0.31066623262335674);
    }
    else if(time <= 14){
        intercept = 0.33691334403728385;
        slope = 0.243994904250068 - 0.33691334403728385;
        return intercept + slope * (x - 0.33691334403728385);
    }
    else if(time <= 15){
        intercept = 0.243994904250068;
        slope = 0.35190928064779586 - 0.243994904250068;
        return intercept + slope * (x - 0.243994904250068);
    }
    else if(time <= 16){
        intercept = 0.35190928064779586;
        slope = -0.8032322417735567 - 0.35190928064779586;
        return intercept + slope * (x - 0.35190928064779586);
    }
    else if(time <= 17){
        intercept = -0.8032322417735567;
        slope = -1.67892855658756 - -0.8032322417735567;
        return intercept + slope * (x - -0.8032322417735567);
    }
    else if(time <= 18){
        intercept = -1.67892855658756;
        slope = 0.5264681754039702 - -1.67892855658756;
        return intercept + slope * (x - -1.67892855658756);
    }
    else if(time <= 19){
        intercept = 0.5264681754039702;
        slope = -0.06307156460199677 - 0.5264681754039702;
        return intercept + slope * (x - 0.5264681754039702);
    }
    else if(time <= 20){
        intercept = -0.06307156460199677;
        slope = -0.7002733935843202 - -0.06307156460199677;
        return intercept + slope * (x - -0.06307156460199677);
    }
    else if(time <= 21){
        intercept = -0.7002733935843202;
        slope = 1.0118985187641802 - -0.7002733935843202;
        return intercept + slope * (x - -0.7002733935843202);
    }
    else if(time <= 22){
        intercept = 1.0118985187641802;
        slope = -0.07755481549621765 - 1.0118985187641802;
        return intercept + slope * (x - 1.0118985187641802);
    }
    else if(time <= 23){
        intercept = -0.07755481549621765;
        slope = 0.24240775776846638 - -0.07755481549621765;
        return intercept + slope * (x - -0.07755481549621765);
    }
    else if(time <= 24){
        intercept = 0.24240775776846638;
        slope = 1.3795291459519456 - 0.24240775776846638;
        return intercept + slope * (x - 0.24240775776846638);
    }
    else if(time <= 25){
        intercept = 1.3795291459519456;
        slope = -0.17808548741015867 - 1.3795291459519456;
        return intercept + slope * (x - 1.3795291459519456);
    }
    else if(time <= 26){
        intercept = -0.17808548741015867;
        slope = 1.3249036628684019 - -0.17808548741015867;
        return intercept + slope * (x - -0.17808548741015867);
    }
    else if(time <= 27){
        intercept = 1.3249036628684019;
        slope = 0.7834253509896051 - 1.3249036628684019;
        return intercept + slope * (x - 1.3249036628684019);
    }
    else if(time <= 28){
        intercept = 0.7834253509896051;
        slope = -1.514386582251977 - 0.7834253509896051;
        return intercept + slope * (x - 0.7834253509896051);
    }
    else if(time <= 29){
        intercept = -1.514386582251977;
        slope = -0.5027327278145804 - -1.514386582251977;
        return intercept + slope * (x - -1.514386582251977);
    }
    else if(time <= 30){
        intercept = -0.5027327278145804;
        slope = -0.7752146088681255 - -0.5027327278145804;
        return intercept + slope * (x - -0.5027327278145804);
    }
    else if(time <= 31){
        intercept = -0.7752146088681255;
        slope = 0.08904459209172824 - -0.7752146088681255;
        return intercept + slope * (x - -0.7752146088681255);
    }
    else if(time <= 32){
        intercept = 0.08904459209172824;
        slope = 0.14018390868664637 - 0.08904459209172824;
        return intercept + slope * (x - 0.08904459209172824);
    }
    else if(time <= 33){
        intercept = 0.14018390868664637;
        slope = 0.5726024141523423 - 0.14018390868664637;
        return intercept + slope * (x - 0.14018390868664637);
    }
    else if(time <= 34){
        intercept = 0.5726024141523423;
        slope = 0.14080400728105083 - 0.5726024141523423;
        return intercept + slope * (x - 0.5726024141523423);
    }
    else if(time <= 35){
        intercept = 0.14080400728105083;
        slope = -0.5745948182414975 - 0.14080400728105083;
        return intercept + slope * (x - 0.14080400728105083);
    }
    else if(time <= 36){
        intercept = -0.5745948182414975;
        slope = 1.2311072496201794 - -0.5745948182414975;
        return intercept + slope * (x - -0.5745948182414975);
    }
    else if(time <= 37){
        intercept = 1.2311072496201794;
        slope = 1.5015962633083275 - 1.2311072496201794;
        return intercept + slope * (x - 1.2311072496201794);
    }
    else if(time <= 38){
        intercept = 1.5015962633083275;
        slope = -0.012059746123128729 - 1.5015962633083275;
        return intercept + slope * (x - 1.5015962633083275);
    }
    else if(time <= 39){
        intercept = -0.012059746123128729;
        slope = -0.955229700253829 - -0.012059746123128729;
        return intercept + slope * (x - -0.012059746123128729);
    }
    else if(time <= 40){
        intercept = -0.955229700253829;
        slope = -0.5357075566214088 - -0.955229700253829;
        return intercept + slope * (x - -0.955229700253829);
    }
    else if(time <= 41){
        intercept = -0.5357075566214088;
        slope = 1.9797037460345461 - -0.5357075566214088;
        return intercept + slope * (x - -0.5357075566214088);
    }
    else if(time <= 42){
        intercept = 1.9797037460345461;
        slope = -1.2723588409859032 - 1.9797037460345461;
        return intercept + slope * (x - 1.9797037460345461);
    }
    else if(time <= 43){
        intercept = -1.2723588409859032;
        slope = -0.03042305242743903 - -1.2723588409859032;
        return intercept + slope * (x - -1.2723588409859032);
    }
    else if(time <= 44){
        intercept = -0.03042305242743903;
        slope = 2.919398682625711 - -0.03042305242743903;
        return intercept + slope * (x - -0.03042305242743903);
    }
    else if(time <= 45){
        intercept = 2.919398682625711;
        slope = 1.7423490423820736 - 2.919398682625711;
        return intercept + slope * (x - 2.919398682625711);
    }
    else if(time <= 46){
        intercept = 1.7423490423820736;
        slope = -0.32277219375557886 - 1.7423490423820736;
        return intercept + slope * (x - 1.7423490423820736);
    }
    else if(time <= 47){
        intercept = -0.32277219375557886;
        slope = -0.41883092833774443 - -0.32277219375557886;
        return intercept + slope * (x - -0.32277219375557886);
    }
    else if(time <= 48){
        intercept = -0.41883092833774443;
        slope = -0.18527263985464712 - -0.41883092833774443;
        return intercept + slope * (x - -0.41883092833774443);
    }
    else if(time <= 49){
        intercept = -0.18527263985464712;
        slope = -1.552943842636047 - -0.18527263985464712;
        return intercept + slope * (x - -0.18527263985464712);
    }
    else if(time <= 50){
        intercept = -1.552943842636047;
        slope = -0.5328377216212546 - -1.552943842636047;
        return intercept + slope * (x - -1.552943842636047);
    }
    else if(time <= 51){
        intercept = -0.5328377216212546;
        slope = -0.9193494199976155 - -0.5328377216212546;
        return intercept + slope * (x - -0.5328377216212546);
    }
    else if(time <= 52){
        intercept = -0.9193494199976155;
        slope = 0.3982534661510616 - -0.9193494199976155;
        return intercept + slope * (x - -0.9193494199976155);
    }
    else if(time <= 53){
        intercept = 0.3982534661510616;
        slope = -0.6602867672494249 - 0.3982534661510616;
        return intercept + slope * (x - 0.3982534661510616);
    }
    else if(time <= 54){
        intercept = -0.6602867672494249;
        slope = -0.17085948768291906 - -0.6602867672494249;
        return intercept + slope * (x - -0.6602867672494249);
    }
    else if(time <= 55){
        intercept = -0.17085948768291906;
        slope = 0.8574603691990029 - -0.17085948768291906;
        return intercept + slope * (x - -0.17085948768291906);
    }
    else if(time <= 56){
        intercept = 0.8574603691990029;
        slope = 0.22714612210236182 - 0.8574603691990029;
        return intercept + slope * (x - 0.8574603691990029);
    }
    else if(time <= 57){
        intercept = 0.22714612210236182;
        slope = 0.978076885841811 - 0.22714612210236182;
        return intercept + slope * (x - 0.22714612210236182);
    }
    else if(time <= 58){
        intercept = 0.978076885841811;
        slope = -1.085164271055696 - 0.978076885841811;
        return intercept + slope * (x - 0.978076885841811);
    }
    else if(time <= 59){
        intercept = -1.085164271055696;
        slope = -1.1259980549682729 - -1.085164271055696;
        return intercept + slope * (x - -1.085164271055696);
    }
    else if(time <= 60){
        intercept = -1.1259980549682729;
        slope = 0.19836921664240678 - -1.1259980549682729;
        return intercept + slope * (x - -1.1259980549682729);
    }
    else if(time <= 61){
        intercept = 0.19836921664240678;
        slope = -0.6836366970795384 - 0.19836921664240678;
        return intercept + slope * (x - 0.19836921664240678);
    }
    else if(time <= 62){
        intercept = -0.6836366970795384;
        slope = -0.32782368029884545 - -0.6836366970795384;
        return intercept + slope * (x - -0.6836366970795384);
    }
    else if(time <= 63){
        intercept = -0.32782368029884545;
        slope = 0.9093710088305591 - -0.32782368029884545;
        return intercept + slope * (x - -0.32782368029884545);
    }
    else if(time <= 64){
        intercept = 0.9093710088305591;
        slope = -0.3098099656736315 - 0.9093710088305591;
        return intercept + slope * (x - 0.9093710088305591);
    }
    else if(time <= 65){
        intercept = -0.3098099656736315;
        slope = -1.435926873871186 - -0.3098099656736315;
        return intercept + slope * (x - -0.3098099656736315);
    }
    else if(time <= 66){
        intercept = -1.435926873871186;
        slope = 0.3321074854141308 - -1.435926873871186;
        return intercept + slope * (x - -1.435926873871186);
    }
    else if(time <= 67){
        intercept = 0.3321074854141308;
        slope = 1.3455299152277838 - 0.3321074854141308;
        return intercept + slope * (x - 0.3321074854141308);
    }
    else if(time <= 68){
        intercept = 1.3455299152277838;
        slope = -0.12049067962176403 - 1.3455299152277838;
        return intercept + slope * (x - 1.3455299152277838);
    }
    else if(time <= 69){
        intercept = -0.12049067962176403;
        slope = -0.09416579843626426 - -0.12049067962176403;
        return intercept + slope * (x - -0.12049067962176403);
    }
    else if(time <= 70){
        intercept = -0.09416579843626426;
        slope = -0.053508376085067366 - -0.09416579843626426;
        return intercept + slope * (x - -0.09416579843626426);
    }
    else if(time <= 71){
        intercept = -0.053508376085067366;
        slope = 0.33101160977132593 - -0.053508376085067366;
        return intercept + slope * (x - -0.053508376085067366);
    }
    else if(time <= 72){
        intercept = 0.33101160977132593;
        slope = -0.670332796557091 - 0.33101160977132593;
        return intercept + slope * (x - 0.33101160977132593);
    }
    else if(time <= 73){
        intercept = -0.670332796557091;
        slope = 0.3697178085765129 - -0.670332796557091;
        return intercept + slope * (x - -0.670332796557091);
    }
    else if(time <= 74){
        intercept = 0.3697178085765129;
        slope = 0.20770993714145988 - 0.3697178085765129;
        return intercept + slope * (x - 0.3697178085765129);
    }
    else if(time <= 75){
        intercept = 0.20770993714145988;
        slope = 2.0240620519269243 - 0.20770993714145988;
        return intercept + slope * (x - 0.20770993714145988);
    }
    else if(time <= 76){
        intercept = 2.0240620519269243;
        slope = 0.5945092593039497 - 2.0240620519269243;
        return intercept + slope * (x - 2.0240620519269243);
    }
    else if(time <= 77){
        intercept = 0.5945092593039497;
        slope = 0.4235190416267651 - 0.5945092593039497;
        return intercept + slope * (x - 0.5945092593039497);
    }
    else if(time <= 78){
        intercept = 0.4235190416267651;
        slope = 0.18811401597427435 - 0.4235190416267651;
        return intercept + slope * (x - 0.4235190416267651);
    }
    else if(time <= 79){
        intercept = 0.18811401597427435;
        slope = -0.662383874251972 - 0.18811401597427435;
        return intercept + slope * (x - 0.18811401597427435);
    }
    else if(time <= 80){
        intercept = -0.662383874251972;
        slope = 1.165873390603692 - -0.662383874251972;
        return intercept + slope * (x - -0.662383874251972);
    }
    else if(time <= 81){
        intercept = 1.165873390603692;
        slope = 0.023039365323083063 - 1.165873390603692;
        return intercept + slope * (x - 1.165873390603692);
    }
    else if(time <= 82){
        intercept = 0.023039365323083063;
        slope = -0.22100613385893345 - 0.023039365323083063;
        return intercept + slope * (x - 0.023039365323083063);
    }
    else if(time <= 83){
        intercept = -0.22100613385893345;
        slope = 0.14127318318968496 - -0.22100613385893345;
        return intercept + slope * (x - -0.22100613385893345);
    }
    else if(time <= 84){
        intercept = 0.14127318318968496;
        slope = -0.8055309809877517 - 0.14127318318968496;
        return intercept + slope * (x - 0.14127318318968496);
    }
    else if(time <= 85){
        intercept = -0.8055309809877517;
        slope = 1.699935992241095 - -0.8055309809877517;
        return intercept + slope * (x - -0.8055309809877517);
    }
    else if(time <= 86){
        intercept = 1.699935992241095;
        slope = 0.7463650852381749 - 1.699935992241095;
        return intercept + slope * (x - 1.699935992241095);
    }
    else if(time <= 87){
        intercept = 0.7463650852381749;
        slope = 0.2647244818883996 - 0.7463650852381749;
        return intercept + slope * (x - 0.7463650852381749);
    }
    else if(time <= 88){
        intercept = 0.2647244818883996;
        slope = 0.7015975783807042 - 0.2647244818883996;
        return intercept + slope * (x - 0.2647244818883996);
    }
    else if(time <= 89){
        intercept = 0.7015975783807042;
        slope = 0.6265336783536194 - 0.7015975783807042;
        return intercept + slope * (x - 0.7015975783807042);
    }
    else if(time <= 90){
        intercept = 0.6265336783536194;
        slope = -0.756247520033772 - 0.6265336783536194;
        return intercept + slope * (x - 0.6265336783536194);
    }
    else if(time <= 91){
        intercept = -0.756247520033772;
        slope = 0.10059062355255764 - -0.756247520033772;
        return intercept + slope * (x - -0.756247520033772);
    }
    else if(time <= 92){
        intercept = 0.10059062355255764;
        slope = -0.2891591070156568 - 0.10059062355255764;
        return intercept + slope * (x - 0.10059062355255764);
    }
    else if(time <= 93){
        intercept = -0.2891591070156568;
        slope = -1.7109359564039934 - -0.2891591070156568;
        return intercept + slope * (x - -0.2891591070156568);
    }
    else if(time <= 94){
        intercept = -1.7109359564039934;
        slope = 1.6924470495271078 - -1.7109359564039934;
        return intercept + slope * (x - -1.7109359564039934);
    }
    else if(time <= 95){
        intercept = 1.6924470495271078;
        slope = -0.008231119452959958 - 1.6924470495271078;
        return intercept + slope * (x - 1.6924470495271078);
    }
    else if(time <= 96){
        intercept = -0.008231119452959958;
        slope = 0.6766184368059692 - -0.008231119452959958;
        return intercept + slope * (x - -0.008231119452959958);
    }
    else if(time <= 97){
        intercept = 0.6766184368059692;
        slope = 0.15790745611991305 - 0.6766184368059692;
        return intercept + slope * (x - 0.6766184368059692);
    }
    else if(time <= 98){
        intercept = 0.15790745611991305;
        slope = -0.21014153635985025 - 0.15790745611991305;
        return intercept + slope * (x - 0.15790745611991305);
    }
    else if(time <= 99){
        intercept = -0.21014153635985025;
        slope = -0.7539089620389654 - -0.21014153635985025;
        return intercept + slope * (x - -0.21014153635985025);
    }
    else if(time <= 100){
        intercept = -0.7539089620389654;
        slope = -1.55562145868007 - -0.7539089620389654;
        return intercept + slope * (x - -0.7539089620389654);
    }
    else if(time <= 101){
        intercept = -1.55562145868007;
        slope = -1.0353827621507519 - -1.55562145868007;
        return intercept + slope * (x - -1.55562145868007);
    }
    else if(time <= 102){
        intercept = -1.0353827621507519;
        slope = 1.0809252506080693 - -1.0353827621507519;
        return intercept + slope * (x - -1.0353827621507519);
    }
    else if(time <= 103){
        intercept = 1.0809252506080693;
        slope = -0.883918261508971 - 1.0809252506080693;
        return intercept + slope * (x - 1.0809252506080693);
    }
    else if(time <= 104){
        intercept = -0.883918261508971;
        slope = -0.039058351711670554 - -0.883918261508971;
        return intercept + slope * (x - -0.883918261508971);
    }
    else if(time <= 105){
        intercept = -0.039058351711670554;
        slope = -0.7191779899012737 - -0.039058351711670554;
        return intercept + slope * (x - -0.039058351711670554);
    }
    else if(time <= 106){
        intercept = -0.7191779899012737;
        slope = 0.5366080431959953 - -0.7191779899012737;
        return intercept + slope * (x - -0.7191779899012737);
    }
    else if(time <= 107){
        intercept = 0.5366080431959953;
        slope = -0.0607622483027184 - 0.5366080431959953;
        return intercept + slope * (x - 0.5366080431959953);
    }
    else if(time <= 108){
        intercept = -0.0607622483027184;
        slope = 0.4708719095652607 - -0.0607622483027184;
        return intercept + slope * (x - -0.0607622483027184);
    }
    else if(time <= 109){
        intercept = 0.4708719095652607;
        slope = 0.44152464821039084 - 0.4708719095652607;
        return intercept + slope * (x - 0.4708719095652607);
    }
    else if(time <= 110){
        intercept = 0.44152464821039084;
        slope = 0.7972525354583001 - 0.44152464821039084;
        return intercept + slope * (x - 0.44152464821039084);
    }
    else if(time <= 111){
        intercept = 0.7972525354583001;
        slope = 0.010529190219722342 - 0.7972525354583001;
        return intercept + slope * (x - 0.7972525354583001);
    }
    else if(time <= 112){
        intercept = 0.010529190219722342;
        slope = 0.3550962183002703 - 0.010529190219722342;
        return intercept + slope * (x - 0.010529190219722342);
    }
    else if(time <= 113){
        intercept = 0.3550962183002703;
        slope = -0.2368798446514268 - 0.3550962183002703;
        return intercept + slope * (x - 0.3550962183002703);
    }
    else if(time <= 114){
        intercept = -0.2368798446514268;
        slope = -0.3793792450706344 - -0.2368798446514268;
        return intercept + slope * (x - -0.2368798446514268);
    }
    else if(time <= 115){
        intercept = -0.3793792450706344;
        slope = 0.7151915770337252 - -0.3793792450706344;
        return intercept + slope * (x - -0.3793792450706344);
    }
    else if(time <= 116){
        intercept = 0.7151915770337252;
        slope = 0.8036274462295898 - 0.7151915770337252;
        return intercept + slope * (x - 0.7151915770337252);
    }
    else if(time <= 117){
        intercept = 0.8036274462295898;
        slope = -0.4491376725681242 - 0.8036274462295898;
        return intercept + slope * (x - 0.8036274462295898);
    }
    else if(time <= 118){
        intercept = -0.4491376725681242;
        slope = -0.7694678500730465 - -0.4491376725681242;
        return intercept + slope * (x - -0.4491376725681242);
    }
    else if(time <= 119){
        intercept = -0.7694678500730465;
        slope = -0.774753423992806 - -0.7694678500730465;
        return intercept + slope * (x - -0.7694678500730465);
    }
    else if(time <= 120){
        intercept = -0.774753423992806;
        slope = 0.9891057876613196 - -0.774753423992806;
        return intercept + slope * (x - -0.774753423992806);
    }
    else if(time <= 121){
        intercept = 0.9891057876613196;
        slope = -0.2904204247863047 - 0.9891057876613196;
        return intercept + slope * (x - 0.9891057876613196);
    }
    else if(time <= 122){
        intercept = -0.2904204247863047;
        slope = -0.22640447158189603 - -0.2904204247863047;
        return intercept + slope * (x - -0.2904204247863047);
    }
    else if(time <= 123){
        intercept = -0.22640447158189603;
        slope = 0.6755394420053035 - -0.22640447158189603;
        return intercept + slope * (x - -0.22640447158189603);
    }
    else if(time <= 124){
        intercept = 0.6755394420053035;
        slope = -0.8712532170180735 - 0.6755394420053035;
        return intercept + slope * (x - 0.6755394420053035);
    }
    else if(time <= 125){
        intercept = -0.8712532170180735;
        slope = 1.3102441952830015 - -0.8712532170180735;
        return intercept + slope * (x - -0.8712532170180735);
    }
    else if(time <= 126){
        intercept = 1.3102441952830015;
        slope = 1.1070574539062663 - 1.3102441952830015;
        return intercept + slope * (x - 1.3102441952830015);
    }
    else if(time <= 127){
        intercept = 1.1070574539062663;
        slope = -1.075531433776883 - 1.1070574539062663;
        return intercept + slope * (x - 1.1070574539062663);
    }
    else if(time <= 128){
        intercept = -1.075531433776883;
        slope = 1.1090093961260898 - -1.075531433776883;
        return intercept + slope * (x - -1.075531433776883);
    }
    else if(time <= 129){
        intercept = 1.1090093961260898;
        slope = -0.9789225736590994 - 1.1090093961260898;
        return intercept + slope * (x - 1.1090093961260898);
    }
    else if(time <= 130){
        intercept = -0.9789225736590994;
        slope = 0.065556922526044 - -0.9789225736590994;
        return intercept + slope * (x - -0.9789225736590994);
    }
    else if(time <= 131){
        intercept = 0.065556922526044;
        slope = 0.4084809577779772 - 0.065556922526044;
        return intercept + slope * (x - 0.065556922526044);
    }
    else if(time <= 132){
        intercept = 0.4084809577779772;
        slope = 0.18956505391418382 - 0.4084809577779772;
        return intercept + slope * (x - 0.4084809577779772);
    }
    else if(time <= 133){
        intercept = 0.18956505391418382;
        slope = 0.051611317519847454 - 0.18956505391418382;
        return intercept + slope * (x - 0.18956505391418382);
    }
    else if(time <= 134){
        intercept = 0.051611317519847454;
        slope = -0.3204090578797017 - 0.051611317519847454;
        return intercept + slope * (x - 0.051611317519847454);
    }
    else if(time <= 135){
        intercept = -0.3204090578797017;
        slope = 0.4352358850794463 - -0.3204090578797017;
        return intercept + slope * (x - -0.3204090578797017);
    }
    else if(time <= 136){
        intercept = 0.4352358850794463;
        slope = -1.7094788272487738 - 0.4352358850794463;
        return intercept + slope * (x - 0.4352358850794463);
    }
    else if(time <= 137){
        intercept = -1.7094788272487738;
        slope = -0.055665773410234015 - -1.7094788272487738;
        return intercept + slope * (x - -1.7094788272487738);
    }
    else if(time <= 138){
        intercept = -0.055665773410234015;
        slope = 0.85927270406496 - -0.055665773410234015;
        return intercept + slope * (x - -0.055665773410234015);
    }
    else if(time <= 139){
        intercept = 0.85927270406496;
        slope = 0.7607672240223922 - 0.85927270406496;
        return intercept + slope * (x - 0.85927270406496);
    }
    else if(time <= 140){
        intercept = 0.7607672240223922;
        slope = 0.06933713217699743 - 0.7607672240223922;
        return intercept + slope * (x - 0.7607672240223922);
    }
    else if(time <= 141){
        intercept = 0.06933713217699743;
        slope = -0.8289222209567398 - 0.06933713217699743;
        return intercept + slope * (x - 0.06933713217699743);
    }
    else if(time <= 142){
        intercept = -0.8289222209567398;
        slope = 1.6073247116296583 - -0.8289222209567398;
        return intercept + slope * (x - -0.8289222209567398);
    }
    else if(time <= 143){
        intercept = 1.6073247116296583;
        slope = -0.014784083466758583 - 1.6073247116296583;
        return intercept + slope * (x - 1.6073247116296583);
    }
    else if(time <= 144){
        intercept = -0.014784083466758583;
        slope = -0.3900691779140166 - -0.014784083466758583;
        return intercept + slope * (x - -0.014784083466758583);
    }
    else if(time <= 145){
        intercept = -0.3900691779140166;
        slope = 1.0514891050853343 - -0.3900691779140166;
        return intercept + slope * (x - -0.3900691779140166);
    }
    else if(time <= 146){
        intercept = 1.0514891050853343;
        slope = 0.7432719672307643 - 1.0514891050853343;
        return intercept + slope * (x - 1.0514891050853343);
    }
    else if(time <= 147){
        intercept = 0.7432719672307643;
        slope = 1.2338897401751456 - 0.7432719672307643;
        return intercept + slope * (x - 0.7432719672307643);
    }
    else if(time <= 148){
        intercept = 1.2338897401751456;
        slope = -0.7632040515947659 - 1.2338897401751456;
        return intercept + slope * (x - 1.2338897401751456);
    }
    else if(time <= 149){
        intercept = -0.7632040515947659;
        slope = 1.9006083534894271 - -0.7632040515947659;
        return intercept + slope * (x - -0.7632040515947659);
    }
    else if(time <= 150){
        intercept = 1.9006083534894271;
        slope = 0.6549444722885189 - 1.9006083534894271;
        return intercept + slope * (x - 1.9006083534894271);
    }
    else if(time <= 151){
        intercept = 0.6549444722885189;
        slope = 1.9190280132628736 - 0.6549444722885189;
        return intercept + slope * (x - 0.6549444722885189);
    }
    else if(time <= 152){
        intercept = 1.9190280132628736;
        slope = -0.025988073872884217 - 1.9190280132628736;
        return intercept + slope * (x - 1.9190280132628736);
    }
    else if(time <= 153){
        intercept = -0.025988073872884217;
        slope = 0.0019712085609509514 - -0.025988073872884217;
        return intercept + slope * (x - -0.025988073872884217);
    }
    else if(time <= 154){
        intercept = 0.0019712085609509514;
        slope = -1.5189724353859229 - 0.0019712085609509514;
        return intercept + slope * (x - 0.0019712085609509514);
    }
    else if(time <= 155){
        intercept = -1.5189724353859229;
        slope = 0.7454581331851303 - -1.5189724353859229;
        return intercept + slope * (x - -1.5189724353859229);
    }
    else if(time <= 156){
        intercept = 0.7454581331851303;
        slope = -0.8104422390106203 - 0.7454581331851303;
        return intercept + slope * (x - 0.7454581331851303);
    }
    else if(time <= 157){
        intercept = -0.8104422390106203;
        slope = 0.13753130314387568 - -0.8104422390106203;
        return intercept + slope * (x - -0.8104422390106203);
    }
    else if(time <= 158){
        intercept = 0.13753130314387568;
        slope = 0.94792875720864 - 0.13753130314387568;
        return intercept + slope * (x - 0.13753130314387568);
    }
    else if(time <= 159){
        intercept = 0.94792875720864;
        slope = -0.2240468627660765 - 0.94792875720864;
        return intercept + slope * (x - 0.94792875720864);
    }
    else if(time <= 160){
        intercept = -0.2240468627660765;
        slope = -0.2806716784103044 - -0.2240468627660765;
        return intercept + slope * (x - -0.2240468627660765);
    }
    else if(time <= 161){
        intercept = -0.2806716784103044;
        slope = 0.492362943983945 - -0.2806716784103044;
        return intercept + slope * (x - -0.2806716784103044);
    }
    else if(time <= 162){
        intercept = 0.492362943983945;
        slope = -1.1156864494421221 - 0.492362943983945;
        return intercept + slope * (x - 0.492362943983945);
    }
    else if(time <= 163){
        intercept = -1.1156864494421221;
        slope = -1.8108652365733944 - -1.1156864494421221;
        return intercept + slope * (x - -1.1156864494421221);
    }
    else if(time <= 164){
        intercept = -1.8108652365733944;
        slope = 1.5024101269492813 - -1.8108652365733944;
        return intercept + slope * (x - -1.8108652365733944);
    }
    else if(time <= 165){
        intercept = 1.5024101269492813;
        slope = 0.2416581044991171 - 1.5024101269492813;
        return intercept + slope * (x - 1.5024101269492813);
    }
    else if(time <= 166){
        intercept = 0.2416581044991171;
        slope = -2.255483386895219 - 0.2416581044991171;
        return intercept + slope * (x - 0.2416581044991171);
    }
    else if(time <= 167){
        intercept = -2.255483386895219;
        slope = 0.05030641881656735 - -2.255483386895219;
        return intercept + slope * (x - -2.255483386895219);
    }
    else if(time <= 168){
        intercept = 0.05030641881656735;
        slope = -0.5686719855818131 - 0.05030641881656735;
        return intercept + slope * (x - 0.05030641881656735);
    }
    else if(time <= 169){
        intercept = -0.5686719855818131;
        slope = -1.1983925252816845 - -0.5686719855818131;
        return intercept + slope * (x - -0.5686719855818131);
    }
    else if(time <= 170){
        intercept = -1.1983925252816845;
        slope = 0.9429903607495144 - -1.1983925252816845;
        return intercept + slope * (x - -1.1983925252816845);
    }
    else if(time <= 171){
        intercept = 0.9429903607495144;
        slope = -0.8327113524296857 - 0.9429903607495144;
        return intercept + slope * (x - 0.9429903607495144);
    }
    else if(time <= 172){
        intercept = -0.8327113524296857;
        slope = 0.025755110359365802 - -0.8327113524296857;
        return intercept + slope * (x - -0.8327113524296857);
    }
    else if(time <= 173){
        intercept = 0.025755110359365802;
        slope = -1.8797978548249674 - 0.025755110359365802;
        return intercept + slope * (x - 0.025755110359365802);
    }
    else if(time <= 174){
        intercept = -1.8797978548249674;
        slope = -0.9926430889522458 - -1.8797978548249674;
        return intercept + slope * (x - -1.8797978548249674);
    }
    else if(time <= 175){
        intercept = -0.9926430889522458;
        slope = 2.1669464265463745 - -0.9926430889522458;
        return intercept + slope * (x - -0.9926430889522458);
    }
    else if(time <= 176){
        intercept = 2.1669464265463745;
        slope = 0.04876459088017026 - 2.1669464265463745;
        return intercept + slope * (x - 2.1669464265463745);
    }
    else if(time <= 177){
        intercept = 0.04876459088017026;
        slope = 0.36518076503992214 - 0.04876459088017026;
        return intercept + slope * (x - 0.04876459088017026);
    }
    else if(time <= 178){
        intercept = 0.36518076503992214;
        slope = -1.270876113044988 - 0.36518076503992214;
        return intercept + slope * (x - 0.36518076503992214);
    }
    else if(time <= 179){
        intercept = -1.270876113044988;
        slope = 0.9958017399378859 - -1.270876113044988;
        return intercept + slope * (x - -1.270876113044988);
    }
    else if(time <= 180){
        intercept = 0.9958017399378859;
        slope = 0.5135212259251273 - 0.9958017399378859;
        return intercept + slope * (x - 0.9958017399378859);
    }
    else if(time <= 181){
        intercept = 0.5135212259251273;
        slope = 0.1725619378403109 - 0.5135212259251273;
        return intercept + slope * (x - 0.5135212259251273);
    }
    else if(time <= 182){
        intercept = 0.1725619378403109;
        slope = 0.3117996066190516 - 0.1725619378403109;
        return intercept + slope * (x - 0.1725619378403109);
    }
    else if(time <= 183){
        intercept = 0.3117996066190516;
        slope = -0.7971398731010898 - 0.3117996066190516;
        return intercept + slope * (x - 0.3117996066190516);
    }
    else if(time <= 184){
        intercept = -0.7971398731010898;
        slope = -1.1540875592093305 - -0.7971398731010898;
        return intercept + slope * (x - -0.7971398731010898);
    }
    else if(time <= 185){
        intercept = -1.1540875592093305;
        slope = -2.308274939349673 - -1.1540875592093305;
        return intercept + slope * (x - -1.1540875592093305);
    }
    else if(time <= 186){
        intercept = -2.308274939349673;
        slope = 1.2196113628801204 - -2.308274939349673;
        return intercept + slope * (x - -2.308274939349673);
    }
    else if(time <= 187){
        intercept = 1.2196113628801204;
        slope = 1.5283685563675542 - 1.2196113628801204;
        return intercept + slope * (x - 1.2196113628801204);
    }
    else if(time <= 188){
        intercept = 1.5283685563675542;
        slope = -0.3884717362502731 - 1.5283685563675542;
        return intercept + slope * (x - 1.5283685563675542);
    }
    else if(time <= 189){
        intercept = -0.3884717362502731;
        slope = 0.6081361480643035 - -0.3884717362502731;
        return intercept + slope * (x - -0.3884717362502731);
    }
    else if(time <= 190){
        intercept = 0.6081361480643035;
        slope = 1.7029861189765152 - 0.6081361480643035;
        return intercept + slope * (x - 0.6081361480643035);
    }
    else if(time <= 191){
        intercept = 1.7029861189765152;
        slope = 0.02645979181081873 - 1.7029861189765152;
        return intercept + slope * (x - 1.7029861189765152);
    }
    else if(time <= 192){
        intercept = 0.02645979181081873;
        slope = -0.335242666804311 - 0.02645979181081873;
        return intercept + slope * (x - 0.02645979181081873);
    }
    else if(time <= 193){
        intercept = -0.335242666804311;
        slope = 0.6592825374958118 - -0.335242666804311;
        return intercept + slope * (x - -0.335242666804311);
    }
    else if(time <= 194){
        intercept = 0.6592825374958118;
        slope = 1.9494713722699089 - 0.6592825374958118;
        return intercept + slope * (x - 0.6592825374958118);
    }
    else if(time <= 195){
        intercept = 1.9494713722699089;
        slope = -0.954121702846129 - 1.9494713722699089;
        return intercept + slope * (x - 1.9494713722699089);
    }
    else if(time <= 196){
        intercept = -0.954121702846129;
        slope = 0.6516851753795786 - -0.954121702846129;
        return intercept + slope * (x - -0.954121702846129);
    }
    else if(time <= 197){
        intercept = 0.6516851753795786;
        slope = -0.648722402264431 - 0.6516851753795786;
        return intercept + slope * (x - 0.6516851753795786);
    }
    else if(time <= 198){
        intercept = -0.648722402264431;
        slope = 1.1513314007389859 - -0.648722402264431;
        return intercept + slope * (x - -0.648722402264431);
    }
    else if(time <= 199){
        intercept = 1.1513314007389859;
        slope = 1.1970757858218728 - 1.1513314007389859;
        return intercept + slope * (x - 1.1513314007389859);
    }
    else if(time <= 200){
        intercept = 1.1970757858218728;
        slope = 1.8494856035244287 - 1.1970757858218728;
        return intercept + slope * (x - 1.1970757858218728);
    }
    else if(time <= 201){
        intercept = 1.8494856035244287;
        slope = -1.4718381463285777 - 1.8494856035244287;
        return intercept + slope * (x - 1.8494856035244287);
    }
    else if(time <= 202){
        intercept = -1.4718381463285777;
        slope = -1.0987161861656691 - -1.4718381463285777;
        return intercept + slope * (x - -1.4718381463285777);
    }
    else if(time <= 203){
        intercept = -1.0987161861656691;
        slope = -0.17487942615364171 - -1.0987161861656691;
        return intercept + slope * (x - -1.0987161861656691);
    }
    else if(time <= 204){
        intercept = -0.17487942615364171;
        slope = -0.06301408036499236 - -0.17487942615364171;
        return intercept + slope * (x - -0.17487942615364171);
    }
    else if(time <= 205){
        intercept = -0.06301408036499236;
        slope = -0.5567705926255074 - -0.06301408036499236;
        return intercept + slope * (x - -0.06301408036499236);
    }
    else if(time <= 206){
        intercept = -0.5567705926255074;
        slope = -1.3335527144784551 - -0.5567705926255074;
        return intercept + slope * (x - -0.5567705926255074);
    }
    else if(time <= 207){
        intercept = -1.3335527144784551;
        slope = -1.110761073953616 - -1.3335527144784551;
        return intercept + slope * (x - -1.3335527144784551);
    }
    else if(time <= 208){
        intercept = -1.110761073953616;
        slope = 1.378862485125712 - -1.110761073953616;
        return intercept + slope * (x - -1.110761073953616);
    }
    else if(time <= 209){
        intercept = 1.378862485125712;
        slope = 0.04266474164818102 - 1.378862485125712;
        return intercept + slope * (x - 1.378862485125712);
    }
    else if(time <= 210){
        intercept = 0.04266474164818102;
        slope = 0.7941043632800562 - 0.04266474164818102;
        return intercept + slope * (x - 0.04266474164818102);
    }
    else if(time <= 211){
        intercept = 0.7941043632800562;
        slope = -0.4352803810828065 - 0.7941043632800562;
        return intercept + slope * (x - 0.7941043632800562);
    }
    else if(time <= 212){
        intercept = -0.4352803810828065;
        slope = -1.0999383910611191 - -0.4352803810828065;
        return intercept + slope * (x - -0.4352803810828065);
    }
    else if(time <= 213){
        intercept = -1.0999383910611191;
        slope = 0.35082950957772135 - -1.0999383910611191;
        return intercept + slope * (x - -1.0999383910611191);
    }
    else if(time <= 214){
        intercept = 0.35082950957772135;
        slope = -0.19793421295156943 - 0.35082950957772135;
        return intercept + slope * (x - 0.35082950957772135);
    }
    else if(time <= 215){
        intercept = -0.19793421295156943;
        slope = -1.040904626422231 - -0.19793421295156943;
        return intercept + slope * (x - -0.19793421295156943);
    }
    else if(time <= 216){
        intercept = -1.040904626422231;
        slope = 0.3283828816758423 - -1.040904626422231;
        return intercept + slope * (x - -1.040904626422231);
    }
    else if(time <= 217){
        intercept = 0.3283828816758423;
        slope = -0.012444008188110749 - 0.3283828816758423;
        return intercept + slope * (x - 0.3283828816758423);
    }
    else if(time <= 218){
        intercept = -0.012444008188110749;
        slope = -1.9404425782056893 - -0.012444008188110749;
        return intercept + slope * (x - -0.012444008188110749);
    }
    else if(time <= 219){
        intercept = -1.9404425782056893;
        slope = -1.1707720838781475 - -1.9404425782056893;
        return intercept + slope * (x - -1.9404425782056893);
    }
    else if(time <= 220){
        intercept = -1.1707720838781475;
        slope = 0.5534454746252518 - -1.1707720838781475;
        return intercept + slope * (x - -1.1707720838781475);
    }
    else if(time <= 221){
        intercept = 0.5534454746252518;
        slope = 0.7800410117915129 - 0.5534454746252518;
        return intercept + slope * (x - 0.5534454746252518);
    }
    else if(time <= 222){
        intercept = 0.7800410117915129;
        slope = -2.081737788512081 - 0.7800410117915129;
        return intercept + slope * (x - 0.7800410117915129);
    }
    else if(time <= 223){
        intercept = -2.081737788512081;
        slope = -1.8494295083076273 - -2.081737788512081;
        return intercept + slope * (x - -2.081737788512081);
    }
    else if(time <= 224){
        intercept = -1.8494295083076273;
        slope = 1.6705241665821875 - -1.8494295083076273;
        return intercept + slope * (x - -1.8494295083076273);
    }
    else if(time <= 225){
        intercept = 1.6705241665821875;
        slope = 0.6825145609126861 - 1.6705241665821875;
        return intercept + slope * (x - 1.6705241665821875);
    }
    else if(time <= 226){
        intercept = 0.6825145609126861;
        slope = 1.0795554068827342 - 0.6825145609126861;
        return intercept + slope * (x - 0.6825145609126861);
    }
    else if(time <= 227){
        intercept = 1.0795554068827342;
        slope = 0.4853453223962284 - 1.0795554068827342;
        return intercept + slope * (x - 1.0795554068827342);
    }
    else if(time <= 228){
        intercept = 0.4853453223962284;
        slope = -0.1482719549301536 - 0.4853453223962284;
        return intercept + slope * (x - 0.4853453223962284);
    }
    else if(time <= 229){
        intercept = -0.1482719549301536;
        slope = 0.0714095596223211 - -0.1482719549301536;
        return intercept + slope * (x - -0.1482719549301536);
    }
    else if(time <= 230){
        intercept = 0.0714095596223211;
        slope = -0.32374747880135063 - 0.0714095596223211;
        return intercept + slope * (x - 0.0714095596223211);
    }
    else if(time <= 231){
        intercept = -0.32374747880135063;
        slope = 0.9251502089086158 - -0.32374747880135063;
        return intercept + slope * (x - -0.32374747880135063);
    }
    else if(time <= 232){
        intercept = 0.9251502089086158;
        slope = -0.9821945523247125 - 0.9251502089086158;
        return intercept + slope * (x - 0.9251502089086158);
    }
    else if(time <= 233){
        intercept = -0.9821945523247125;
        slope = 0.9863913358484733 - -0.9821945523247125;
        return intercept + slope * (x - -0.9821945523247125);
    }
    else if(time <= 234){
        intercept = 0.9863913358484733;
        slope = -0.28177071864460573 - 0.9863913358484733;
        return intercept + slope * (x - 0.9863913358484733);
    }
    else if(time <= 235){
        intercept = -0.28177071864460573;
        slope = -0.025881106044551797 - -0.28177071864460573;
        return intercept + slope * (x - -0.28177071864460573);
    }
    else if(time <= 236){
        intercept = -0.025881106044551797;
        slope = -0.09091248612446844 - -0.025881106044551797;
        return intercept + slope * (x - -0.025881106044551797);
    }
    else if(time <= 237){
        intercept = -0.09091248612446844;
        slope = -0.20415335253811098 - -0.09091248612446844;
        return intercept + slope * (x - -0.09091248612446844);
    }
    else if(time <= 238){
        intercept = -0.20415335253811098;
        slope = -0.8624199712264629 - -0.20415335253811098;
        return intercept + slope * (x - -0.20415335253811098);
    }
    else if(time <= 239){
        intercept = -0.8624199712264629;
        slope = -1.8234191151373527 - -0.8624199712264629;
        return intercept + slope * (x - -0.8624199712264629);
    }
    else if(time <= 240){
        intercept = -1.8234191151373527;
        slope = -0.2535161377826132 - -1.8234191151373527;
        return intercept + slope * (x - -1.8234191151373527);
    }
    else if(time <= 241){
        intercept = -0.2535161377826132;
        slope = -0.7468058902665793 - -0.2535161377826132;
        return intercept + slope * (x - -0.2535161377826132);
    }
    else if(time <= 242){
        intercept = -0.7468058902665793;
        slope = 0.25170543563116893 - -0.7468058902665793;
        return intercept + slope * (x - -0.7468058902665793);
    }
    else if(time <= 243){
        intercept = 0.25170543563116893;
        slope = 0.7697751121726085 - 0.25170543563116893;
        return intercept + slope * (x - 0.25170543563116893);
    }
    else if(time <= 244){
        intercept = 0.7697751121726085;
        slope = 0.4608986226024105 - 0.7697751121726085;
        return intercept + slope * (x - 0.7697751121726085);
    }
    else if(time <= 245){
        intercept = 0.4608986226024105;
        slope = 0.674660360414571 - 0.4608986226024105;
        return intercept + slope * (x - 0.4608986226024105);
    }
    else if(time <= 246){
        intercept = 0.674660360414571;
        slope = -0.7619199743573863 - 0.674660360414571;
        return intercept + slope * (x - 0.674660360414571);
    }
    else if(time <= 247){
        intercept = -0.7619199743573863;
        slope = -0.6435140247473674 - -0.7619199743573863;
        return intercept + slope * (x - -0.7619199743573863);
    }
    else if(time <= 248){
        intercept = -0.6435140247473674;
        slope = 1.154480549549321 - -0.6435140247473674;
        return intercept + slope * (x - -0.6435140247473674);
    }
    else if(time <= 249){
        intercept = 1.154480549549321;
        slope = 0.40177818671534027 - 1.154480549549321;
        return intercept + slope * (x - 1.154480549549321);
    }
    else if(time <= 250){
        intercept = 0.40177818671534027;
        slope = 2.0257977403380627 - 0.40177818671534027;
        return intercept + slope * (x - 0.40177818671534027);
    }
    else if(time <= 251){
        intercept = 2.0257977403380627;
        slope = 0.08125609736284957 - 2.0257977403380627;
        return intercept + slope * (x - 2.0257977403380627);
    }
    else if(time <= 252){
        intercept = 0.08125609736284957;
        slope = -0.0560182167758904 - 0.08125609736284957;
        return intercept + slope * (x - 0.08125609736284957);
    }
    else if(time <= 253){
        intercept = -0.0560182167758904;
        slope = -0.01903225083002803 - -0.0560182167758904;
        return intercept + slope * (x - -0.0560182167758904);
    }
    else if(time <= 254){
        intercept = -0.01903225083002803;
        slope = -1.1046864209506941 - -0.01903225083002803;
        return intercept + slope * (x - -0.01903225083002803);
    }
    else if(time <= 255){
        intercept = -1.1046864209506941;
        slope = 0.36745766757206294 - -1.1046864209506941;
        return intercept + slope * (x - -1.1046864209506941);
    }
    else if(time <= 256){
        intercept = 0.36745766757206294;
        slope = 0.8303196351253683 - 0.36745766757206294;
        return intercept + slope * (x - 0.36745766757206294);
    }
    else if(time <= 257){
        intercept = 0.8303196351253683;
        slope = 0.31554129453341634 - 0.8303196351253683;
        return intercept + slope * (x - 0.8303196351253683);
    }
    else if(time <= 258){
        intercept = 0.31554129453341634;
        slope = 1.5709699868518838 - 0.31554129453341634;
        return intercept + slope * (x - 0.31554129453341634);
    }
    else if(time <= 259){
        intercept = 1.5709699868518838;
        slope = -0.4208162592441885 - 1.5709699868518838;
        return intercept + slope * (x - 1.5709699868518838);
    }
    else if(time <= 260){
        intercept = -0.4208162592441885;
        slope = -1.3902877590589795 - -0.4208162592441885;
        return intercept + slope * (x - -0.4208162592441885);
    }
    else if(time <= 261){
        intercept = -1.3902877590589795;
        slope = -0.3402432073939729 - -1.3902877590589795;
        return intercept + slope * (x - -1.3902877590589795);
    }
    else if(time <= 262){
        intercept = -0.3402432073939729;
        slope = 1.003888853409846 - -0.3402432073939729;
        return intercept + slope * (x - -0.3402432073939729);
    }
    else if(time <= 263){
        intercept = 1.003888853409846;
        slope = -0.2124942717657222 - 1.003888853409846;
        return intercept + slope * (x - 1.003888853409846);
    }
    else if(time <= 264){
        intercept = -0.2124942717657222;
        slope = -0.11232103499850707 - -0.2124942717657222;
        return intercept + slope * (x - -0.2124942717657222);
    }
    else if(time <= 265){
        intercept = -0.11232103499850707;
        slope = -0.010387016651268318 - -0.11232103499850707;
        return intercept + slope * (x - -0.11232103499850707);
    }
    else if(time <= 266){
        intercept = -0.010387016651268318;
        slope = -0.8859568486992355 - -0.010387016651268318;
        return intercept + slope * (x - -0.010387016651268318);
    }
    else if(time <= 267){
        intercept = -0.8859568486992355;
        slope = -0.2728581821703067 - -0.8859568486992355;
        return intercept + slope * (x - -0.8859568486992355);
    }
    else if(time <= 268){
        intercept = -0.2728581821703067;
        slope = -0.5098463463775551 - -0.2728581821703067;
        return intercept + slope * (x - -0.2728581821703067);
    }
    else if(time <= 269){
        intercept = -0.5098463463775551;
        slope = 0.30478979475777274 - -0.5098463463775551;
        return intercept + slope * (x - -0.5098463463775551);
    }
    else if(time <= 270){
        intercept = 0.30478979475777274;
        slope = 0.43660888245044255 - 0.30478979475777274;
        return intercept + slope * (x - 0.30478979475777274);
    }
    else if(time <= 271){
        intercept = 0.43660888245044255;
        slope = -0.46772066331704015 - 0.43660888245044255;
        return intercept + slope * (x - 0.43660888245044255);
    }
    else if(time <= 272){
        intercept = -0.46772066331704015;
        slope = 0.5659866009101568 - -0.46772066331704015;
        return intercept + slope * (x - -0.46772066331704015);
    }
    else if(time <= 273){
        intercept = 0.5659866009101568;
        slope = -0.5504061865278214 - 0.5659866009101568;
        return intercept + slope * (x - 0.5659866009101568);
    }
    else if(time <= 274){
        intercept = -0.5504061865278214;
        slope = -1.58140415492368 - -0.5504061865278214;
        return intercept + slope * (x - -0.5504061865278214);
    }
    else if(time <= 275){
        intercept = -1.58140415492368;
        slope = -0.6563990115962793 - -1.58140415492368;
        return intercept + slope * (x - -1.58140415492368);
    }
    else if(time <= 276){
        intercept = -0.6563990115962793;
        slope = -0.34001046233408105 - -0.6563990115962793;
        return intercept + slope * (x - -0.6563990115962793);
    }
    else if(time <= 277){
        intercept = -0.34001046233408105;
        slope = 0.14075706437693336 - -0.34001046233408105;
        return intercept + slope * (x - -0.34001046233408105);
    }
    else if(time <= 278){
        intercept = 0.14075706437693336;
        slope = -0.9867077490598465 - 0.14075706437693336;
        return intercept + slope * (x - 0.14075706437693336);
    }
    else if(time <= 279){
        intercept = -0.9867077490598465;
        slope = -0.9295147122387193 - -0.9867077490598465;
        return intercept + slope * (x - -0.9867077490598465);
    }
    else if(time <= 280){
        intercept = -0.9295147122387193;
        slope = -0.07992090554082523 - -0.9295147122387193;
        return intercept + slope * (x - -0.9295147122387193);
    }
    else if(time <= 281){
        intercept = -0.07992090554082523;
        slope = 0.3822121933767479 - -0.07992090554082523;
        return intercept + slope * (x - -0.07992090554082523);
    }
    else if(time <= 282){
        intercept = 0.3822121933767479;
        slope = -1.6636814253436074 - 0.3822121933767479;
        return intercept + slope * (x - 0.3822121933767479);
    }
    else if(time <= 283){
        intercept = -1.6636814253436074;
        slope = -0.4516435321923185 - -1.6636814253436074;
        return intercept + slope * (x - -1.6636814253436074);
    }
    else if(time <= 284){
        intercept = -0.4516435321923185;
        slope = -0.24585072942879524 - -0.4516435321923185;
        return intercept + slope * (x - -0.4516435321923185);
    }
    else if(time <= 285){
        intercept = -0.24585072942879524;
        slope = -0.8622643056019185 - -0.24585072942879524;
        return intercept + slope * (x - -0.24585072942879524);
    }
    else if(time <= 286){
        intercept = -0.8622643056019185;
        slope = -0.4293991095644156 - -0.8622643056019185;
        return intercept + slope * (x - -0.8622643056019185);
    }
    else if(time <= 287){
        intercept = -0.4293991095644156;
        slope = -0.4156938627812719 - -0.4293991095644156;
        return intercept + slope * (x - -0.4293991095644156);
    }
    else if(time <= 288){
        intercept = -0.4156938627812719;
        slope = -1.1555696519883618 - -0.4156938627812719;
        return intercept + slope * (x - -0.4156938627812719);
    }
    else if(time <= 289){
        intercept = -1.1555696519883618;
        slope = -0.8871126147607252 - -1.1555696519883618;
        return intercept + slope * (x - -1.1555696519883618);
    }
    else if(time <= 290){
        intercept = -0.8871126147607252;
        slope = -1.0357902307980407 - -0.8871126147607252;
        return intercept + slope * (x - -0.8871126147607252);
    }
    else if(time <= 291){
        intercept = -1.0357902307980407;
        slope = -0.49946687753166547 - -1.0357902307980407;
        return intercept + slope * (x - -1.0357902307980407);
    }
    return -0.49946687753166547;
}

vector vensim_ode_func(real time, vector outcome, real inventory_adjustment_time, real minimum_order_processing_time){
    vector[6] dydt;  // Return vector of the ODE function

    // State variables
    real wip_with_p_noise = outcome[1];
    real backlog = outcome[2];
    real work_in_process_inventory = outcome[3];
    real inventory = outcome[4];
    real inventory_with_p_noise = outcome[5];
    real expected_order_rate = outcome[6];

    real manufacturing_cycle_time = 8;
    real safety_stock_coverage = 2;
    real desired_inventory_coverage = minimum_order_processing_time + safety_stock_coverage;
    real desired_inventory = desired_inventory_coverage * expected_order_rate;
    real adjustment_from_inventory = desired_inventory - inventory / inventory_adjustment_time;
    real desired_production = fmax(0, expected_order_rate + adjustment_from_inventory);
    real desired_wip = manufacturing_cycle_time * desired_production;
    real production_rate = work_in_process_inventory / manufacturing_cycle_time;
    real wip_adjustment_time = 2;
    real adjustment_for_wip = desired_wip - work_in_process_inventory / wip_adjustment_time;
    real desired_production_start_rate = desired_production + adjustment_for_wip;
    real production_start_rate = fmax(0, desired_production_start_rate);
    real work_in_process_inventory_dydt = production_start_rate - production_rate;
    real ran_norm1 = dataFunc__ran_norm1(time);
    real p_noise_scale = 0.1;
    real target_delivery_delay = 2;
    real desired_shipment_rate = backlog / target_delivery_delay;
    real maximum_shipment_rate = inventory / minimum_order_processing_time;
    real order_fulfillment_ratio = lookupFunc__table_for_order_fulfillment(maximum_shipment_rate / desired_shipment_rate);
    real shipment_rate = desired_shipment_rate * order_fulfillment_ratio;
    real order_fulfillment_rate = shipment_rate;
    real time_to_average_order_rate = 8;
    real time_step = 0.0625;
    real customer_order_rate = dataFunc__customer_order_rate(time);
    real order_rate = dataFunc__customer_order_rate(time);
    real process_corr_time = 3;
    real wip_wo_p_noise = work_in_process_inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm1(time);
    real wip_with_p_noise_change_rate = wip_wo_p_noise - wip_with_p_noise / process_corr_time;
    real wip_with_p_noise_dydt = wip_with_p_noise_change_rate;
    real inventory_dydt = production_rate - shipment_rate;
    real ran_norm2 = dataFunc__ran_norm2(time);
    real inventory_wo_p_noise = inventory * p_noise_scale * 2 - time_step / process_corr_time / time_step / process_corr_time ^ 0.5 * dataFunc__ran_norm2(time);
    real inventory_with_p_noise_change_rate = inventory_wo_p_noise - inventory_with_p_noise / process_corr_time;
    real inventory_with_p_noise_dydt = inventory_with_p_noise_change_rate;
    real change_in_exp_orders = dataFunc__customer_order_rate(time) - expected_order_rate / time_to_average_order_rate;
    real expected_order_rate_dydt = change_in_exp_orders;
    real backlog_dydt = order_rate - order_fulfillment_rate;

    dydt[1] = wip_with_p_noise_dydt;
    dydt[2] = backlog_dydt;
    dydt[3] = work_in_process_inventory_dydt;
    dydt[4] = inventory_dydt;
    dydt[5] = inventory_with_p_noise_dydt;
    dydt[6] = expected_order_rate_dydt;

    return dydt;
}
