### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### CHALLENGE support functions


## the basic model
bg.model <- function(alpha,beta,theta,DINV,IO,INV,SL,ett){
  COE<-Oti<-Ot<-matrix(nrow=N2,ncol=1)
  COE[1]=IO[1]   # as we start in equilibrium initial expected incoming order rate is iniitalized equal to the actual incoming order rate
  for(t in 1:N2){if(t>1){ COE[t]=theta*IO[t-1]+(1-theta)*COE[t-1]}}   # expected incoming order adjustment
  Oti<-COE+alpha*(DINV-INV-beta*SL)+ett    # order decision-rule; allows for noise in the decision rule 
  Ot2<<-apply(Oti,1,function(Oti) max(Oti,ord.lowerbound))  ## orders should be non-zero
  return(Ot2)
}

# the compact version is useful for manual operations as it collapses arguments into parameters and data
bg.model.cmpct <- function(pars,data){
  for(i in 1:length(pars)) assign(names(pars)[i],pars[i])
  for(i in 1:ncol(data)) assign(colnames(data)[i],data[,i])
  Ot2<<-bg.model(alpha=alpha,beta=beta,theta=theta,DINV=DINV,IO=IO,INV=INV,SL=SL,ett=ett)
  return(Ot2)
}

bg.model.demo <- function(par.set1,par.set2,data){
  dev.new(width=6, height=3.75) # proper sizes
  par(mar=c(5, 5, 1, 1),mfrow=c(1,1))#
  lcolr<-c("blue","red","forestgreen","black")
  #plot with actual data
  plot(Week,ACT.ORD,pch=20,type="l",ylab="Orders",col=lcolr[1],lwd=1)
  legend.nm2<-c("ACT.ORD","Dogan Estimate","Dogan Estimate, Our Model","Our Estimate")
  lines(Est.Ord.dogan,lty=2,,col=lcolr[2],lwd=2)  # dogans results
  Ot2<-bg.model.cmpct(pars=par.set1,data=data)
  lines(Ot2,lty=3,col=lcolr[3],lwd=2)    # dogan's estimate with our model
  Ot2<-bg.model.cmpct(pars=par.set2,data=data)  # our estimate with our model
  lines(Ot2,lty=4,col=lcolr[4],lwd=2)   
  title(main="Estimation results compared to those of Dogan (2007) ",cex.main=0.8)
  legend("topleft",legend.nm2,lty=ltype,col=lcolr,cex=0.5, bty="n")
}

# FIGURE C.2.2. Residuals
bg.model.ressqe <- function(pars,data,dgf){
  Ot2<-bg.model.cmpct(pars=pars,data=data)
  rss<-round(sum((Ot2-ACT.ORD)^2),4)
  ser<-round(sqrt(rss/(N2-dgf)),4)
  ess<-round(sum((Ot2-mean(ACT.ORD))^2),4)
  sqe.results<-paste("RSS[=sum(Yi_est-Yi)^2]=",rss,";  SER[=sqrt(RSS/(n-2))]=",ser,"ESS[=sum(Yi_est-avgY)^2]=",ess)
  return(sqe.results)
}

## multiple starts
bg.est.multiple.starts<-function(par1lh,par2lh,par3lh,par4lh,data,y){
  n.p<-length(names.par.bg)
  n.c<-2*n.p+1
  n.1<-length(names.par.bg)+1
  n.2<-2*length(names.par.bg)
  n.start<-length(par1lh)*length(par2lh)*length(par3lh)*length(par4lh)
  ## results matrix
  ms.results<-matrix(nr=n.start,nc=n.c)
  colnames(ms.results)<-c(paste(c(rep("start",n.p),rep("est",n.p)),rep(c(names.par.bg),2),sep="."),"SER") 
  
  # select the indices in the results matrix for which the parameter should be equal to its low value
  i.p1<-1:8
  i.p2<-c(1:4,9:12)
  i.p3<-c(1,2,5,6,9,10,13,14)
  i.p4<-c(1,3,5,7,9,11,13,15,17)
  
  for(i in 1:n.start){
    sw.fail<-0   # for error handling below
    
    # filling the matrix with the start points
    ms.results[i,1]<-ifelse(i %in% i.p1,par1lh[1],par1lh[2])
    ms.results[i,2]<-ifelse(i %in% i.p2,par2lh[1],par2lh[2])
    ms.results[i,3]<-ifelse(i %in% i.p3,par3lh[1],par3lh[2])
    ms.results[i,4]<-ifelse(i %in% i.p4,par4lh[1],par4lh[2])
    curr.start<-ms.results[i,1:n.p];names(curr.start)<-names.par.bg
    start_l<<-(curr.start)
    bg.nls.est.curr<-0
    # we perform the regular nls but add a little error handling for cases that have singular gradient matrix at the start
    # at the start
    tryCatch(bg.nls.est.curr<- 
    nls(
      y ~ bg.model(alpha,beta,theta,DINV,IO,INV,SL,ett),
      start=start_l,
      data=data,
      algorithm="port",  # port should be used if bounds
      lower=lower_b,
      upper=upper_b,
      trace=F,
      nls.control(maxiter=200)
    ), error=function(e) {print(paste(e,"at row",i,sep=" ")); sw.fail<<-1})
    if(sw.fail==0) print(bg.nls.est.curr$par[1,"Estimate"])
    ### storing the results
    ms.results[i,1:n.p]<-round(ms.results[i,1:n.p],3)
    ifelse(sw.fail==0,ms.results[i,n.1:n.2]<-round(summary(bg.nls.est.curr)$par[,"Estimate"],3),ms.results[i,n.1:n.2]<-NA)
    ifelse(sw.fail==0,ms.results[i,ncol(ms.results)]<-round(summary(bg.nls.est.curr)$sigma,3),ms.results[i,ncol(ms.results)]<-NA) # the SER
 #   print(ms.results[i,])

  }
  return(ms.results)
}

