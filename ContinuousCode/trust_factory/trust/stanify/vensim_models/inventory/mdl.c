/*(Sun Dec 11 09:49:32 2022) From inventory.mdl - C equations for the model */

#define _VDFX
#define VDFX

#include "simext.c"
static COMPREAL temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8
,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18
,temp19,temp20,temp21,temp22,temp23,temp24,temp25,temp26,temp27,temp28
,temp29,temp30,temp31,temp32,temp33,temp34,temp35,temp36,temp37,temp38
,temp39,temp40,temp41,temp42,temp43,temp44,temp45,temp46,temp47,temp48
,temp49,temp50,temp51,temp52,temp53,temp54,temp55,temp56,temp57,temp58
,temp59,temp60,temp61,temp62,temp63,temp64,temp65,temp66,temp67,temp68
,temp69,temp70,temp71,temp72,temp73,temp74,temp75,temp76,temp77,temp78
,temp79,temp80,temp81,temp82,temp83,temp84,temp85,temp86,temp87,temp88
,temp89,temp90,temp91,temp92,temp93,temp94,temp95,temp96,temp97,temp98
,temp99,temp100,temp101,temp102,temp103,temp104,temp105,temp106,temp107
,temp108,temp109,temp110,temp111,temp112,temp113,temp114,temp115,temp116
,temp117,temp118,temp119,temp120,temp121,temp122,temp123,temp124,temp125
,temp126,temp127,temp128,temp129,temp130,temp131 ;
static int sumind0,forind0 ; 
static int sumind1,forind1 ; 
static int sumind2,forind2 ; 
static int sumind3,forind3 ; 
static int sumind4,forind4 ; 
static int sumind5,forind5 ; 
static int sumind6,forind6 ; 
static int sumind7,forind7 ; 
static int simultid ;
#ifndef LINKEXTERN
#endif
unsigned char *mdl_desc()
{
return("(Sun Dec 11 09:49:32 2022) From inventory.mdl") ;
}

/* compute the model rates */
void mdl_func0()
{
double temp[10];
VGV->RATE[0] = 1.0 ;/* this is time */
/* Backlog */
 {
  VGV->lastpos = 1 ;
  VGV->RATE[1] = VGV->LEVEL[30]-VGV->LEVEL[28] ;
} /* Backlog */

/* Expected Order Rate */
 {
  VGV->lastpos = 2 ;
  VGV->RATE[2] = VGV->LEVEL[10] ;
} /* Expected Order Rate */

/* Inventory */
 {
  VGV->lastpos = 3 ;
  VGV->RATE[3] = VGV->LEVEL[34]-VGV->LEVEL[40] ;
} /* Inventory */

/* Process Noise */
 {
  VGV->lastpos = 4 ;
  VGV->RATE[4] = VGV->LEVEL[31] ;
} /* Process Noise */

/* Production Rate Stocked */
 {
  VGV->lastpos = 5 ;
  VGV->RATE[5] = VGV->LEVEL[34]+VGV->LEVEL[35] ;
} /* Production Rate Stocked */

/* Production Start Rate Stocked */
 {
  VGV->lastpos = 6 ;
  VGV->RATE[6] = VGV->LEVEL[36]+VGV->LEVEL[37] ;
} /* Production Start Rate Stocked */

/* Work in Process Inventory */
 {
  VGV->lastpos = 7 ;
  VGV->RATE[7] = VGV->LEVEL[36]-VGV->LEVEL[34] ;
} /* Work in Process Inventory */

} /* comp_rate */

/* compute the delays */
void mdl_func1()
{
double temp[10];
} /* comp_delay */

/* initialize time */
void mdl_func2()
{
double temp[10];
vec_arglist_init();
VGV->LEVEL[0] = VGV->LEVEL[23] ;
} /* init_time */

/* initialize time step */
void mdl_func3()
{
double temp[10];
/* a constant no need to do anything */
} /* init_tstep */

