### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### Support Functions for MLE

## The model ##
# The model produces an estimated time per order based on input parameters alpha1,tau.td,tau.ti,TPOD0 and data CO,SC.
os.model <- function(alpha,tau.td,tau.ti,TPOD0,CO,SC){

  # creation of matrices populated with zero
  TPOt<-TPODt<-as.matrix(0*ACT.TPO)
  TPODt[1]<-TPOD0
  # we loop from time = 1 to the number of time steps and derive desired and actual time per order
  for(t in 1:N2){
    sc<-as.matrix(CO[t]*TPODt[t])
    wp<-sc/SC[t]   
    t.wp<-wp^alpha;  t.wp[which(t.wp==Inf)]<-1e6   # extreme condition incase TPOD0=0 (boundary condition) with t.w returning inf
    ITPO<-tau.p*t.wp*TPODt[t]
    TPOt[t]<-max(ITPO,tau.f)
    # now we setup the data for the next round
    tau.to<-ifelse(TPOt[t]>TPODt[t],tau.ti,tau.td)
    if(t<N2){TPODt[t+1]<-TPODt[t]+(TPOt[t]-TPODt[t])*(1-exp(-1/tau.to))}
  }
  # globally saving the desired and actual time per order
  TPODt<<-TPODt  
  TPOt<<-TPOt
  # return the time per order to the global environment
  return(TPOt)
}


#  Likelihood function
# par contains both the parameters themselves as well as information about which of those are remained to be held constant (e.g for profile likelihood estimation)
os.model.ll <- function(par,y){
  # first we decide what parameters we are going to vary in the estimation
  # once we do profile likelihood etc.. we need to be able to "freeze" one or more of the parameters
  # sw.mod.par defines e[0,1] while def.par gives the fixed value

  # in the ll mode we have just passed on the parameters in par, sw.mod.par and def.par are saved
  ifelse(sw.ll.est==1,nam.p<-names(par),nam.p<-colnames(par))  
  ifelse(sw.ll.est==1,sw.mod.par<- sw.mod.par,sw.mod.par[nam.p]<-par[2,nam.p])  
  ifelse(sw.ll.est==1,def.par   <- def.par,def.par[nam.p]      <-par[3,nam.p]) 

  # we first set all variables equal to def.par 
  for(i in 1:length(def.par)) assign(names(def.par)[i],def.par[i])

  # we now correct the parameters passed in the function - those that are to remain fixed remain set to equal def.par  
  ifelse(sw.ll.est==1,par.pars<-par,par.pars<-par[1,])  #under sw.ll.est=0 we par.pars is a 3-row matrix with rows being: par,mod,def
  
  sw.n.mod.par<-(1-sw.mod.par)
  par.pars<-sw.mod.par[nam.p]*par.pars+sw.n.mod.par[nam.p]*def.par[nam.p]

  # now we assign the values to the true parameters
  for(i in 1:length(par.pars)) assign(names(par.pars)[i],par.pars[i])

  ## adjustment for alternative model estimate
  if(sw.tau.equal==1) {
    ifelse(par.tau.equiv=="tau.ti",tau.ti<-tau.td,tau.td<-tau.ti)
    names(tau.td)<-"tau.td";
    names(tau.ti)<-"tau.ti"
  } 
  
  if (sigma2 <= 0) return(NA)   # just in case the parameter space exploration uses a sigma^2 of zero
  
  #now we collect the estimated orderrate TPOt given the parameters
  TPOt<-os.model(alpha=alpha,tau.td=tau.td,tau.ti=tau.ti,TPOD0=TPOD0,CO,SC)
  
  # we write out the OLS-equivalent likelihood function 
  X<-as.matrix(y)
  beta <- par[-1]
  e <<- y - TPOt                                 
  n <- nrow(X)
  # for a function like this the sigma2 is equal to the best fit..
  sigma2<-sum(e^2)/n
  logl <- ((-n/2)*log(2*pi)) - ((n/2)*log(sigma2)) - ((t(e)%*%e)/(2*sigma2))  # t() = matrix transpose
  # we return the likelihood function when sw.ll.est = 1, otherwise we return the estimated order rate (in the case of non.lin)
  ifelse(sw.ll.est==1,  return(-logl),  return(TPOt)) # since optim() does minimisation by default.
}


 
# to use the ll function in nls we need to set it up so that it uses the 
# basic parameters (and not a par list) and returns TPOt
# so sw.ll.est=0
os.nls.ll<-function(alpha,tau.td,tau.ti,TPOD0){
  sw.ll.est<<-0
  par.names<-var.names.base
  
  par.ll.nls<-rep(NA,length(par.names));names(par.ll.nls)<-par.names
  par.ll.nls[1:length(par.names)]<-c(alpha=alpha,tau.td=tau.td,tau.ti=tau.ti,TPOD0=TPOD0)
  sw.mod.par<-rep(1,length(par.names));
  sw.def.par<-rep(1,length(par.names)); # all parameters are free so we cna set def par to any value
#  names(par.ll.nls)<-paste("sw.mod.",names(par.ll.nls),sep="")  # for the nls all parameters need to be free
  par.ll.nls<-rbind(par.ll.nls,sw.mod.par,sw.def.par)  # when os.model.ll is in nls estimation we provide the par,mod and def in three rows
  # finally, we want to return the estimated orders, not the likelihood function

  TPOt<-os.model.ll(par=par.ll.nls,y=ACT.TPO)
  return(TPOt)
}

