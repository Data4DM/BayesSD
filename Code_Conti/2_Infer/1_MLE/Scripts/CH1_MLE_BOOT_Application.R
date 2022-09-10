### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

###      Application in the main document: Service Quality model (ref: Oliva and Sterman 2001; Dogan 2007)  ########

####  Preparatory work ######

## set the workdirectory
getwd()   # the current directory
# between the () of setwd() fill in the directory where you perform the R-analysis.
# Save the scripts in a subfolder called "Scripts" and the data files in a folder called "Data"
setwd()   

#0.1.Call other scripts and libraries
source("Scripts/CH1_MLE_Functions.R")
source("Scripts/CH1_MLE_LR_Intervals_Functions.R")
source("Scripts/CH1_Boot_Functions.R")

##0.2 opening relevant libraries
library(nlstools)
library(boot)
library(nls2)
library(MASS)


## for variable names follow Dogan 2007.
# Corresponding variable names in Oliva and Sterman 2001 on the right
# sc: Required Service Capacity Ct*
# TPODt: Desired time per order Tt*
# CO: Incoming Orders Ot
# SC: Service Capacity Ct
# TPOt: Time per order Tt
# wp: work pressure p
# N2: number of datapoints

#0.4.uploading and organizing the data
reg.data<-read.table('Data/ServiceQualityData2.csv',header=T,sep=',')
N2<-nrow(reg.data)
Week<-as.matrix(reg.data[1:N2,"Week"])
ACT.TPO<-as.matrix(reg.data[1:N2,"ACT.TPO"])  # actual time per order
CO<-as.matrix(reg.data[1:N2,"CO"])  # incomining orders Ot
SC<-as.matrix(reg.data[1:N2,"SC"])  # actual service capacity Ct
reg.data<-reg.data[1:N2,]
attach(reg.data)
names.data<-names(reg.data)
names.data



###### 4.1 The Model ####


#### 0.4  FIGURE 3 - plot the main data
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,2))# Adjust the margin of plot (bottom,left,top,right)
plot(Week,ACT.TPO,pch=16,type="b",
     xlab=expression(bold("Week")),
     ylab=expression(bold("[hrs/std. order]"))
     )
title(main="Time per Order", col.main="black", font.main=2)
legend("topleft",c("Time per Order (TPO)"),lty=1,pch=16,cex=0.6)
plot(Week,CO,type="l",lty=1,
     xlab=expression(bold("Week")),
     ylab=expression(bold(" [std. orders/week]")),
     ylim=c(min(min(SC),min(CO)),max(max(SC),max(CO)))
     )
lines(Week,SC,type="l",lty=2)
title(main="Orders and Capacity ", col.main="black", font.main=2)
legend("topleft",c("Incoming Orders (CO)","Service Capacity (SC)"),lty=c(1,2),cex=0.6)
dev.copy2pdf(file = "BookChapterOutput/OS1_data.pdf")
##end 0.4 #


# 1.a. parameters  to be estimated 
var.names.base<-c("alpha","tau.td","tau.ti","TPOD0")

## setting up for comparison paramater estimates attained in earlier studies
#oliva and sterman (2001) results
alpha_o<--0.64
tau.td_o<-18.83
tau.ti_o<-8.14e6
TPOD0_o<-1.08
par.oliva<-c(alpha_o,tau.td_o,tau.ti_o,TPOD0_o)
#dogan (2007) results
alpha_d<-alpha<--0.6
tau.td_d<-tau.td<-12.48
tau.ti_d<-tau.ti<-8.56e4
TPOD0_d<-TPOD0<-1.07
par.dogan<-c(alpha_d,tau.td_d,tau.ti_d,TPOD0_d)
# thesis Rogelio Oliva
par.opt.oliva.thesis<-c(-0.6393,18.7321,814000,1.0758)
#naming the pars
names(par.dogan)<-names(par.oliva)<-names(par.opt.oliva.thesis)<-var.names.base

#2a Basic Estimation
#See the Appendix Fox and Weisberg (2011) "An R Companion to Applied Regression". Following Weisberg (2005, Chap. 11), the general nonlinear regression model is
# y = E(y|x) +e = m(x,theta)+e. This model posits that the mean E(y|x) depends on x through the kernel mean function m(x; ),
#where the predictor x has one or more components and the parameter vector also has one or
#more components.
#The model further assumes that the errors are independent with variance sigma^2/w, where the w are known nonnegative
#weights, and sigma^2 is a generally unknown variance to be estimated.2 In most applications w = 1 for all observations.
# we will write: 
#The nls function can be used to estimate . as the values that minimize the residual sum of squares,S(theta)=SUM[w|y-m(theta,x)^]2
# Unlike the lin.ls the solution cannot be found through basic matrix multiplication and we use an iterative procedure
#1. supply an initial guess (theta0 - this is important). One could set the sum of the derivatives to zero, assuming zero error (basically MLE)
#2. At iteration j: we estimate starting from the new combinations if Sj<Sj-1 by at least the predetermined abound we mo
#-> key issues are: i) the convergence algorithm (see also Train 2003) (Gauss-Newton, etc..); ii) potential local minima;. Hence w need multiple starts and other approaches
# iii) potential ongoing forever, hence we need to set iteration limits and tolerances about minimum improvements.

#1b Estimation using NLS ..nonconvergence
#using only the relevant data from the original dataset
names(reg.data)  
reg.data.nls<-subset(reg.data, select=c(Week,ACT.TPO,SC,CO))  
names(reg.data.nls)



######## 4.2 model and estimation  ######

# general parameters for the models
seed<-100
sw.tau.equal<-0 # needed for later expirementation with estimation
sigma2<-1
tau.p<-1    
tau.f<-0.1

