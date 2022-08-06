### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### CHALLENGE Solutions


## set the workdirectory
getwd()   # the current directory
# between the () of setwd() fill in the directory where you perform the R-analysis.
# Save the scripts in a subfolder called "Scripts" and the data files in a folder called "Data"
setwd()  

## opening relevant libraries
source("Scripts/CH1_MLE_Functions.R")
source("Scripts/CH1_MLE_LR_Intervals_Functions.R")
source("Scripts/CH1_Boot_Functions.R")
source("Scripts/CH1_Challenge_FUNCTIONS.R")



##### QUESTION 1 - IMPORT and PLOT DATA
## 1.i) import the data
bg.data<-read.table('Data/Beer Game Subject 1.csv',header=T,sep=',')
attach(bg.data)
N2<-nrow(bg.data)
names.data<-names(bg.data)
names.data
# creating some easy shorthand arrays from the data.set
Week<-bg.data[,"Week"]
ACT.ORD<-bg.data[,"ACT.ORD"]
INV<-bg.data[,"INV"]
SL<-bg.data[,"SL"]
IO<-bg.data[,"INC.ORD"]
Est.Ord.dogan<-bg.data[,"MOD.OUT"]


## 1.ii) Create the model
# variables to be estimated
names.par.bg<-c("alpha","beta","theta","DINV")
#  the model  bg.model and its compact version bg.model.cmpct(pars,ett) are provided in the script challenge functions
# the model allows explicit noise in the individual's decsions but set this to zero (as in the Dogan model)
sd.ett<-0
ett<-rnorm(N2, sd=sd.ett)
# the model allows for different lowerbounds in order decision rule, should be set to zero
ord.lowerbound<-0
# the following are the data used in the model
bg.data.est<-cbind(ACT.ORD,IO,INV,SL,ett)  # subset of data used in the estimation

# now some tests
# we will use pars.test for testing throughout
pars.test<-c(0,0,0,0);names(pars.test)<-names.par.bg
pars.test[]<-c(0.1,0.1,0.1,0.1)
bg.model.cmpct(pars=pars.test,data=bg.data.est);Ot2;plot(Week,ACT.ORD,type="l");lines(Ot2,lty=2)
#note the results are identical to the following:
bg.model(alpha=pars.test["alpha"],beta=pars.test["beta"],theta=pars.test["theta"],DINV=pars.test["DINV"],IO=bg.data.est[,"IO"],INV=bg.data.est[,"INV"],SL=bg.data.est[,"SL"],ett=bg.data.est[,"ett"]);Ot2;plot(Week,ACT.ORD,type="l");lines(Ot2,lty=2)


## 1.iii) now we use the model to try to replicate the dogan results
# dogan estimates
alpha_d<-0.5
beta_d<-0.01
theta_d<-0.95
DINV_d<-1.96
par.dogan<-c(alpha_d,beta_d,theta_d,DINV_d)
names(par.dogan)<-names.par.bg
results.dg<-bg.model.cmpct(pars=par.dogan,data=bg.data.est)


## 1.iv) FIGURE CS.1.1 plotting and comparing
#plot layout settigns
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
ltype<-c(1,2,1)  # line types 
legend.nm<-c("ACT.ORD","Dogan Estimate","Model Results w Dogan pars")
lcolr<-c("blue","red","forestgreen")
plot(Week,ACT.ORD,pch=20,type="l",ylab="Orders",col=lcolr[1])
lines(Est.Ord.dogan,lty=2,col=lcolr[2],lwd=2)
lines(results.dg,lty=3,col=lcolr[3],lwd=2)
title(main="Estimation results Dogan (2007) with our model, using Dogan est.pars",cex.main=0.8)
legend("topleft",legend.nm,lty=ltype,col=lcolr,cex=0.5, bty="n")



## QUESTION 2 - Estimation
# model 2 is identical, but we use this to get an idea of how the results would look like if we use the same parameters as dogan
# note that there is a small difference in the sense that  Ot in model is bounded by zero during each iteration, 
# while Ot (Otr) in model.demo is bounded after all the over time operations. In practice here the difference does not matter. The imperfect
# formulation in model is so because the nls estimation wants to end with a declaration on the variable to be estimated