f.os.nls.est.ll<-function(start_l){
  os.nls.est<-nls(
    ACT.TPO ~ os.nls.ll(alpha,tau.td,tau.ti,TPOD0),
    start=start_l,
    data=reg.data.nls,
    algorithm="port",  # port should be used in case of specified  bounds
    lower=lower_b,
    upper=upper_b,
    trace=T,
    nls.control(maxiter=2000)
  )
  return(summary(os.nls.est))
}

## proper mle using the optim function
## if either lowerb or upperb is set to "0" we dont use the boundary
os.mle.ll<-function(par,sw.mod.par,def.par,method,y,lowerb,upperb){

  #in this case we want to return the likelihood function
  sw.ll.est<<-1
  
  par.names<-var.names.base
  par.ll.mle<-rep(NA,length(par.names));names(par.ll.mle)<-par.names
  par.ll.mle[1:length(par.names)]<-par 
  #  names(par.ll.nls)<-paste("sw.mod.",names(par.ll.nls),sep="")  # for the nls all parameters need to be free
#  par.ll.mle<-rbind(par.ll.mle,sw.mod.par,def.par)

# the optim function wants to work with the "par" being the free parameters we set the fixed parameters in the model
  sw.mod.par<<-sw.mod.par
  def.par<<-def.par 

  ifelse(min(length(lowerb),length(lowerb))==1, sw.bound<-0,sw.bound<-1)

  ifelse(sw.bound==1,
     est.mle.ll<-optim(par=par.ll.mle,os.model.ll,hessian=TRUE,method=method,y=y,lower=lowerb,upper=upperb),
     est.mle.ll<-optim(par=par.ll.mle,os.model.ll,hessian=TRUE,method=method,y=y)
  )
         
  return(est.mle.ll)
}

os.mle.ll_cmpct<-function(par,y){
  est.mle.ll<-os.mle.ll(par=par,sw.mod.par=sw.mod.par,def.par=def.par,method=method,y=y,lowerb=lower_b,upperb=upper_b)
  return(est.mle.ll)
}