## first using regular NLS

# first we define variables for the parameters that we will be using throughout to vary the number of parameters to be estimated
# defining them
sw.mod.par.all<-sw.mod.par.none<-sw.mod.par<-def.par<-lower_b_def<-upper_b_def<-start_l<-rep(NA,length(var.names.base)) 
names(sw.mod.par.all)<-names(sw.mod.par.none)<-names(sw.mod.par)<-names(def.par)<-names(lower_b_def)<-names(upper_b_def)<-names(start_l)<-var.names.base 

# NOw the default settings

# setting the lower and upper boundaries
sw.mod.par.all[]<-sw.mod.par[]<-1 # sw.mod.par identifies what parameter will be varied in the estimation (used later, done internally)
sw.mod.par.none[]<-0
def.par[]<-0    # sets default settingsidentifies for parameters that will be not varied in the estimation (used later, done internally)

lower_b_def[]<-c(-1,0,0,0)
upper_b_def[]<-c(0,Inf,Inf,1.5)
lower_b<-all_lower_b<-lower_b_def # 
upper_b<-all_upper_b<-upper_b_def 

#manually experimenting with different starting points  - examples
start_l[]<-c(-1,1e+06,1e+06,1)
f.os.nls.est.ll(start_l=start_l)
start_l[]<-c(-0.627565,1.18615e+06,61914.7,1.05042)
f.os.nls.est.ll(start_l=start_l)
start_l[]<-c(alpha,tau.td,tau.ti,TPOD0)
f.os.nls.est.ll(start_l=start_l)
# no convergence

## end 1.b

# using another method in an attempt to find the global optimum
# Method "L-BFGS-B" is that of Byrd et. al. (1995) which allows box constraints, that is each variable can be given a lower and/or upper bound. The initial value must satisfy the constraints. This uses a limited-memory modification of the BFGS quasi-Newton method. 
# If non-trivial bounds are supplied, this method will be selected, with a warning.

#2a a first attempt

##Fixed initialization settings for all
## we ignore sigma (calculate this internally) for now but allow for its inclusion in the estimation
start_l[]<-c(-1,1e+06,1e+06,1)  ## an arbitrary start point
sw.mod.par[]<-sw.mod.par.all
def.par[]<-start_l
est.ll <-os.mle.ll(par=start_l,sw.mod.par=sw.mod.par,def.par=def.par,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
est.ll

## with multiple starts ###
method<-"L-BFGS-B"
start.par.ll.set1<-rbind(c(-0.64,48,48,1.05),c(-0.64,10,10000,1.05),c(-0.64,10000,24,1.05),c(-0.64,10000,10000,1.05),c(-0.7,48,10000,1.01))
start.par.ll.set2<-rbind(c(-0.5,10,10,1),c(-0.5,10,99000,1),c(-0.5,99000,10,1),c(-0.5,10,9900,1))
start.par.ll.set3<-rbind(c(-0.75,10,10,1.4),c(-0.75,10,99000,1.4),c(-0.75,99000,10,1.5),c(-0.75,10,99000,1.4))
start.par.ll.set<-rbind(start.par.ll.set1,start.par.ll.set2,start.par.ll.set3)
par.method<-rep(method,length(start.par.ll.set[,1]))
mult.starts.results<-est.os.ll.mult.starts(start.par.ll.set=start.par.ll.set,par.method=par.method,lowerb=lower_b,upperb=upper_b,y=ACT.TPO);mult.starts.results;mult.start.ll.results


# compare random and OS01's estimation to MLE, we run the ll.model with with that papers' estimates
test.par<-c(1,1,1,1);names(test.par)<-names(par.oliva)
est.ll.fix.test<-os.model.ll(par=test.par,y=ACT.TPO);est.ll.fix.test
est.ll.os01  <- os.mle.ll(par=par.oliva,sw.mod.par=sw.mod.par,def.par=def.par,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b);est.ll.os01
est.ll.fix.os01<-os.model.ll(par=par.oliva,y=ACT.TPO);est.ll.fix.os01
# LL for oliva results LL is smaller

## setting the optimal values
par.opt<-mult.starts.results$os.ll.mle
est.ml<-mult.starts.results$os.ll

# check results - just cross checking that we can reproduce the results with the same start 
os.model.ll(par.opt,y=ACT.TPO)  # 
est.ll.optim <-os.mle.ll(par=mult.starts.results$os.ll.start,sw.mod.par=sw.mod.par,def.par=def.par,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b);est.ll.optim


### Summary stats - Table 4.1

#re estimation through regular NLS, setting the boundary to zero
#par.test<-par.oliva
par.test<-par.opt
start_l[]<-par.test
lower_b<-upper_b<-start_l
os.nls.MLE.est<-f.os.nls.est.ll(start_l=start_l);os.nls.MLE.est

# custommade residual statistics
#names.os.ll<-c("sigma2","alpha1","tau.td1","tau.ti1")
sse.opt<-os.model.ressqe(par=par.opt,CO,SC,ACT.TPO,dgf=4);sse.opt
sse.os01<-os.model.ressqe(par=par.oliva,CO,SC,ACT.TPO,dgf=4);sse.os01
sse.dg07<-os.model.ressqe(par=par.dogan,CO,SC,ACT.TPO,dgf=4);sse.dg07
#for reference (not listed in the table)
sse.othesis<-os.model.ressqe(par=par.opt.oliva.thesis,CO,SC,ACT.TPO,dgf=4);sse.othesis

#### END Table 4.1

## For the appendix graph comparing results with OS and Dogan
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))# Adjust the margin of plot (bottom,left,top,right)
ltype<-c(1,2,3,4)
lwidth<-c(1,2,2,2)
lcolr<-c("blue","black","forestgreen","red")
legend.nm2<-c("ACT.Time PO","Dogan Estimate","Oliva Estimate","Our Estimate")
PWeek<-Week[1:N2]
os.model.demo(CO,SC,ACT.TPO)
dev.copy2pdf(file = "BookChapterOutput/OS1_COMPARE_EST_Appendix.pdf")
## END Appendix graph