# we set the start away from and near to the expected values"
alpha_s<-0.5
beta_s<-0.2
theta_s<-0.8
DINV_s<-1
pars.test[]<-c(alpha_s,beta_s,theta_s,DINV_s)
start_l<-pars.test

# the parameter bounds for the parameter estimation
lower_b<-all_lower_b<-c(alpha=0,beta=0,theta=0,DINV=0)
upper_b<-all_upper_b<-c(alpha=1,beta=1,theta=1,DINV=Inf)
# in the nls need to specifiy data s as dataframe
bg.data.nls<-as.data.frame(bg.data.est)  

bg.nls.est<-nls(
  ACT.ORD ~ bg.model(alpha,beta,theta,DINV,IO,INV,SL,ett),
  start=start_l,
  data=bg.data.nls,
  algorithm="port",  # port should be used if bounds
  lower=lower_b,
  upper=upper_b,
  trace=F,
  nls.control(maxiter=200)
)
summary(bg.nls.est)

## testing for multiple starting points
# we use a custommade function to go through the multiiple 
# the function allows defining two startvalues for each of the parameters 
# it will report the results in a table (of 2^4=16 rows) including error reporting (e.g. matrix singularity problems)
r.alpha<-c(0.1,0.9)
r.beta<-c(0.1,0.9)
r.theta<-c(0.1,0.9)
r.DINV<-c(0.2,10)
bg.est.multiple.starts(par1lh=r.alpha,par2lh=r.beta,par3lh=r.theta,par4lh=r.DINV,data=bg.data.nls,y=ACT.ORD)



# we save the best estimate results
alpha_est<-summary(bg.nls.est)$par[1,1]
beta_est<-summary(bg.nls.est)$par[2,1]
theta_est<-summary(bg.nls.est)$par[3,1]
DINV_est<-summary(bg.nls.est)$par[4,1]
pars.bg.est<-c(alpha_est,beta_est,theta_est,DINV_est);names(pars.bg.est)<-names.par.bg

#now we compare the results with those by Dogan 2007

## Figure CS.2.1
#plot layout settigns
bg.model.demo(par.set1=par.dogan,par.set2=pars.bg.est,data=bg.data.est)

# note that plotting the fit can also be done with "predict:
plot(Week,ACT.ORD,type="l",xlim=c(0,50),ylim=c(0,25),lwd=1,col="red")
lines(predict(bg.nls.est),type="l", lty=2, lwd=2, col="blue")
# which yields the same results as our best estimate Ot2:
lines(Ot2,type="l", lty=3, lwd=2, col="forestgreen")


##  Table CS.2.1
summary(bg.nls.est)
bg.model.ressqe(pars=pars.bg.est,data=bg.data.est,dgf=4)
bg.model.ressqe(pars=par.dogan,data=bg.data.est,dgf=4)

## hypothesis tests
## t-tests and p values for a range of hypotheses tests on the WAld stats ###
bg.nls.est.summ<-summary(bg.nls.est)
t.test.p.val.fromSummaryStats(nlsstats="bg.nls.est.summ",par="alpha",mu.0=0,n=44)
t.test.p.val.fromSummaryStats(nlsstats="bg.nls.est.summ",par="beta",mu.0=0,n=44)
t.test.p.val.fromSummaryStats(nlsstats="bg.nls.est.summ",par="alpha",mu.0=1,n=44)
t.test.p.val.fromSummaryStats(nlsstats="bg.nls.est.summ",par="beta",mu.0=1,n=44)


## examing the residuals
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
with(bg.data.nls,plot(Week,residuals(bg.nls.est),ylab="(Est.Ord(t)-Act.Ord(t)) [orders/week]",type="o"))
lines(residuals(bg.nls.est),type="l")
abline(h=0,lty=2)
title(main="Residuals for the best estimate",cex.main=0.8)
sd2.res<-sd(residuals(bg.nls.est))^2



# we can also study dogan estimates forcing the optiimzation at that vlaue by setting the upper and lower boudnary equal to the starting point:
start_d<-par.dogan
bg.nls.est.dogan<-nls(
  #  bg.model1,
  ACT.ORD ~ bg.model(alpha,beta,theta,DINV,IO,INV,SL,ett),
  start=start_d,
  data=bg.data.nls,
  algorithm="port",  # port should be used if bounds
  lower=start_d,
  upper=start_d,
  trace=F,
  nls.control(maxiter=200)
)
summary(bg.nls.est.dogan)

