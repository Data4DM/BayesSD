# Exercise for Chapter 3
# From Fox, Nie, and Byrnes SEM package for R version 3.1-3

# Provide the moments
R.DHP <- readMoments(diag=FALSE, names=c("ROccAsp", "REdAsp", "FOccAsp", 
                                         "FEdAsp", "RParAsp", "RIQ", "RSES", "FSES", "FIQ", "FParAsp"))
.6247     
.3269  .3669       
.4216  .3275  .6404
.2137  .2742  .1124  .0839
.4105  .4043  .2903  .2598  .1839
.3240  .4047  .3054  .2786  .0489  .2220
.2930  .2407  .4105  .3607  .0186  .1861  .2707
.2995  .2863  .5191  .5007  .0782  .3355  .2302  .2950
.0760  .0702  .2784  .1988  .1147  .1021  .0931 -.0438  .2087

# Specify the model using a symbolic ram notation

model.dhp <- specifyModel()
RParAsp  -> RGenAsp, gam11,  NA
RIQ      -> RGenAsp, gam12,  NA
RSES     -> RGenAsp, gam13,  NA
FSES     -> RGenAsp, gam14,  NA
RSES     -> FGenAsp, gam23,  NA
FSES     -> FGenAsp, gam24,  NA
FIQ      -> FGenAsp, gam25,  NA
FParAsp  -> FGenAsp, gam26,  NA
FGenAsp  -> RGenAsp, beta12, NA
RGenAsp  -> FGenAsp, beta21, NA
RGenAsp  -> ROccAsp,  NA,     1
RGenAsp  -> REdAsp,  lam21,  NA
FGenAsp  -> FOccAsp,  NA,     1
FGenAsp  -> FEdAsp,  lam42,  NA
RGenAsp <-> RGenAsp, ps11,   NA
FGenAsp <-> FGenAsp, ps22,   NA
RGenAsp <-> FGenAsp, ps12,   NA
ROccAsp <-> ROccAsp, theta1, NA
REdAsp  <-> REdAsp,  theta2, NA
FOccAsp <-> FOccAsp, theta3, NA
FEdAsp  <-> FEdAsp,  theta4, NA

# Fit the model and provide a summary

sem.dhp.1 <- sem(model.dhp, R.DHP, 329,
  fixed.x=c('RParAsp', 'RIQ', 'RSES', 'FSES', 'FIQ', 'FParAsp'))
summary(sem.dhp.1)