### Plot results FIGURE 4
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))# Adjust the margin of plot (bottom,left,top,right)
res.F4.2<-os.model(par.opt[1],par.opt[2],par.opt[3],par.opt[4],CO,SC)  # we run the model to save the esimtate orders
plot(Week,ACT.TPO,pch=16,type="l",lty=1,lwd=2,
     xlab=expression(bold("Week")),
     ylab=expression(bold("[hrs/std. order]")),
     xlim=c(52,104),
     ylim=c(0.9,1.15)
)
title(main="Time per Order & Desired time per Order", col.main="black", font.main=2)
lines(Week,TPOt,type="l",lty=3,lwd=2)
lines(Week,TPODt,type="l",lty=2,lwd=2)
legend("topleft",c("Actual Time per Order (ACT.TPOt)","Estimated Time Per Order (TPOt)","Estimated Desired Time per Order (TPODt)"),lty=c(1,2,3),cex=0.6)
text(90,0.95,paste("MLE = ",round(est.ml,3),sep=""))
dev.copy2pdf(file = "BookChapterOutput/OS1_FIG4_MLE.pdf")




## t-tests and p values for a range of hypotheses tests on the WAld stats ###
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="alpha",mu.0=0,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="alpha",mu.0=-1,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="tau.td",mu.0=0,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="tau.ti",mu.0=0,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="TPOD0",mu.0=0,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="tau.td",mu.0=1e3,n=48)
t.test.p.val.fromSummaryStats(nlsstats="os.nls.MLE.est",par="tau.ti",mu.0=1e6,n=48)

## comparing tau.ti and tau.td means.
tau.mu.test<-c(os.nls.MLE.est$par["tau.td","Estimate"],os.nls.MLE.est$par["tau.ti","Estimate"])
tau.sd.test<-c(os.nls.MLE.est$par["tau.td","Std. Error"],os.nls.MLE.est$par["tau.ti","Std. Error"])
t.test.p.val.general(mu=tau.mu.test,sd=tau.sd.test,n=48,mu.0=0) 


############### 4.3 CONFIDENCE INTERVAL ##################

# 4.3.1 Asymptotic (AS) condidence intervals

###  WALD AS - using t.test
# diret exectuation using fixed bounds as before
# we need to run regular nls with zero bounds
nls.and.summary(par=par.opt,y=ACT.TPO,par_lower=0,par_upper=0,sw_zerobound=1)

## Manual AS - using hessian
# now we have found the MLE, we can use optim (which produces the Hessian) to find the asymptotic confidence intervals.
# Return point estimates and SE based on the inverse of Hessian
sw.ll.est<-1
lower_b<-lower_b_def
upper_b<-upper_b_def
start_opt<-mult.starts.results$os.ll.start;names(start_opt)<-var.names.base
est.ll.optim<-optim(par=par.opt,os.model.ll,hessian=TRUE,method=method,y=ACT.TPO,lower=lower_b,upper=upper_b)
range<-1.96
conf.res.mle<-anal.conf(model=est.ll.optim,range=range,parnames=var.names.base);conf.res.mle
conf.res.mle$interval

## deriving the confidence intervals with hessian inversion depending on the starting point sometimes lead to "NaNs" for tau.ti (meaning infinite conf bounds)
## this is because the flatness of the tau.ti at the MLE. A small difference in the found optimum may lead to this results
# This can be interpreted as infinite conf intervals and is consistent with other results
## alternatively you can  differ the starting points and make sure the final values are consistent with the mle



#### 4.3.2 LR intervals

# we run our custom defined function "LL.multipar.plot" which performs univariate, profile and bivariate interfal search
# we set the start and limits according to the optimization from the expected values" based o
# pref with the wide conf intervals for bootstrapping?

###### we can use the LR profile to plot residuals
## prep parameters
sw.ll.est<-1     # in the estimation (os.model.ll) we want to return the LL and not the TPO* data series (see)
## Confidence interval settings
alpha.conf<-0.05    # 1-confidence level
df.1p<-1;df.2p<-2    # degrees of freedom is defined by (note: df=1 for profile, set in the function), 1 for univariate
rss<-round(sum(residuals(os.nls.est)^2),4)
sigma20<-(1/N2)*rss  # we don't actually need to use the sigma^2

## what to plot and over what range
par.1d<-c(1:4)
par.1d.range<-matrix(nrow=2,nc=length(par.1d))
par.1d.range[1,]<-par.opt-c(0.2,par.opt[2]-0.1,par.opt[3]-0.1,0.075)  ## minimum
par.1d.range[2,]<-par.opt+c(0.2,1.25e3-par.opt[2],1.25e3-par.opt[3],0.075)  ## maximum

#graph settings
sw.same.LL.range<-1
LL.range.rel<- 5
sw.2dplot=0
# further details on graph formatting
sw.log<-c(0,1,1,0)
x.rtsj<-c(1,2,2,1)

# for Biviariate intervals (used later but the multiplot function)
# the 2d range is symmetric we define the range as the distance from the MLE that we want to plot
par.2d<-c(1,2) # selects the parameters to perform the bivariate on
par.2d.range<-c(1,1)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)     ## nonlinear scaling sampling for very large ranges
pl.theta<-50           # angle for plotting
pl.phi<-45            # angle for plotting