## note: as an alternative to nls, nls2 is a brute force method with automated multiple starts, 
## start should be a two-row dataframe
## we dont do that here as it is not necessary, but worthwile exploring
# otherwise works as nls
bg.nls2.est<-nls2(
  ACT.ORD ~ bg.model(alpha,beta,theta,DINV,IO,INV,SL,ett),
  start=start_l,
  data=bg.data.nls,
  algorithm="port",  # port should be used if bounds
  lower=lower_b,
  upper=upper_b,
  trace=F,
)


### Quesstion 3. Confidence intervals

#for additional analysis we need to load more libraries (not all will be used)
library(nls2)
library(nlstools)
library(MASS)

## again, first AS method
#yields here same resutls as the nls method
overview(bg.nls.est)

## manual confidence intervals
## using the hessian

## the ll-based model
##manual AS - using hessian

# we need to return the hessian to use asymptotic likelihood 
## we first need to get an ll type of estimator to generate the hessian with optim
## Here we rewrite the estimation problem as a MLE problem


def.par<-pars.bg.est
sw.mod.par<-rep(1,length(def.par));names(sw.mod.par)<-names(def.par)
# the model bg.model.ll returns the (negative) ll which we can then use for optim:
# note again that our ll function actually produces -ll since optim  minimizes
bg.model.ll(pars.bg.est,y=ACT.ORD)
## let's try a reandom startpoint -ll should be much lower
pars.test[]<-c(alpha_s,beta_s,theta_s,DINV_s)
bg.model.ll(pars.test,y=ACT.ORD)


# now we have defined the LL, we can use optim (which produces the Hessian) to find the MLE and after that asymptotic confidence intervals.
# Return point estimates and SE based on the inverse of Hessian
# we first check whether we get indeed the same results as with nls:
start_l<-def.par<-pars.test
bg.data.nls  # used internally in the bg.model.ll
method<-"L-BFGS-B"
est.bg.optim.ll<-optim(par=start_l,bg.model.ll,hessian=TRUE,method=method,y=ACT.ORD,lower=lower_b,upper=upper_b)
## compare results with those in Table C.2.1: identical
est.bg.optim.ll
bg.nls.est
#yes..

## NOTE: results are also the same when we include the parameter sigma in the optimization
# this is done as follows
start_l.s2<-c(sigma2=1,start_l)
lower_b.s2<-c(sigma2=0.001,lower_b)
upper_b.s2<-c(sigma2=10,upper_b)
est.bg.optim.ll.s2<-optim(par=start_l.s2,bg.model.ll.s2,hessian=TRUE,method=method,y=ACT.ORD,lower=lower_b.s2,upper=upper_b.s2)
#earler we had derived this SD the MLE sigma is identical, once corrected for with one less df 
est.bg.optim.ll.s2
est.bg.optim.ll
bg.nls.est

## now we can run the manual interval
# Return point estimates and SE based on the inverse of Hessian
range<-1.96
conf.res.bg.mle<-anal.conf(est.bg.optim.ll,range,names.par.bg);conf.res.bg.mle$interval
conf.res.bg.mle.s2<-anal.conf(est.bg.optim.ll.s2,range,c("sigma2",names.par.bg));conf.res.bg.mle.s2$interval







# LR-based Confidence Intervals
N.data<-101
r.dat<-1:N.data
ln.L<-al<-bl<-matrix(nr=N.data,nc=N.data);
ln.L.2d<-a.2d<-b.2d<-matrix(nr=N.data,nc=N.data);
# relevant parameters are set below
## we adjust the function of the likelihood surface from the linear estimate here to focus on just the surface and itervals


## MLE AND DATA
nls.coeff<-coef(bg.nls.est)
par.est<-nls.coeff
rss<-round(sum(residuals(bg.nls.est)^2),4)
sigma20<-(1/N2)*rss
par.est.s2<-c(sigma20,par.est[1:4])
y<-ACT.ORD;   


## Confidence interval settings
alpha.conf<-0.05
df.1p<-1;df.2p<-2    # degrees of freedom is defined by (note: df=1 for profile, set in the function), 1 for univariate

seed<-100