#This function calculates the LL

bg.model.ll<-function(par,y){
  
  # we use as external input:
  #sw.mod.par  - what parameters are modified
  #sw.def.par  - the default parameter values  - for those NOT modified
  # bg.data.nls  the data used as input in the optiimzation
  
  # in the ll mode we have just passed on the parameters in par, sw.mod.par and def.par are saved
  par.pars<-def.par  # all are initialy set equal to the 

  par.pars[names(par)]<-sw.mod.par[names(par)]*par[names(par)]+(1-sw.mod.par[names(par)])*def.par[names(par)]

  Ot2<-bg.model.cmpct(pars=par.pars,data=bg.data.nls)
  
  # OLS likelihood function--
  X<-as.matrix(Ot2)
  beta <- par.pars
  n <- nrow(X)                   
  e <<- y - Ot2 
  sigma2<-sum(e^2)/n
  logl <- ((-n/2)*log(2*pi)) - ((n/2)*log(sigma2)) - ((t(e)%*%e)/(2*sigma2))
  return(-logl) # since optim() does minimisation by default.
}

## same but using sd2 as a parameter as well
bg.model.ll.s2<-function(par,y){
  
  Ot2<-bg.model.cmpct(pars=par[-1],data=bg.data.nls)
  
  # OLS likelihood function--
  X<-as.matrix(Ot2)
  beta <- par[-1]
  sigma2 <- par[1]
  if (sigma2 <= 0) return(NA)
  n <- nrow(X)                   
  e <<- y - Ot2                                 # t() = matrix transpose
  logl <- ((-n/2)*log(2*pi)) - ((n/2)*log(sigma2)) - ((t(e)%*%e)/(2*sigma2))
  return(-logl) # since optim() does minimisation by default.
}


# for performing bootstrapping with boot.ci
param.nls.boot.bg<-function(formula,res,index){
  ## can implement here mulitple starts...(beyond automated by optim)
  yt.res<-fit+res[index]
  model<-optim(nls.corr.coeff, method="L-BFGS-B", fn=bg.model.ll,lower=lower_b,upper=upper_b,y=yt.res)
  par.est<<-model$par
  return(model$par)
}

# plotting boot distributions
plot.boot<-function(boot.data,pl.par1,pl.par2,par.est,nsdq){
  sdf<-ifelse(nsdq==1,15.8,ifelse(nsdq==2,2.3,ifelse(nsdq==3,0.1)))
  dev.new(width=6, height=3.75) # proper sizes
  par(mar=c(5, 5, 1, 1),mfrow=c(2,2))#
  # plot parameter 1
  hist( boot.data$t[,pl.par1],xlab=names(par.est)[pl.par1],main=paste("Histogram of",names(par.est)[pl.par1],sep=" "),cex.main=1)
  
  qqnorm( boot.data$t[,pl.par1],ylab=names(par.est)[pl.par1],main=paste("Quantiles of",names(par.est)[pl.par1],sep=" "),cex.main=1)
  qqline( quantile( boot.data$t[,pl.par1], c(sdf,1-sdf) ),lty=2,col="red")
  # plot parameter 2
  hist( boot.data$t[,pl.par2],xlab=names(par.est)[pl.par2],main=paste("Histogram of",names(par.est)[pl.par2],sep=" "),cex.main=1)
  qqnorm( boot.data$t[,pl.par2],ylab=names(par.est)[pl.par2],main=paste("Quantiles of",names(par.est)[pl.par2],sep=" "),cex.main=1)
  qqline( quantile( boot.data$t[,pl.par2], c(sdf,1-sdf) ),lty=2,col="red")
}