## Figure 5 (top 4) : Univariate
def.par[]<-par.opt
sw.mod.par[]<-1
df.1p<-1
N.data<-120;sw.profile<-0;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d = c(1,2),par.2d.range = c(1,1),alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="FIG5_MLE_LR_")
# can also experiment with larger outside interval for  
par.1d.range[2,]<-par.opt+c(0.2,1.25e5-par.opt[2],1.25e5-par.opt[3],0.075)  ## maximum
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d = c(1,2),par.2d.range = c(1,1),alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="FIG5_MLE_LR_")
## note: the "bounded" intervals of 1250 and 125 in this case for tau.td and tau.ti are a function of 
## the boundaries in exploring the space and must be considered infinite
par.1d.range[2,]<-par.opt+c(0.2,1.25e3-par.opt[2],1.25e3-par.opt[3],0.075)  ## reset the maximum

# Figure 5 (bottom 4): Profile
#now let's look at the profile intervals: starting first from the MLE and decrease e.g. tau.d - optimizing the other parameters 

N.data<-80;sw.profile<-1;sw.2dplot=0
LL.range.rel<- 5
method<-method
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="FIG5_MLE_LR_")
# the results can be unstable for very low taui (as alpha_opt is not a good starting point for profiling in that case. 
par.1d.range[1,3]<-2  ## a bit higher minimum for tau.ti (Alternativly, work with more dynamic starting points)
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="FIG5_MLE_LR_")
par.1d.range[1,3]<-0.1  ## back to the original minimum

## reporting results for estimates by O&S 2001 & Dogan 2007
nls.and.summary(par=par.oliva,y=ACT.TPO,par_lower=0,par_upper=0,sw_zerobound=1)

#univariate
def.par[]<-par.opt
sw.mod.par[]<-1
df.1p<-1
N.data<-100;sw.profile<-0;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(os.model.ll,par.est=par.oliva,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="OS_LR_")
# Profile
N.data<-80;sw.profile<-1;sw.2dplot=0
LL.range.rel<- 5
LL.multipar.plot(os.model.ll,par.est=par.oliva,y=ACT.TPO,sigma2=1,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=0,sw.profile=sw.profile,filename="OS_LR_")



##################### 4.4 Validity of Asymptotic Assumptions #############


# 4.4a examining normality
# we want to use again the nls results for the MLE (zero bound)
nls.and.summary(par=par.opt,y=ACT.TPO,par_lower=0,par_upper=0,sw_zerobound=1)
resmaf<-nlsResiduals(os.nls.est) 

# histogram of frequency error distribution
par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
plot(resmaf, which=5) 

#plotting the fit and residuals
par(mfrow=c(1,1));
plot(resmaf,which=1)
abline(h=0,lty=2)

# Overview of residual statistics, including q-q plot
plot(resmaf)


# formal test on normality: Shapiro-Wilk
shapiro.test(residuals(os.nls.est))  #Shapiro-Wilk
# or:
test.nlsResiduals(resmaf)    


# 4.4b. testing for autocovariance

## extract plot on 1 lag autocorrelation
plot(resmaf, which=4) # autocorrelation

# formal autocorrelation analysis, see e.g. Barlas 1994, Dogan 2007, 
# We can use a predefined autocorrelation function acf
# After analyzing the results with this we manually develop a test-statistic
# produces the autocovariance series by lag k.
# where cov(k) = N ∑(e_i − avg(e))(ei_++  - avg(e))max.lag<-N2-1  #the max lag we are testing for should be less than the total number of data points
max.lag=N2-1

rkcov<-acf(residuals(os.nls.est),max.lag,type="covariance");  # save results and plot
rkcov;  # print the results on the screen
rkcov[0];rkcov[1];rkcov[2]  # or just selected values, eg, lag = 0,1,2
rk.aut.corr.acf<-acf(residuals(os.nls.est),max.lag,type="correlation");rk.aut.corr.acf # autocorrelation, ie normalized to lag(0)
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
# we must reject  autocorrelation 



## Figure 6 plotting the results
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(1,2))# Adjust the margin of plot (bottom,left,top,right)
plot(resmaf, which=5)  #histogram of the residuals
plot(rk.aut.corr.acf)
title(main="Autocorrelation", col.main="black", font.main=2)
dev.copy2pdf(file = "BookChapterOutput/OS1_FIG6_ASSY_ASSU.pdf")


#### 4.5. confidence intervals: BOOTSTRAPPING - ##################################

# first, no correction is needed: so, in this case, "corrected"  data and regression original data and regression
# we want to use again the nls results for the MLE (zero bound)
nls.and.summary(par=par.opt,y=ACT.TPO,par_lower=0,par_upper=0,sw_zerobound=1)
os.nls.est.corr<-os.nls.est


## preparing the BOOT
fit<-predict(os.nls.est.corr)
res<-residuals(os.nls.est.corr);res<-res[1:N2]  # & to make sure we have not more than we want
nls.corr.coeff<-coef(os.nls.est.corr)
# additional settings
def.par[]<-par.opt
sw.mod.par[]<-1
sw.ll.est<-1

library(boot)


### settting up a matrix for multiple start points