## what to plot and over what range
par.1d<-c(1:4)
par.1d.range<-matrix(nrow=2,nc=length(par.1d))
par.1d.range[1,]<-par.est-c(0.45,0.2,1.25,5)  ## minimum
par.1d.range[2,]<-par.est+c(0.45,0.2,1.25,5)   ## maximum

#graph range
sw.same.LL.range<-1   # uses the same LL range for all parameters

# further details on graph formatting
sw.log<-c(0,0,0,0)
x.rtsj<-c(1,1,1,1)
var.names.base<-names.par.bg

# for Biviariate intervals (used later but the multiplot function)
# the 2d range is symmetric we define the range as the distance from the MLE that we want to plot
par.2d<-c(1,2) # selects the parameters to perform the bivariate on
par.2d.range<-c(1,1)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)     ## nonlinear scaling sampling for very large ranges
pl.theta<-50           # angle for plotting
pl.phi<-45            # angle for plotting

## Univariate
def.par<-par.est
sw.mod.par<-c(1,1,1,1);names(sw.mod.par)<-names(def.par)
df.1p<-1
N.data<-100;sw.profile<-0;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,filename="BG_MLE_LR_")
#now let's look at the profile intervals: starting first from the MLE and decrease e.g. tau.d - optimizing the other parameters 

# Profile
N.data<-80;sw.profile<-1;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,filename="BG_MLE_LR_")

## Bivariate
def.par<-par.est
sw.mod.par<-c(1,1,1,1);names(sw.mod.par)<-names(def.par)
N.data<-40;sw.profile<-0;sw.2dplot=1
par.2d<-c(1,2) # selects the parameters to perform the bivariate on
par.2d.range<-c(0.4,0.2)  ## we can adjust the range for the 2-D represnetation
LL.range.rel<- 5
pl.theta<-50
pl.phi<-45
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="BG_MLE_LR_")


# NOTES on predefined interval functions based on nls ############
# using the nls estimate (which was not possible in the application because nls did not converge) we can use some standard profiling methods
# we won't discuss these results but it is worthwile exploring the underlying methods and under what conditions you may want to rely on them
#profile with nls returns a likelihood profile
# The profile t-statistics is defined as the square root of change in sum-of-squares divided by residual standard error with an appropriate sign.
#confint uses a profile (or computes a new one) in order to give profile likelihood confidence intervals. Can get quadratic approximate confidence intervals (estimated standard errors) by sqrt(diag(vcov(mle2object))) (if you used mle2 for estimation) or sqrt(diag(solve(o$hessian))) (if you used optim directly). 
#Once you have these standard errors, multiply by the appropriate z-score (1.96 for 95% intervals, for example) to get size of deviation in either direction.
profile(bg.nls.est)
## automated likelihood ratio profiling of the results with specified interval
prl.AS<-profile(bg.nls.est,alpha=0.05)
plot(prl.AS, conf = c(99, 95, 90, 80, 50)/100,absVal = TRUE, ylab = NULL, lty = 2)
plot(prl.AS, conf = c(95)/100,absVal = TRUE, ylab = NULL, lty = 2)
#altenernatively one can use the following t-stats based profiling method
# NA's here just means the upper or lower bound has been reach which can be substituted for
confint(bg.nls.est)
confint(profile(bg.nls.est))  # based on asymptotic normality. For objects of class "lm" the direct formulae based on t values are used.
#  other approaches to obtain contour plots (LR method)
## we can also navigate the surface using predefined functions based on nls (that assume normal iid errors): nlsConfRegions and CountourRss
# 1.nlsContourRSS: bivariate surface plot
#The aim of these functions is to plot the residual sum of squares (RSS) contours which correspond to likelihood contours for a Gaussian model. 
#For each pair of parameters the RSS is calculated on a grid centered on the least squares estimates of both parameters, the other parameters being fixed to their least square estimates (hence assuming normal iid errors). 
#The contours of RSS values are then plotted for each pair of parameters. 
#For each pair of parameters, one of this contour corresponds to a section of the 95 percent Beale's confidence region in the plane of these parameters. 
## S3 method for class ’nlsContourRSS’
x<-nlsContourRSS(bg.nls.est, lseq = 10, exp = 2)
plot(x, nlev = 0, col = TRUE, col.pal = terrain.colors(100), ask = FALSE, useRaster = TRUE) ## S3 method for class ’nlsContourRSS’
# you will see that these resutls are identical to our bivariate surface plots ( in this case, because OLS = LL estimates for our LL function, which assumes iid normal as well!) 