# the setup for multiple starts
# the input is just a matrix with pre-selected startpoints. 
# can of course also easily be automated
#method can be specified as an array or parameter
est.os.ll.mult.starts<-function(start.par.ll.set,par.method,lowerb,upperb,y){
  n.starts<-length(start.par.ll.set[,1])
  n.start.pars<-length(start.par.ll.set[1,])
  os.mle.ll<- -1e6
  n.vars.pars<-2*n.start.pars
  n.vars.tot<-n.vars.pars+1
  n.res.vars<-n.start.pars+1
  mult.start.ll.results<-matrix(nc=n.vars.tot,nr=n.starts)
  par.method.set<-matrix(nc=1,nr=n.starts)
  par.method.set[]<-par.method
  for (n in 1:n.starts){
    curr.method<-par.method.set[n]
    start.par.cur<-start.par.ll.set[n,]

    est.mle.ll<-os.mle.ll(par=start.par.cur,sw.mod.par=sw.mod.par,def.par=def.par,method=curr.method,y=y,lower=lowerb,upper=upperb)
    cur.mle.ll<- -est.mle.ll$value  # not that est.mle.ll$value represents the negative ll (since optim minimizes), so here we need to convert  it back to ll
    if(cur.mle.ll>os.mle.ll) {
      os.mle.ll<-cur.mle.ll
      os.mle.start<-start.par.cur
      os.mle.est<-est.mle.ll$par
    }
    # we store all results into the table
    mult.start.ll.results[n,1:n.start.pars]<-start.par.cur
    mult.start.ll.results[n,n.res.vars:n.vars.pars]<-round(est.mle.ll$par,3)
    mult.start.ll.results[n,ncol(mult.start.ll.results)]<-round(cur.mle.ll,3)
 
  }
  mult.start.ll.results<<-cbind(mult.start.ll.results,par.method.set)
  return(list("os.ll.start"=os.mle.start,"os.ll"=os.mle.ll,"os.ll.mle"=os.mle.est))
}



# function for residual statistics
os.model.ressqe <- function(par,CO,SC,ACT.TPO,dgf){

  for(i in 1:length(par)) assign(names(par)[i],par[i])
  
  os.model(alpha=alpha,tau.td=tau.td,tau.ti=tau.ti,TPOD0=TPOD0,CO=CO,SC=SC)
  
  #joint density function
  jdf<-prod((TPOt-ACT.TPO)^2)
  
  # residual sum of scquares  
  rss<-round(sum((TPOt-ACT.TPO)^2),4)
  ser<-round(sqrt(rss/(N2-dgf)),4)
  ess<-round(sum((TPOt-mean(ACT.TPO))^2),4)
  sqe.results<-paste("RSS[=sum(Yi_est-Yi)^2]=",rss,";  SER[=sqrt(RSS/(n-2))]=",ser,"ESS[=sum(Yi_est-avgY)^2]=",ess)
  return(sqe.results)
}


# performing unpaired t-tests 
# allows comparing results from two samples or comparison of one sample with 0 hypothesis value
# in the case of two-samples, simply fill in both 
# in the case of 0-hypothes, simply fill in mu.sample,sd.sample and mu.0 
t.test.p.val.general <- function(mu,sd,n,mu.0) {
  df=n
  n<-1  # can compare different sample sizes here we use howerver the SD from the summary stats
  ifelse(length(sd)==2,  sd.test<-sd,sd.test<-c(sd,0))
  ifelse(length(mu)==2,  mu.test<-mu,mu.test<-c(mu,mu.0))
  
  t.value<- -diff(mu.test) / sqrt( sum( sd.test^2/n ) )
  ## probability of rejecting 0 / 
  p.value<-2*pt(-abs(t.value),df=df)
  
  results<-c("t.value"=t.value,"p.value"=p.value)
  return(results)
}
## the following allows doing a custom hypothesis test on the summary stats
t.test.p.val.fromSummaryStats<-function(nlsstats,par,mu.0,n){
  X<-get(nlsstats)
  mu<-X$par[par,"Estimate"]
  sd<-X$par[par,"Std. Error"]
  results<-t.test.p.val.general(mu=mu,sd=sd,n=n,mu.0=mu.0) 
  return(results)
}
## BCA END t-tests