r.alp<-c(-0.8,-0.2)
r.tau.d<-c(10,1000)
r.tau.i<-c(10,1000)
r.T0<-c(1.01,1.10)
i.a<-1:8
i.td<-c(1:4,9:12)
i.ti<-c(1,2,5,6,9,10,13,14)
i.T0<-c(1,3,5,7,9,11,13,15,17)
n.start<-length(r.alp)*length(r.tau.d)*length(r.tau.d)*length(r.T0)
start.matrix<-matrix(nr=n.start,nc=4)
colnames(start.matrix)<-names(par.opt)
for(i in 1:n.start){
  start.matrix[i,1]<-ifelse(i %in% i.a,r.alp[1],r.alp[2])
  start.matrix[i,2]<-ifelse(i %in% i.td,r.tau.d[1],r.tau.d[2])
  start.matrix[i,3]<-ifelse(i %in% i.ti,r.tau.i[1],r.tau.i[2])
  start.matrix[i,4]<-ifelse(i %in% i.T0,r.T0[1],r.T0[2])
}

# automoated Bootstrapping

#a. nlsBoot

##The function nlsBoot uses non-parametric bootstrapping of mean centered residuals
#to obtain a chosen number (argument niter) of bootstrap estimates. 
#Ponctual estimations (resp. confidence intervals) of parameters are then provided using medians (resp. the 2.5 and 97.5 percentiles) of the bootstrap sample of estimates.#duration of 2000 iterations of the above model is about 8 minutes)
boomaf <- nlsBoot(os.nls.est.corr, niter=100) # iteration size of 100 is too small but this is just to show bootnls does not work here
summary(boomaf)
plot(boomaf, type="pairs")
# nlsBoot does not work in this case because nls does not work properly (as noted earlier Newton-Raphson cannot converge)
# for this reason the only way to get nls info (above) for the intervals was using zero-sized intervals
# bootsrapping works within the intervals so cannot work in this case

#b.  (nonparametric) boot.ci function) - error resampling for dyn models

set.seed(100)
#nb<-100    # for testing only
nb<-600
sw.report.ll<-0  # should be set to zero here, otherwise it is reported as a bootstrapped parameter
os.boot.res<-boot(data=res,statistic=param.nls.boot.autom.wof,R=nb)
#os.boot.res<-boot(formula=os.model.ll,data=res,statistic=param.nls.boot.autom.boot,R=nb)# current

# having generated the new data sets we can explore the confidence bounds using different methods
conf.level<-0.95
conf.tail<-1-conf.level

boot.ci(os.boot.res, conf=conf.level, index=1)
boot.ci(os.boot.res, conf=conf.level, index=2)
boot.ci(os.boot.res, conf=conf.level, index=3)
boot.ci(os.boot.res, conf=conf.level, index=4)

##  plotting results using standard plotting functionality
plot(sort(os.boot.res$t[,1],),type="l")
plot(sort(os.boot.res$t[,2],),type="l")
plot(sort(os.boot.res$t[,3],),type="l")
plot(sort(os.boot.res$t[,4],),type="l")

# examples reporting the various results

boot.ci(os.boot.res,conf=conf.level,index=1, type='bca');
plot(os.boot.res,conf=conf.level, type = 'norm', index=1)
plot(os.boot.res,conf=conf.level, type = 'bca', index=3)
conf.tail.h<-conf.tail/2
quantile( os.boot.res$t[,1], c(conf.tail.h,1-conf.tail.h) )  ## this is what happens in percentile
quantile( os.boot.res$t[,2], c(conf.tail.h,1-conf.tail.h) )
quantile( os.boot.res$t[,3], c(conf.tail.h,1-conf.tail.h) )
quantile( os.boot.res$t[,4], c(conf.tail.h,1-conf.tail.h) )

### c. manual execution

nb<-600
#nb<-100 #for testing only
seed<-100
## execution
boot.par.names<-names(par.opt)
boot.pars.man<-manual.boot(res=res,fit=fit,seed=seed,nb=nb,start.matrix=start.matrix,boot.par.names=boot.par.names)

# inspect and clean up some outliers
boot.pars.man[1:10,]  
max(boot.pars.man[,"tau.ti"])
colnames(boot.pars.man)<-names(par.opt)
boot.pars.man.sub<-boot.pars.man[which(boot.pars.man[,"TPOD0"]<1.5),];length(boot.pars.man.sub[,1])
boot.pars.man.sub<-boot.pars.man.sub[which(boot.pars.man[,"alpha"]>-0.9),];length(boot.pars.man.sub[,1])
par(mar=c(5, 5, 1, 1),mfrow=c(2,2))
hist(boot.pars.man[,"tau.td"]);hist(boot.pars.man.sub[,"tau.td"])
hist(boot.pars.man[,"tau.ti"]);hist(boot.pars.man.sub[,"tau.ti"])

### Figure 7: Plotting the results
ns<-length(boot.pars.man.sub[,1])
dev.new(width=6, height=3.75) # proper sizes
par(mar=c(5, 5, 1, 1),mfrow=c(2,2))# Adjust the margin of plot (bottom,left,top,right)
sw.log # which are plotted on the log scale
Fboot.pars.man<-matrix(ncol=ncol(boot.pars.man.sub),nrow=nrow(boot.pars.man.sub))
Fboot.pars.man<-row(Fboot.pars.man)/nrow(Fboot.pars.man)
for(j in 1:length(boot.par.names)){
  curr.par.name<-boot.par.names[j]
  boot.plot<-sort(boot.pars.man.sub[,j])
  if(sw.log[j]==1) plot(boot.plot,c(1:ns)/ns,type="l",lty=1,xlab=curr.par.name,ylab=paste("F(",curr.par.name,")",sep=""),log="x")
  if(sw.log[j]==0) plot(boot.plot,c(1:ns)/ns,type="l",lty=1,xlab=curr.par.name,ylab=paste("F(",curr.par.name,")"))
  abline(h=conf.tail/2,lty=2,col="red");
  abline(h=1-conf.tail/2,lty=2,col="red");
  par.conf.left<-boot.plot[which(abs(Fboot.pars.man[,j]-conf.tail/2)==min(abs(Fboot.pars.man[,j]-conf.tail/2)))]
  par.conf.right<-boot.plot[which(abs(Fboot.pars.man[,j]-(1-conf.tail/2))==min(abs(Fboot.pars.man[,j]-(1-conf.tail/2) )))]
  abline(v=par.conf.left[1],lty=2,col="red");
  abline(v=par.conf.right[1],lty=2,col="red");
  print(c(curr.par.name,round(par.conf.left[1],3),round(par.conf.right[1],3)))
  title(main=paste("Cumulative Distribution of ",curr.par.name,sep=" "), col.main="black", font.main=2,cex.main=0.9)
}
dev.copy2pdf(file = "BookChapterOutput/OS1_FIG7_BOOT.pdf")