# 2. nlsConfRegions
# Same principle. A sample of points in the 95 percent confidence region is computed according to Beale's criterion (Beale, 1960). 
#This region is also named the joint parameter likelihood region (Bates and Watts, 1988). 
#The method used consists in a random sampling of parameters values in a hypercube centered on the least squares estimate and rejecting the parameters values whose res
x<-nlsConfRegions(bg.nls.est, length= 1000, exp = 1)
x$bounds
plot(x) ## S3 method for class ’nlsContourRSS’



######### END NOTES  ########


#### 4. Asymptotic assumptions ###############################################

#examining normality
resmaf<-nlsResiduals(bg.nls.est) 

# Fig CS.4.1
par(mar=c(5, 5, 1, 1),mfrow=c(1,2))#
plot(resmaf, which=5) # Residuals distribution

# formal test on normality: Shapiro-Wilk
test.nlsResiduals(resmaf)    #Shapiro-Wilk
shapiro.test(residuals(bg.nls.est))  #Shapiro-Wilk, alternative

# CS4.2. crosschecking - overview of residual statistics
plot(resmaf)

## autocorrelation only
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
plot(resmaf, which=4) # autocorrelation

## NOTE: can performing similar analysis on Dogan (2007)
## similar results
resmaf.dogan<-nlsResiduals(bg.nls.est.dogan)
plot(resmaf.dogan, which=5) # Residuals distribution dogan estimate
test.nlsResiduals(resmaf.dogan)    #Shapiro-Wilk
shapiro.test(residuals(bg.nls.est.dogan))  #Shapiro-Wilk, alternative
plot(resmaf.dogan)
plot(resmaf.dogan, which=4) # autocorrelation


# 4.2 testing for autocovariance

#see eg.Barlas 1994, Dogan 2007,
# We can use a predefined autocorrelation function
# After analyzing the results with this we replicate the results manually
# produces the autocovariance series by lag k.
# where cov(k) = N ∑(e_i − avg(e))(ei_++  - avg(e))max.lag<-N2-1  #the max lag we are testing for should be less than the total number of data points
max.lag=N2-1
#We first subject the dogan estimate t othe analysis and compare results with his paper:
rkcov.dogan<-acf(residuals(bg.nls.est.dogan),max.lag,type="covariance");  # save results and plot
rkcov.dogan;  # print the results on the screen
rkcov.dogan[0] ;rkcov.dogan[1] ;rkcov.dogan[2]  # or just selected values, eg, lag = 0,1,2
#-> results are approximately the same

# now for our own estimate
rkcov<-acf(residuals(bg.nls.est),max.lag,type="covariance");  # save results and plot
rkcov;  # print the results on the screen
rkcov[0];rkcov[1];rkcov[2]  # or just selected values, eg, lag = 0,1,2
rk.aut.corr.acf<-acf(residuals(bg.nls.est),max.lag,type="correlation");rk.aut.corr.acf # autocorrelation, ie normalized to lag(0)
#rk<-acf(residuals(bg.nls.est),max.lag);


# we extract the autocorrelation, for Lag = 1 to N-1
rk.aut.corr<-rk.aut.corr.acf[[1]];  #this creates a list of autocorrelation from lag = 0 to Lmax
rk.aut.corr<-rk.aut.corr[-1]  # we eliminate lag = 0
#some statistics for testing purposes
length(rk.aut.corr); rk.aut.corr[1];rk.aut.corr[2]

# now we examine the test statistic for individual autocorrelation of lag k:
# We  test whether the autocorrelation values are significantly different from zero using the autocorrelation function variance estimator 
# see Barlas (1989), Dogan (2007) 

#t(k)=r(k)/sqrt(var(k)), where r(k) is the autocorrelation function value for lag k#Th We check test statistic values for lags k = 1 to 10 (ie 1/4 of the number of data points (Barlas et al., 2007))est.rk<-autcov.var.est(max.lag.analyse=10,N2=N2,aut.fv=aut.fv);test.rk[1];test.rk[2]
max.lag.analyse<-10
test.rk<-autcov.var.test(max.lag.analyse=max.lag.analyse,N2=N2,aut.fv=rk.aut.corr);test.rk[1];test.rk[2]; test.rk 




