### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

###  Manual boot functions


# the first performs the actual MLE of the resampled y
param.nls.boot<-function(formula,res,fit,index,start.matrix,boot.par.names,sw.report.ll){
  
  # resampling   using the resampled error terms res[index]
  yt.res<<-fit+res[index]
  
  ## creating multiple starts
  n.starts<-length(start.matrix[,1])
  par.LL<-rep(NA,n.starts)
  ## matrices for reporting the results
  par.matrix<-matrix(nr=n.starts,nc=length(boot.par.names))
  colnames(par.matrix)<-boot.par.names 
  
  for( i in 1:n.start){
    boot.start.par.var<-start.matrix[i,]  
#    model<-optim(boot.start.par.var,os.model.ll,hessian=TRUE,method="BFGS",y=yt.res,control=list(maxit=5000))
    model<-optim(boot.start.par.var,formula,hessian=TRUE,method="BFGS",y=yt.res,control=list(maxit=5000),lower=lower_b,upper=upper_b)
    
    #   model<-optim(boot.start.par.var,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=yt.res,lower=lowerb,upper=upperb,control=list(maxit=2500))
    par.LL[i]<--model$value
    par.matrix[i,]<-model$par
  } 
  # selectt the "global" MLE
  par.matrix.LL<-cbind(par.matrix,par.LL,start.matrix)
  i.sel<-which(par.LL==max(par.LL))[1]   # we select 1 value
  count.ll<-ifelse(sw.report.ll==1,1,0)
  n.par.select<-length(par.matrix[1,])+count.ll # we don't return the start values that corresponds with bestfit 
  par.sel<-par.matrix.LL[i.sel,1:n.par.select];
  names(par.sel)<-colnames(par.matrix.LL)[1:n.par.select]
  return(par.sel)
}



## a reduced function to make param.nls.boot compatible with automated boot.
param.nls.boot.autom<-function(formula,res,index){
  fit<-fit
  start.matrix<-start.matrix
  boot.par.names<-names(par.opt)
  param.nls.boot(formula=formula,res=res,fit=fit,index=index,start.matrix=start.matrix,boot.par.names=boot.par.names,sw.report.ll=1)
}
### as above but now the "forumula" is taken out
param.nls.boot.wof<-function(res,fit,index,start.matrix,boot.par.names,sw.report.ll){
  
  # resampling   using the resampled error terms res[index]
  yt.res<<-fit+res[index]
  
  ## creating multiple starts
  n.starts<-length(start.matrix[,1])
  par.LL<-rep(NA,n.starts)
  ## matrices for reporting the results
  par.matrix<-matrix(nr=n.starts,nc=length(boot.par.names))
  colnames(par.matrix)<-boot.par.names 
  
  for( i in 1:n.start){
    boot.start.par.var<-start.matrix[i,]  
    model<-optim(boot.start.par.var,os.model.ll,hessian=TRUE,method="BFGS",y=yt.res,control=list(maxit=5000))
#    model<-optim(boot.start.par.var,os.model.ll,hessian=TRUE,method="BFGS",y=yt.res,control=list(maxit=5000),lower=lower_b,upper=upper_b)
    #    model<-optim(boot.start.par.var,formula,hessian=TRUE,method="BFGS",y=yt.res,control=list(maxit=5000))
    
    #   model<-optim(boot.start.par.var,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=yt.res,lower=lowerb,upper=upperb,control=list(maxit=2500))
    par.LL[i]<--model$value
    par.matrix[i,]<-model$par
  } 
  # selectt the "global" MLE
  par.matrix.LL<-cbind(par.matrix,par.LL,start.matrix)
  i.sel<-which(par.LL==max(par.LL))[1]   # we select 1 value
  count.ll<-ifelse(sw.report.ll==1,1,0)
  n.par.select<-length(par.matrix[1,])+count.ll # we don't return the start values that corresponds with bestfit 
  par.sel<-par.matrix.LL[i.sel,1:n.par.select];
  names(par.sel)<-colnames(par.matrix.LL)[1:n.par.select]
  return(par.sel)
}

## a reduced function to make param.nls.boot compatible with automated boot.
param.nls.boot.autom.wof<-function(res,index){
  fit<-fit
  start.matrix<-start.matrix
  boot.par.names<-names(par.opt)
  par.est.boot<-param.nls.boot.wof(res=res,fit=fit,index=index,start.matrix=start.matrix,boot.par.names=boot.par.names,sw.report.ll=sw.report.ll)
  return(par.est.boot)
}

manual.boot<-function(res,fit,seed,nb,N,start.matrix,boot.par.names){
  boot.pars.man<-boot.pars.man.cum<-matrix(nr=nb,nc=length(boot.par.names));
  colnames(boot.pars.man)<-colnames(boot.pars.man.cum)<-boot.par.names
  LL.boot.man<-rep(NA,nb)
  set.seed(seed)
  N<-length(res)
  for(i in 1:nb){
    # the resampling
    index=sample(1:N,replace=TRUE)
    pars<-param.nls.boot.wof(res=res,fit=fit,index=index,start.matrix=start.matrix,boot.par.names=boot.par.names,sw.report.ll=1)
    #storing the results
    boot.pars.man[i,boot.par.names]<-pars[boot.par.names]
    LL.boot.man[i]<-pars["LL"]  # the resampled y is saved in the exectution of param.nls.boot (this is not so meaningful as we expect different LLs for different error terms)
    
    print.progress(current.iteration=i,n.iterations=nb)
  }
  LL.boot.man<<-LL.boot.man
  print("note: also saved LL.boot.man, the LL for the bootstrap results")
  return(boot.pars.man)
}



## measuring duration and reporting progress
print.progress<-function(current.iteration,n.iterations){  
  rel.progr<-current.iteration/n.iterations
  if(current.iteration==1) v.start.time<<-v.prev.time<<-Sys.time()
  if(round(10*rel.progr)==(10*rel.progr)) {
    v.curr.time<-Sys.time()
    v.curr.time.taken<-v.curr.time-v.prev.time
    print("time taken for the last 10 %")
    print(v.curr.time.taken)
    print(paste("total progress=",100*rel.progr,"%",sep=" ")) 
    v.prev.time<<-v.curr.time
  }
  if(current.iteration==n.iterations) {
    v.end.time = Sys.time(); 
    v.time.taken<-v.end.time-v.start.time
    print("time taken=")
    print(v.time.taken)
    print(paste("for",current.iteration,"resamplings",sep=" "))
  }
}