/* State variable initial value computation*/
void mdl_func4()
{
double temp[10];
/* Order Rate */
 {
  VGV->lastpos = 30 ;
  VGV->LEVEL[30] = VGV->LEVEL[13] ;
}
/* Backlog */
 {
  VGV->lastpos = 1 ;
  VGV->LEVEL[1] = VGV->LEVEL[30]*VGV->LEVEL[41] ;
}
/* Expected Order Rate */
 {
  VGV->lastpos = 2 ;
  VGV->LEVEL[2] = VGV->LEVEL[13] ;
}
/* Desired Inventory Coverage */
 {
  VGV->lastpos = 15 ;
  VGV->LEVEL[15] = VGV->LEVEL[27]+VGV->LEVEL[38] ;
}
/* Desired Inventory */
 {
  VGV->lastpos = 14 ;
  VGV->LEVEL[14] = VGV->LEVEL[15]*VGV->LEVEL[2] ;
}
/* Inventory */
 {
  VGV->lastpos = 3 ;
  VGV->LEVEL[3] = VGV->LEVEL[14] ;
}
/* Process Noise */
 {
  VGV->lastpos = 4 ;
  VGV->LEVEL[4] = 0 ;
}
/* Adjustment from Inventory */
 {
  VGV->lastpos = 9 ;
  VGV->LEVEL[9] = (VGV->LEVEL[14]-VGV->LEVEL[3])/VGV->LEVEL[24] ;
}
/* Desired Production */
 {
  VGV->lastpos = 18 ;
  VGV->LEVEL[18] = MAX(0,VGV->LEVEL[2]+VGV->LEVEL[9]) ;
}
/* Desired WIP */
 {
  VGV->lastpos = 21 ;
  VGV->LEVEL[21] = VGV->LEVEL[25]*VGV->LEVEL[18] ;
}
/* Work in Process Inventory */
 {
  VGV->lastpos = 7 ;
  VGV->LEVEL[7] = VGV->LEVEL[21] ;
}
/* Production Rate */
 {
  VGV->lastpos = 34 ;
  VGV->LEVEL[34] = VGV->LEVEL[7]/VGV->LEVEL[25]*MAX(0,1.000000+VGV->LEVEL[4
]) ;
}
/* Production Rate Stocked */
 {
  VGV->lastpos = 5 ;
  VGV->LEVEL[5] = VGV->LEVEL[34] ;
}
/* Adjustment for WIP */
 {
  VGV->lastpos = 8 ;
  VGV->LEVEL[8] = (VGV->LEVEL[21]-VGV->LEVEL[7])/VGV->LEVEL[46] ;
}
/* Desired Production Start Rate */
 {
  VGV->lastpos = 19 ;
  VGV->LEVEL[19] = MAX(0,VGV->LEVEL[18]+VGV->LEVEL[8]) ;
}
/* Production Start Rate */
 {
  VGV->lastpos = 36 ;
  VGV->LEVEL[36] = MAX(0,VGV->LEVEL[19]) ;
}
/* Production Start Rate Stocked */
 {
  VGV->lastpos = 6 ;
  VGV->LEVEL[6] = VGV->LEVEL[36] ;
}
} /* comp_init */

/* State variable re-initial value computation*/
void mdl_func5()
{
double temp[10];
} /* comp_reinit */