# 4.3 remove the autocorrelation

ACT.ORD.corr<-remove.auto.corr(nls.input=bg.nls.est,N2=N2,max.lag=max.lag,max.lag.analyse=max.lag.analyse,y=ACT.ORD,sd.marg=1.03)

bg.data.nls<-cbind(bg.data.nls,ACT.ORD.corr)

## first running multiple starts to see if we always get convergence
bg.est.multiple.starts(par1lh=r.alpha,par2lh=r.beta,par3lh=r.theta,par4lh=r.DINV,data=bg.data.nls,y=ACT.ORD.corr)
## need to select appropriate start point conform results of multiples starts
c.start.corr<-c(0.1,0.1,0.1,10)
pars.test[]<-c.start.corr[]
start_l<-pars.test

bg.nls.est.corr<-nls(
  ACT.ORD.corr ~ bg.model(alpha,beta,theta,DINV,IO,INV,SL,ett),
  start=start_l,
  data=bg.data.nls,
  algorithm="port",  # port should be used if bounds
  lower=lower_b,
  upper=upper_b,
  trace=F,
  nls.control(maxiter=200)
)

## multiple start points


# plot the results fot he AR(1) corrected results and the asymptotic intervas
summary(bg.nls.est.corr)

# These confint methods call the appropriate profile method, then find the confidence intervals by interpolation in the profile traces. 
#If the profile object is already available it should be used as the main argument rather than the fitted model object itself
mean(residuals(bg.nls.est.corr))
mean(residuals(bg.nls.est))
sd(residuals(bg.nls.est.corr))
sd(residuals(bg.nls.est))

#checking again the normal and autocorrelation statistics

#i)test on normality
# Shapiro-Wilkres 
resmaf.corr<-nlsResiduals(bg.nls.est.corr)
test.nlsResiduals(resmaf.corr)
shapiro.test(residuals(bg.nls.est.corr))

## autocorrelation
rk.aut.corr.acf.corr<-acf(residuals(bg.nls.est.corr),max.lag,type="correlation");rk.aut.corr.acf.corr # autocorrelation, ie normalized to lag(0)
rk.aut.corr.corr<-rk.aut.corr.acf.corr[[1]];  
rk.aut.corr.corr<-rk.aut.corr.corr[-1] 
test.rk.corr<-autcov.var.test(max.lag.analyse=max.lag.analyse,N2=N2,aut.fv=rk.aut.corr.corr);test.rk.corr[1];test.rk.corr[2]; test.rk.corr

# CS 4.5 plotting q histogram and autocorrelation
par(mfrow=c(1,2))
plot(resmaf.corr, which=5,cex.main=1)  #histogram of the residuals
acf(residuals(bg.nls.est.corr),max.lag.analyse,type="correlation")
title(main="Autocorrelation, corrected error terms",cex.main=1.2)
par(mfrow=c(1,1))


## plot the corrected data and estimate

dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
ltype<-c(1,1,2,2)  # line types 
legend.nm<-c("ACT.ORD","Estimate","ACT.ORD.corr","Estimate.corr")
lcolr<-c("blue","red","blue","red")
plot(Week,ACT.ORD,pch=20,type="l",ylab="Orders",col=lcolr[1],lwd=2,lty=ltype[1])
lines(predict(bg.nls.est),col=lcolr[2],lwd=2,lty=ltype[2])
lines(Week,ACT.ORD.corr,pch=20,type="l",col=lcolr[3],lwd=2,lty=ltype[3])
lines(predict(bg.nls.est.corr),col=lcolr[4],lwd=2,lty=ltype[4])
title(main="Comparing original with corrected data and estimates",cex.main=0.8)
legend("topleft",legend.nm,lty=ltype,col=lcolr,cex=0.5, bty="n")


## 4.4 rerunning the estimate and confidence intervals
# we now rerun the estimates and confidence intervals without any furhter comments
### First, we redo our estimation and confidence intervals, taking autocorrelation out
## redo confidence intervals
#i) AS Wald-test
overview(bg.nls.est)
overview(bg.nls.est.corr)