#omparing and plotting results (for appendix)
os.model.demo <- function(CO,SC,ATPO){
  plot(PWeek,ATPO,pch=20,type="l",ylab="Time per Order",col=lcolr[1],lwd=lwidth[1],lty=ltype[1],) 
  os.model(par.opt[1],par.opt[2],par.opt[3],par.opt[4],CO,SC)
  lines(PWeek,TPOt,lty=ltype[2],col=lcolr[2],lwd=lwidth[2])
  os.model(alpha_o,tau.td_o,tau.ti_o,TPOD0_o,CO,SC)
  lines(PWeek,TPOt,lty=ltype[3],col=lcolr[3],lwd=lwidth[3])
  os.model(alpha_d,tau.td_d,tau.ti_d,TPOD0_d,CO,SC)
  lines(PWeek,TPOt,lty=ltype[4],col=lcolr[4],lwd=lwidth[2])
  title(main="Estimation results compared to those of O&S(2001) and D(2007) ",cex.main=0.8)
  legend("topleft",legend.nm2,lty=ltype,col=lcolr,cex=0.5, bty="n")
}

#deriving confidence bounds 
# we don't use the zero bound here
nls.and.summary<-function(par,y,par_lower,par_upper,sw_zerobound){
  for(i in 1:length(par)) assign(names(par)[i],par[i])
  
  start_l[]<-c(alpha,tau.td,tau.ti,TPOD0)
  lower_b<-par_lower
  upper_b<-par_upper
  if(sw_zerobound==1) lower_b<-upper_b<-start_l
  os.nls.est<<-nls(
    y ~ os.model(alpha,tau.td,tau.ti,TPOD0,CO,SC),
    start=start_l,
    data=reg.data.nls,
    algorithm="port",  # port should be used if bounds
    lower=lower_b,
    upper=upper_b,
    trace=T,
    nls.control(maxiter=500,tol = 1e-05)
  )
  return("overview(os.nls.est)"=overview(os.nls.est))
}

plot.results<-function(pars.os,header){
  
  names(pars.os)<-c("alpha","tau.td","tau.ti","TPOD0")
  
  #now we run the plot

  sigma2<-1
  par.o<-c(sigma2,pars.os[1],pars.os[2],pars.os[3],pars.os[4])
  names(par.o)<-c("sigma2",names(par.oliva))

  def.par<<-par.o;names(def.par)<-names(par.o)
  LL<--os.model.ll(par.o,y=ACT.TPO)
  plot(Week,TPOt,main = paste(header,"; LL=",round(LL,2)),lty=1,type="l",ylim=c(0.8,1.2),xlim=c(52,104))
  lines(Week,ACT.TPO,lty=3,type="l")
  lines(Week,TPODt, lty=2)
  abline(h=0.9);abline(h=1);abline(h=1.1)
  abline(v=65);abline(v=78);abline(v=91)
}


#autocovariance function variance estimator and next the correlation as a function of k
# see e.g. Barlas (2007)
#t(k)=r(k)/sqrt(var(k)), where r(k) is the autocorrelation function value for lag k
autcov.var.test<-function(max.lag.analyse,N2,aut.fv){
  var.rk<-test.k<-matrix(nrow=max.lag.analyse,ncol=1)
  var.rkk.tot<-0
  for(k in 1:max.lag.analyse){
    for(i in 1:max(1,(N2-k-1))){
      var.rkik<-(N2-i)/(N2*(N2+2))*
        (ifelse(k==i,1,ifelse(k>i,aut.fv[abs(k-i)],0))+aut.fv[k+i]-2*aut.fv[k]*aut.fv[i])^2
      var.rkk.tot<-var.rkk.tot+var.rkik
    }
    var.rk[k]<-var.rkk.tot
    var.rkk.tot<-0                
  }
  test.rk<-aut.fv[1:max.lag.analyse]/sqrt(var.rk);
  return(test.rk)
}