##### section 4.6 additional analysis ###
## PLOT 4.6: visual CI comparison

# setup and fill out the parameters 
# note here we want to plot the tau's on top of each other,  hence an ordering change between p3 and p4

CIparameters<-c("alpha","tau.d","T*0","tau.i")
CImethods<-c("AS.Wald","AS.Hessian","LR.Univariate","LR.Profile","Boot.Percentile","Boot.BCA","OS01.Univ.Search","D07.Boot.Percentile")
CImean<-CIlower<-CIupper<-as.data.frame(matrix(nr=length(CImethods),nc=length(CIparameters)))
#alpha
CImean[,1]<-round(c(rep(par.opt[1],6),par.oliva[1],par.dogan[1]),2)
CIlower[,1]<-c(-0.75,-0.71,-0.69,-0.71,-0.70,-0.74,-0.7,-0.68)
CIupper[,1]<-c(-0.49,-0.52,-0.54,-0.52,-0.49,-0.52,-0.59,-0.49)
# tau.td
CImean[,2]<-round(c(rep(par.opt[2],6),par.oliva[2],par.dogan[2]),1)
CIlower[,2]<-c(-27,-18,11,8.1,5.8,6.3,13,4.7)
CIupper[,2]<-c(66,58,53,Inf,Inf,Inf,29,5e4)
# tau.i
CImean[,4]<-round(c(rep(par.opt[3],6),par.oliva[3],par.dogan[3]),1)
CIlower[,4]<-c(-4.3e8,8.7e4,54,32,19,1e3,3.3e4,25)
CIupper[,4]<-c(4.3e8,1.1e5,Inf,Inf,Inf,Inf,Inf,2.5e8)
# T*0
CImean[,3]<-round(c(rep(par.opt[4],6),par.oliva[4],par.dogan[4]),2)
CIlower[,3]<-c(1.01,1.02,1.04,1.03,1.03,1.03,1.06,1.03)
CIupper[,3]<-c(1.12,1.11,1.08,1.26,1.19,1.20,1.09,1.14)

## setting the plot conditions
# which to plot at a log scale
c.sw.log<-c(0,1,0,1)
plot.min.par<-c(-1,1,1,1)
plot.max.par<-c(0,1e6,1.5,1.e6)
## for what parameters the horizontal / vertical helplines
sw.h.abline<-c(1,1,1,1); h.abline<-c(6.5,6.5,6.5,6.5)  # separating our results from dogan / oliva results
sw.v.abline<-c(0,1,0,1); v.abline<-12*c(0,1,0,1)    # short tau's
plot.mult.CI(mean=CImean,lower=CIlower,upper=CIupper,methods=CImethods,parameters=CIparameters,c.sw.log,plot.min.par,plot.max.par,sw.h.abline,h.abline,sw.v.abline,v.abline,file="plotCICompare")



################# 4.6 Additional tests ##########



################################## 4.6b Bivariate analysis  ##############
pl.theta<-25
pl.phi<-45
# the 2d interval is symmetric and is defined as the distance from the MLE
N.data<-40;sw.profile<-0;sw.2dplot=1
LL.range.rel<- 5
#  alpha and tau.d
par.2d<-c(2,1) # the parameters
par.2d.range<-c(100,0.2)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)
def.par[]<-par.opt
sw.mod.par[]<-1
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="FIG4.X_MLE_LR_")
title(main=paste("Bivariate LR confidence interval between",names(par.opt)[par.2d[1]],"and",names(par.opt)[par.2d[2]],sep=" "), col.main="black", font.main=2,cex.main=1)
dev.copy2pdf(file = "BookChapterOutput/FIG9_OS_BIV_MLE_LR.pdf")


# Others bivariates, not shown in the manuscript:
#  TPOD0 and tau.d
par.2d<-c(2,4) # the parameters
par.2d.range<-c(60,0.1)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)
def.par[]<-par.opt
sw.mod.par[]<-1
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="FIG4.X_MLE_LR_")
#  tau.d and tau.i
par.2d<-c(3,2) # the parameters
par.2d.range<-c(120000,100)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)
def.par[]<-par.opt
sw.mod.par[]<-1
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="FIG4.X_MLE_LR_")
#  alpha and TPOD0
par.2d<-c(1,4) # the parameters
par.2d.range<-c(0.25,0.1)  ## we can adjust the range for the 2-D represnetation
x.rtsj.2d<-c(1,1)
def.par[]<-par.opt
sw.mod.par[]<-1
LL.multipar.plot(os.model.ll,par.est=par.opt,y=ACT.TPO,sigma2=sigma20,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range=1,LL.range.rel,sw.2dplot=sw.2dplot,sw.profile=sw.profile,pl.theta=pl.theta,pl.phi=pl.phi,filename="FIG4.X_MLE_LR_")