## AS manual, based on Hessian inversion
sw.mod.par<-c(1,1,1,1);names(sw.mod.par)<-names.par.bg
c.start.corr<-c(0.1,0.1,0.1,2)
start_l[]<-def.par[]<-c.start.corr[]
#bg.data.nls<-bg.data.nls.corr  # bg.data.nls is used internally in the bg.model.ll,while bg.data.nls.corr just adds the ACT.ORD.corr
method<-"L-BFGS-B"
est.bg.corr.optim.ll<-optim(par=start_l,bg.model.ll,hessian=TRUE,method=method,y=ACT.ORD.corr,lower=lower_b,upper=upper_b)
## checkfor the optimum with nls - higher ll?
par.est.corr<-summary(bg.nls.est.corr)$par[,"Estimate"]
est.bg.corr.optim.ll<-optim(par=par.est.corr,bg.model.ll,hessian=TRUE,method=method,y=ACT.ORD.corr,lower=lower_b,upper=upper_b)
est.bg.corr.optim.ll
# yes!
bg.nls.est.corr
est.bg.corr.optim.ll
range<-1.96
conf.res.bg.mle$interval
conf.res.bg.mle.corr<-anal.conf(est.bg.corr.optim.ll,range,names.par.bg);conf.res.bg.mle.corr$interval


## Setting the  data for interval estimation
par.est<-par.est.corr
y<-ACT.ORD.corr

## LR intervals
## Univariate
def.par<-par.est
sw.mod.par<-c(1,1,1,1);names(sw.mod.par)<-names(def.par)
df.1p<-1
N.data<-100;sw.profile<-0;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,filename="BG_MLE_LR_corr_")

# Profile
N.data<-80;sw.profile<-1;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,filename="BG_MLE_LR_corr_")

##Bivariate
def.par<-par.est
sw.mod.par<-c(1,1,1,1);names(sw.mod.par)<-names(def.par)
N.data<-40;sw.profile<-0;sw.2dplot=1
LL.range.rel<- 5
pl.theta<-50
pl.phi<-45
LL.multipar.plot(bg.model.ll,par.est=par.est,y=y,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="BG_MLE_LR_corr_")


### 5 BOOTSTRAPPING

########### 5. BOOTSTRAPPING #########

#2.b. First we use using the nlstools package to do bootstrapping
##The function nlsBoot uses non-parametric bootstrapping of mean centered residuals [3] 
#to obtain a chosen number (argument niter) of bootstrap esti- mates. 
#Ponctual estimations (resp. confidence intervals) of parameters are then provided using medians (resp. the 2.5 and 97.5 percentiles) of the bootstrap sample of estimates.
#duration of 2000 iterations of the above model is about 5 minutes)
boomaf <- nlsBoot(bg.nls.est, niter=2000)
summary(boomaf)
boomaf.corr <- nlsBoot(bg.nls.est.corr, niter= 2000)
summary(boomaf.corr)
plot(boomaf, type="pairs")
plot(boomaf.corr, type="pairs")

## now preparing for boot.ci
library(boot)

fit<-predict(bg.nls.est.corr)
res<-residuals(bg.nls.est.corr);res<-res[1:N2]  # just to make sure we have not more than we want
nls.corr.coeff<-coef(bg.nls.est.corr)
sw.mod.par[]<-c(1,1,1,1)

nb<-2000

#  (nonparametric) boot.ci function) - error resampling for dyn models
res.model<-boot(formula=bg.model.ll,data=res,statistic=param.nls.boot.bg,R=nb)  
# now we set the interval and report the results with boot.ci (multiple methods)
conf.level<-0.95
conf.tail<-1-conf.level
boot.ci(res.model,conf=conf.level,index=1);
boot.ci(res.model,conf=conf.level,index=2);
boot.ci(res.model,conf=conf.level,index=3);
boot.ci(res.model,conf=conf.level,index=4)


## graphically showing the results
plot.boot(boot.data=res.model,pl.par1=1,pl.par2=2,par.est=par.est,nsdq=3)

# note: this is what the percentile does:
conf.tail.h<-conf.tail/2
boot.ci(res.model,conf=conf.level,index=1, type='perc');
quantile( res.model$t[,1], c(conf.tail.h,1-conf.tail.h) )

# standard plot for boot
plot(res.model, index=2)