##custommade functon for removign autocorrelation
remove.auto.corr<-function(nls.input,N2,max.lag,max.lag.analyse,y,sd.marg){
  
  ## before correction
  res<-residuals(nls.input)
  sd.res<-sd(res)
  rk.aut.corr.acf<-acf(residuals(nls.input),max.lag,type="correlation"); # autocorrelation, ie normalized to lag(0)
  rk.aut.corr<-rk.aut.corr.acf[[1]];  #this creates a list of autocorrelation from lag = 0 to Lmax
  rk.aut.corr<-rk.aut.corr[-1]  # we eliminate lag = 0
  test.rk<-autcov.var.test(max.lag.analyse=max.lag.analyse,N2=N2,aut.fv=rk.aut.corr); # test statiics
  print("before correction:")
  print(c("sd.res=",round(sd.res,3)));print(c("autocorrelation=",round(rk.aut.corr.acf$acf[1:max.lag.analyse],3)));print(c("test statistics=",round(test.rk,3)))
  
  ## correction
  #  res.shift.l1<-rep(NA,residuals(nls.input)[1:N2]);
  res.shift.l1<-rep(NA,N2)
  res.shift.l1[2:N2]<-res[2:N2-1];res.shift.l1[1]<-0
  res.corr<-res-rk.aut.corr[1]*res.shift.l1
  #  res.corr<-res-aut.fv[1]*res.shift.l1
  
  sd.corr<-sd(res)/sd(res.corr)
  #res.corr<-sd.marg*sd.corr*(res-aut.fv[1])
  # margin that sd has to be higher because of zero bound of orders.
  res.corr<-sd.marg*sd.corr*res.corr
  
  ## after correction
  sd.res.corr<-sd(res.corr)
  rk.aut.corr.acf<-acf(res.corr,max.lag,type="correlation"); # autocorrelation, ie normalized to lag(0)
  rk.aut.corr<-rk.aut.corr.acf[[1]];  #this creates a list of autocorrelation from lag = 0 to Lmax
  rk.aut.corr<-rk.aut.corr[-1]  # we eliminate lag = 0
  test.rk<-autcov.var.test(max.lag.analyse=max.lag.analyse,N2=N2,aut.fv=rk.aut.corr); # test statiics
  print("after correction") 
  print(c("sd.res=",round(sd.res.corr,3)));print(c("autocorrelation=",round(rk.aut.corr.acf$acf[1:max.lag.analyse],3)));print(c("test statistics=",round(test.rk,3)))
  # plot autocorrelation before and after  
  par(mfrow=c(1,2))
  acf(res,max.lag.analyse,type="correlation")
  acf(res.corr,max.lag.analyse,type="correlation")
  par(mfrow=c(1,1))
  # now adjust the residuals for automated boostr
  # can do this by adding the corr. error terms to the estimate,set that as the actual Y and estimate with the 
  # with zero upper and lower bound so that we estimate for the autocorr adjusted data
  # then we use the obtained nls estimate to bootstrap
  
  #3 since  y.predicted=y.actual-residuals, we now have the "corrected y actual, y.corr:
  
  y.corr<-predict(nls.input)+res.corr
  # corrected orders must be larger or equal to zero
  y.corr[which(y.corr<0)]<-0
  
  return(y.corr)
}