################## 4.6b LR ratio hypothesis testing on models  ###############
#variable settings: decide upon the number of vars. First we do not take sigma2 (as we calculated that internally)
#start_l<-list(alpha=alpha_s,tau.td=tau.td_s,tau.ti=tau.ti_s,TPOD0=TPOD0_s)
#lower_b<-start_l
#upper_b<-start_l

par(mar=c(5, 5, 1, 1),mfrow=c(2,2))

# model 1: existing MLE
mod1.par<-par.opt
def.par<-c(sigma2=1,mod1.par)
lower_b<-all_lower_b[names(mod1.par)]
upper_b<-all_upper_b[names(mod1.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod1.par)]<-1
est.mod1 <- optim(mod1.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.1<-est.mod1$par
plot.results(par.1,"MLE results")
#par.1.inv<-c(est.mod1$par[1],est.mod1$par[3],est.mod1$par[2],est.mod1$par[4])
#plot.results(par.1.inv,"MLE results, Taus inversed")

# model 2: tau i = tau d
sw.tau.equal<-1
par.tau.var<-names(mod1.par)[2]
par.tau.equiv<-names(mod1.par)[3]
mod2.par<-mod1.par[-which(names(mod1.par)==par.tau.equiv)]
lower_b<-all_lower_b[names(mod2.par)]
upper_b<-all_upper_b[names(mod2.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod2.par)]<-1
est.mod2 <- optim(mod2.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.2<-c(est.mod2$par[1],est.mod2$par[2],est.mod2$par[2],est.mod2$par[3])

# resetting switches
sw.tau.equal<-0  # 
def.par<-c(sigma2=1,par.opt)
sw.mod.par<-sw.mod.par.all

##check results
os.model.ll(par.2,y=ACT.TPO);os.model.ll(par.opt,y=ACT.TPO)
par.test[]<-par.2;par.test[c(2,3)]<-c(1e4,1e4)
os.model.ll(par.test,y=ACT.TPO)
plot.results(par.2,"MLE results, taus equal")



# model b: tau i = tau d=tau d= tau.d*
sw.tau.equal<-1
mod2b.par<-mod1.par[-c(2,3)]
tau.fix<-par.opt[2]
def.par<-c(sigma2=1,par.opt);def.par[c(3,4)]<-tau.fix
lower_b<-all_lower_b[names(mod2b.par)]
upper_b<-all_upper_b[names(mod2b.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod2b.par)]<-1
est.mod2b <- optim(mod2b.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.2b<-c(est.mod2b$par[1],def.par[3],def.par[4],est.mod2b$par[2])

# resetting switches
sw.tau.equal<-0  # 
def.par<-c(sigma2=1,par.opt)
sw.mod.par<-sw.mod.par.all

##check results
os.model.ll(par.2b,y=ACT.TPO);os.model.ll(par.opt,y=ACT.TPO)
plot.results(par.2b,paste("MLE results, taus equal= tau_d=",tau.fix,sep=""))


# model c: tau i = tau d=tau d= tau.fix at lower level
sw.tau.equal<-1
mod2c.par<-mod1.par[-c(2,3)]
tau.fix<-8
def.par<-c(sigma2=1,par.opt);def.par[c(3,4)]<-tau.fix
lower_b<-all_lower_b[names(mod2c.par)]
upper_b<-all_upper_b[names(mod2c.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod2c.par)]<-1
est.mod2c <- optim(mod2c.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.2c<-c(est.mod2c$par[1],def.par[3],def.par[4],est.mod2c$par[2])

# resetting switches
sw.tau.equal<-0  # 
def.par<-c(sigma2=1,par.opt)
sw.mod.par<-sw.mod.par.all

##check results
os.model.ll(par.2c,y=ACT.TPO);os.model.ll(par.opt,y=ACT.TPO)
plot.results(par.2c,paste("MLE results, taus equal= tau_d=",tau.fix,sep=""))


# model d: tau i = tau d=  tau.fix at lower level
sw.tau.equal<-0
mod2d.par<-mod1.par[-2]
tau.fix<-8
def.par<-c(sigma2=1,par.opt);def.par[c(3)]<-tau.fix
lower_b<-all_lower_b[names(mod2d.par)]
upper_b<-all_upper_b[names(mod2d.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod2d.par)]<-1
est.mod2d <- optim(mod2d.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.2d<-c(est.mod2d$par[1],def.par[3],est.mod2d$par[2],est.mod2d$par[3])

# resetting switches
sw.tau.equal<-0  # 
def.par<-c(sigma2=1,par.opt)
sw.mod.par<-sw.mod.par.all

##check results
os.model.ll(par.2d,y=ACT.TPO);os.model.ll(par.opt,y=ACT.TPO)
plot.results(par.2d,paste("MLE results, taus equal= tau_d=",tau.fix,sep=""))


# model d: tau i = tau d=  tau.fix at lower level
sw.tau.equal<-0
mod2e.par<-mod1.par[-3]
tau.fix<-20
def.par<-c(sigma2=1,par.opt);def.par[4]<-tau.fix
lower_b<-all_lower_b[names(mod2d.par)]
upper_b<-all_upper_b[names(mod2d.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod2e.par)]<-1
est.mod2e <- optim(mod2e.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
par.2e<-c(est.mod2e$par[1],est.mod2e$par[2],def.par[4],est.mod2e$par[3])

# resetting switches
sw.tau.equal<-0  # 
def.par<-c(sigma2=1,par.opt)
sw.mod.par<-sw.mod.par.all

##check results
os.model.ll(par.2e,y=ACT.TPO);os.model.ll(par.opt,y=ACT.TPO)
plot.results(par.2e,paste("MLE results, taus equal= tau_d=",tau.fix,sep=""))


### in the end of this script you can find some more LR tests###



##### 4.6c additional bootstrapping statistics on tau.i and tau.ti reported in the document #####

# independent 2-group Mann-Whitney U Test
## can one reject the null that the mean of two populations are equal?

# For example, when comparing tau.d with a sample of mu=-1e6 and sd=0:
wilcox.test(rep(-1e6,length(boot.pars.man.sub[,2])),boot.pars.man.sub[,2],alternative="l",paired=T)   
## we reject equality of mu's
## but when comparing with a sample a sample of mu=25 and sd=0:
wilcox.test(rep(25,length(boot.pars.man.sub[,2])),boot.pars.man.sub[,2],alternative="l",paired=T)  
## we cannot reject equality of mu

## in this case we compare the bootstrap parameter values for tau.d and tau.i
## our alternative hypothesis is that tau.d<tau.i
wilcox.test(boot.pars.man.sub[,2],boot.pars.man.sub[,3],alternative="l",paired=T)
# and yes, we will reject that the popualtion means are equal.


## further inspection lends support to these insights
length(which(boot.pars.man.sub[,"tau.td"]<52))/length(boot.pars.man.sub[,"tau.td"])
length(which(boot.pars.man.sub[,"tau.ti"]<52))/length(boot.pars.man.sub[,"tau.td"])

small.tau.d<-boot.pars.man.sub[which(boot.pars.man.sub[,"tau.td"]<26),];length(small.tau.d[,1])
small.tau.d.large.tau.i<-small.tau.d[which(small.tau.d[,"tau.ti"]>199),];length(small.tau.d.large.tau.i[,1])/length(boot.pars.man.sub[,"tau.td"])

small.tau.i<-boot.pars.man.sub[which(boot.pars.man.sub[,"tau.ti"]<26),];length(small.tau.i[,1])
small.tau.i.large.tau.d<-small.tau.i[which(small.tau.i[,"tau.td"]>199),];length(small.tau.i.large.tau.d[,1])/length(boot.pars.man.sub[,"tau.td"])

x<-boot.pars.man.sub[,"tau.td"]-boot.pars.man.sub[,"tau.ti"]
length(which(x>0))/length(boot.pars.man.sub[,"tau.td"])
length(which(x<0))/length(boot.pars.man.sub[,"tau.td"])
length(which(x==0))/length(boot.pars.man.sub[,"tau.td"])




#### other LR-ratio tests, not discussed in the text

# model 3: a prior about tau d  - fixed at low level
def.par<-c(sigma2=1,mod1.par)
mod3.par<-mod1.par[-2]
mod3.par[2]<-10000   # to give it a high starting point
sw.tau.equal<-0
def.par[4]<-mod3.par[2]
fixv3<-18
def.par[3]<-fixv3
lower_b<-all_lower_b[names(mod3.par)]
upper_b<-all_upper_b[names(mod3.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod3.par)]<-1
est.mod3 <- optim(mod3.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)

os.model(est.mod3$par[1],fixv3,est.mod3$par[2],est.mod3$par[3],CO,SC)
plot(1:length(TPOt),TPOt,main = "mod3",lty=2,type="l")
lines(ACT.TPO,lty=1,type="l")
lines(TPODt, lty=3)

# model 4: a prior about tau i  - fixed at high level
def.par<-c(sigma2=1,mod1.par)
mod4.par<-mod1.par[-3]
mod4.par[2]<-10 # to give it a low starting point   
sw.tau.equal<-0
def.par[3]<-mod4.par[2]
fixv4<-9999;def.par[4]<-fixv4;
lower_b<-all_lower_b[names(mod4.par)]
upper_b<-all_upper_b[names(mod4.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod4.par)]<-1
est.mod4 <- optim(mod4.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)

os.model(est.mod4$par[1],est.mod4$par[2],fixv4,est.mod4$par[3],CO,SC)
plot(1:length(TPOt),TPOt,main = "mod4",lty=2,type="l")
lines(ACT.TPO,lty=1,type="l")
lines(TPODt, lty=3)

# model 5: a prior about tau i  - fixed at high level and taud - fixed at low level
def.par<-c(sigma2=1,mod1.par)
no.pars<-c(2:3)
mod5.par<-mod1.par[-no.pars]
#mod4.par[2]<-10 # to give it a low starting point   
sw.tau.equal<-0
#def.par[3]<-mod4.par[2]
def.par[3]<-fixv3
def.par[4]<-fixv4
lower_b<-all_lower_b[names(mod5.par)]
upper_b<-all_upper_b[names(mod5.par)]
sw.mod.par<-sw.mod.par.none;sw.mod.par[names(mod5.par)]<-1
est.mod5 <- optim(mod5.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
est.mod5

# a test
# model t: a prior about tau d  - fixed at low level
def.par<-c(sigma2=1,mod1.par)
modt.par<-mod1.par[-1]
fixvt<--0.6755
def.par[2]<-fixvt
lower_b<-all_lower_b[names(modt.par)]
upper_b<-all_upper_b[names(modt.par)]
mod.par<-mod.par.none;mod.par[names(modt.par)]<-1
est.modt <- optim(modt.par,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lower_b,upper=upper_b)
est.modt <- optim(modt.par,os.model.ll,hessian=TRUE,method="BFGS",y=ACT.TPO)

os.model(est.mod5$par[1],fixv3,fixv4,est.mod5$par[2],CO,SC)
plot(1:length(TPOt),TPOt,main = "mod3",lty=2,type="l")
lines(ACT.TPO,lty=1,type="l")
lines(TPODt, lty=3)