/*  Active Time Step Equation */
void mdl_func6()
{
double temp[10];
} /* comp_tstep */
/*  Auxiliary variable equations*/
void mdl_func7()
{
double temp[10];
/* Desired Inventory Coverage */
 {
  VGV->lastpos = 15 ;
  VGV->LEVEL[15] = VGV->LEVEL[27]+VGV->LEVEL[38] ;
}
/* Desired Inventory */
 {
  VGV->lastpos = 14 ;
  VGV->LEVEL[14] = VGV->LEVEL[15]*VGV->LEVEL[2] ;
}
/* Adjustment from Inventory */
 {
  VGV->lastpos = 9 ;
  VGV->LEVEL[9] = (VGV->LEVEL[14]-VGV->LEVEL[3])/VGV->LEVEL[24] ;
}
/* Desired Production */
 {
  VGV->lastpos = 18 ;
  VGV->LEVEL[18] = MAX(0,VGV->LEVEL[2]+VGV->LEVEL[9]) ;
}
/* Desired WIP */
 {
  VGV->lastpos = 21 ;
  VGV->LEVEL[21] = VGV->LEVEL[25]*VGV->LEVEL[18] ;
}
/* Adjustment for WIP */
 {
  VGV->lastpos = 8 ;
  VGV->LEVEL[8] = (VGV->LEVEL[21]-VGV->LEVEL[7])/VGV->LEVEL[46] ;
}
/* Change in Exp Orders */
 {
  VGV->lastpos = 10 ;
  VGV->LEVEL[10] = (VGV->LEVEL[13]-VGV->LEVEL[2])/VGV->LEVEL[43] ;
}
/* Correlation Time */
 {
  VGV->lastpos = 11 ;
  VGV->LEVEL[11] = VGV->LEVEL[42]*VGV->LEVEL[12] ;
}
/* Production Rate */
 {
  VGV->lastpos = 34 ;
  VGV->LEVEL[34] = VGV->LEVEL[7]/VGV->LEVEL[25]*MAX(0,1.000000+VGV->LEVEL[4
]) ;
}
/* Desired minus Shadow PR */
 {
  VGV->lastpos = 16 ;
  VGV->LEVEL[16] = VGV->LEVEL[34]-VGV->LEVEL[5] ;
}
/* Desired Production Start Rate */
 {
  VGV->lastpos = 19 ;
  VGV->LEVEL[19] = MAX(0,VGV->LEVEL[18]+VGV->LEVEL[8]) ;
}
/* Production Start Rate */
 {
  VGV->lastpos = 36 ;
  VGV->LEVEL[36] = MAX(0,VGV->LEVEL[19]) ;
}
/* Desired minus Shadow PSR */
 {
  VGV->lastpos = 17 ;
  VGV->LEVEL[17] = VGV->LEVEL[36]-VGV->LEVEL[6] ;
}
/* Desired Shipment Rate */
 {
  VGV->lastpos = 20 ;
  VGV->LEVEL[20] = VGV->LEVEL[1]/VGV->LEVEL[41] ;
}
/* Maximum Shipment Rate */
 {
  VGV->lastpos = 26 ;
  VGV->LEVEL[26] = VGV->LEVEL[3]/VGV->LEVEL[27] ;
}
/* Order Fulfillment Ratio */
 {
  VGV->lastpos = 29 ;
  VGV->LEVEL[29] = TABLE(&VGV->TAB[0],VGV->LEVEL[26]/VGV->LEVEL[20
]) ;
}
/* Shipment Rate */
 {
  VGV->lastpos = 40 ;
  VGV->LEVEL[40] = VGV->LEVEL[20]*VGV->LEVEL[29] ;
}
/* Order Fulfillment Rate */
 {
  VGV->lastpos = 28 ;
  VGV->LEVEL[28] = VGV->LEVEL[40] ;
}
/* Order Rate */
 {
  VGV->lastpos = 30 ;
  VGV->LEVEL[30] = VGV->LEVEL[13] ;
}
/* White Noise */
 {
  VGV->lastpos = 45 ;
  VGV->LEVEL[45] = 4.890000*POWER(VGV->LEVEL[12],0.500000)*VGV->LEVEL[33
]*VGV->LEVEL[32] ;
}
/* white minus process */
 {
  VGV->lastpos = 44 ;
  VGV->LEVEL[44] = VGV->LEVEL[45]-VGV->LEVEL[4] ;
}
/* process noise change rate */
 {
  VGV->lastpos = 31 ;
  VGV->LEVEL[31] = VGV->LEVEL[44]/VGV->LEVEL[11] ;
}
/* Production Rate Stocked Change Rate */
 {
  VGV->lastpos = 35 ;
  VGV->LEVEL[35] = VGV->LEVEL[16]/VGV->LEVEL[42] ;
}
/* Production Start Rate Stocked Change Rate */
 {
  VGV->lastpos = 37 ;
  VGV->LEVEL[37] = VGV->LEVEL[17]/VGV->LEVEL[42] ;
}
} /* comp_aux */
int execute_curloop() {return(0);}
static void vec_arglist_init()
{
}
void VEFCC comp_rate(void)
{
mdl_func0();
}

void VEFCC comp_delay(void)
{
mdl_func1();
}

void VEFCC init_time(void)
{
mdl_func2();
}

void VEFCC init_tstep(void)
{
mdl_func3();
}

void VEFCC comp_init(void)
{
mdl_func4();
}

void VEFCC comp_reinit(void)
{
mdl_func5();
}

void VEFCC comp_tstep(void)
{
mdl_func6();
}

void VEFCC comp_aux(void)
{
mdl_func7();
}