## plotting and comparing the various CI's with different methods for parameters.
plot.mult.CI<-function(mean,lower,upper,methods,parameters,c.sw.log,plot.min.par,plot.max.par,sw.h.abline,h.abline,sw.v.abline,v.abline,file){
#  options(digits=1)
  dev.new(width=6, height=3.75) # proper sizes
  par(mar=c(5, 7.5, 1, 1),mfrow=c(2,2))# Adjust the margin of plot (bottom,left,top,right)
#  options( scipen = 0)
  n.p<-1:length(parameters)
  n.m<-1:length(methods)
  
  for(p in 1:length(parameters)){
    sw.log<-c.sw.log[p]
 #   options( scipen = 0)
    # setup the plot and axis
    # we plot a zero line in the bottom
    pl.y.min<-min(n.m)-0.5
    pl.y.max<-max(n.m)+0.5
    c.ylim<-c(pl.y.max,pl.y.min)  #inversion
    c.xlim<-c(plot.min.par[p],plot.max.par[p])
    if(sw.log==1)     plot(mean[,p],n.m,xlim=c.xlim,ylim=c.ylim,col="white",xlab="",ylab="",yaxt="n",log="x")
    if(sw.log==0)     plot(mean[,p],n.m,xlim=c.xlim,ylim=c.ylim,col="white",xlab="",ylab="",yaxt="n")
    axis(2,at=n.m,labels=methods,las=2,cex.axis=0.6)  # we only plot the method on the left graphs
    title(main=parameters[p], font.main=2)
 #   options( scipen = 100)
    ## plotting the intervals
    # intervals that exceed the plot range are set equal to the plot range, but we keep the information on their actual values
    plot.lower<-lower[,p]
    plot.upper<-upper[,p]
    reach.lb<-which(plot.lower<plot.min.par[p]) 
    reach.ub<-which(plot.upper>plot.max.par[p])  
    plot.lower[reach.lb]<-plot.min.par[p]
    plot.upper[reach.ub]<-plot.max.par[p]
    ## plotting the mean, m
    midpoint<-(upper[,p]+lower[,p])/2   
    points(plot.lower,n.m,pch="|",cex=1)
    #    points(midpoint,n.m,pch="|",cex=0.5)
    points(mean[,p],n.m,pch=19,cex=0.5)
    points(plot.upper,n.m,pch="|",cex=1)
    # plotting the lines
    for(m in n.m){
      lines(c(plot.lower[m],plot.upper[m]),c(m,m))     
    }
    ## plotting the values - here we need to plot the acutal values

    for(m in n.m){
      ## only scientific for big numbers
      t<-ifelse(m %in% reach.lb,"*","");text.lb<-paste(ifelse(lower[m,p]>100,format(lower[m,p],scientific=TRUE),lower[m,p]),t,sep="")
      if(t=="")text(plot.lower[m],n.m[m]-0.25,text.lb,cex=0.4, pos=2) 
      if(t=="*")text(plot.lower[m],n.m[m]-0.25,text.lb,cex=0.4) 
#      text(plot.lower[m],n.m[m]-0.25,text.lb,cex=0.5) 
      t<-ifelse(m %in% reach.ub,"*","");text.ub<-paste(ifelse(upper[m,p]>100,format(upper[m,p],scientific=TRUE),upper[m,p]),t,sep="") 
      if(t=="") text(plot.upper[m],n.m[m]-0.25,text.ub,cex=0.4, pos=4)
      if(t=="*") text(plot.upper[m],n.m[m]-0.25,text.ub,cex=0.4)
#      text(plot.upper[m],n.m[m]-0.25,text.ub,cex=0.5)
      text(mean[m,p]    ,n.m[m]+0.25,ifelse(mean[m,p]>100,format(mean[m,p],scientific=TRUE),mean[m,p]),cex=0.5) 
    }
    # some helplines
    if(sw.h.abline[p]==1) abline(h=h.abline[p],lty=2)
    if(sw.v.abline[p]==1) {
      abline(v=v.abline[p],lty=2,col="red")
      text(v.abline[p],min(pl.y.min),paste(parameters[p],"=",v.abline[p],sep=" "),cex=1,pos=4,col="red")  
    }
    
  }
  dev.copy2pdf(file = paste("BookChapterOutput/",file,".pdf",sep=""))
}


