### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### Functions to derive LR Confidence Intervals



# Analytical condidence intervals
anal.conf<-function(model,range,parnames){
  names(model$par) <- parnames
  fisher_info<-solve(model$hessian)
  prop_sigma<-sqrt(diag(fisher_info))
  prop_sigma<-diag(prop_sigma)
  names(prop_sigma) <- names(model$par)
  upper<-model$par+range*diag(prop_sigma)
  lower<-model$par-range*diag(prop_sigma)
  interval<-data.frame(value=model$par,lower=lower, upper=upper)
  return(list(par=model$par,interval=interval,model$value))
}


#LR Univarite and Profile confidence intervals
LL.multipar.plot<-function(model,par.est,y,sigma2,par.1d,par.1d.range,par.2d,par.2d.range,alpha.conf,df.1p,df.2p,sw.same.LL.range,LL.range.rel,sw.2dplot,sw.profile,pl.theta,pl.phi,filename){
  
  
  if(sw.profile==1){
    df.1p<-1;     # in case of profile interval df=1 by definition
    sw.2dplot<-0  # 2d plot feature does not make sense for profile interval
  }
  
  vpar.names<-names(par.est[par.1d])
  set.seed(seed)   # for optimization start points
  Npar<-length(par.1d)
  np<-1:Npar
  par1<-par.2d[1]
  par2<-par.2d[2]
  r.dat<-1:N.data
  # first, for all individual parameters  - univariate - we plot the results, holding others constant
  # we do all the parameters at the same time
  LL.1par<-vpar<-matrix(nr=N.data,nc=Npar)
  for(p in np){
    par.est.p<-par.est[p]
    for(i in r.dat){
      #      vpar[i,p]<-par.est.p-0.5*par.range.p+par.range.p*(i-1)/(N.data-1)
      vpar[i,p]<-par.1d.range[1,p]+(par.1d.range[2,p]-par.1d.range[1,p])*((i-1)/(N.data-1))^x.rtsj[p] 
      par.set<-par.est;par.set[p]<-vpar[i,p]
      #      par.set.sig<-c(sigma2,par.set)
      par.set.sig<-c(par.set)
      #     print(par.set.sig)
      LL.1par[i,p]<--model(par.set.sig,y)
      # using the LL function - creating a profile by reestimating the others at each point of i
      if(sw.profile==1){
        LL.1par[i,p]<-1e6   # initialization at an extreme value (very far from MLE)
        par.opt.ll.curr<<-par.set[-p]
        lower_b_curr<<-all_lower_b[names(par.opt.ll.curr)]
        upper_b_curr<<-all_upper_b[names(par.opt.ll.curr)]
        #mod.par<<-mod.par.none[names(par.set)];mod.par[names(par.opt.ll.curr)]<<-1  ## CHG NOV 25 2013
        sw.mod.par<<-rep(0,length(par.set));names(sw.mod.par)<<-names(par.set);sw.mod.par[names(par.opt.ll.curr)]<<-1
        #        def.par<-c(sigma2=1,par.set)
        def.par<<-par.set #[names(par.set)]
        #    os.model.ll(par.opt.ll.curr,y=ACT.TPO)
        #    est.ll.curr <- optim(par.opt.ll.curr,os.model.ll,hessian=TRUE,method="L-BFGS-B",y=ACT.TPO,lower=lowerb,upper=upperb,control=list(maxit=1000))
        #        est.ll.curr <- optim(par.opt.ll.curr,os.model.ll,hessian=TRUE,method="BFGS",y=ACT.TPO,control=list(maxit=1000))   ## CHG NOV 25 2013
        est.ll.curr <- optim(par=par.opt.ll.curr,model,hessian=TRUE,method=method,y=y,control=list(maxit=1000),lower=lower_b_curr,upper=upper_b_curr)
        
        LL.1par[i,p]<- -est.ll.curr$value
        #        n.par[i,names(par.opt.ll.curr)]<-est.ll.curr$par[names(par.opt.ll.curr)]
        #        n.par[i,n.par.var]<-par.curr[n.par.var]
      }
      
    }
  }
  vpar<<-vpar
  LL.1par<<-LL.1par
  # now, for the 2D, we pick two combinations - selected 
  LL.2par<-vpar.2d1<-vpar.2d2<-matrix(nr=N.data,nc=N.data)
  
  if(sw.2dplot==1){
    par.2d.min<-par.est[par.2d]-par.2d.range
    par.2d.max<-par.est[par.2d]+par.2d.range
    for(i in r.dat){
      for(j in r.dat){
        vpar.2d1[i,j]<-par.2d.min[1]+(par.2d.max[1]-par.2d.min[1])*((i-1)/(N.data-1))^x.rtsj.2d[1] 
        vpar.2d2[i,j]<-par.2d.min[2]+(par.2d.max[2]-par.2d.min[2])*((j-1)/(N.data-1))^x.rtsj.2d[2] 
        par.set<-par.est;par.set[par1]<-vpar.2d1[i,j];par.set[par2]<-vpar.2d2[i,j];
        #      par.set.sig<-c(sigma2,par.set)
        par.set.sig<-c(par.set)
        LL.2par[i,j]<-  -model(par.set.sig,y)
      }
    } 
  }

  # LL max, confidence bounds, and plot ranges
  LL.1p.mami<-matrix(nr=Npar,nc=2) # the max confidence level and min
  LL.2p.mami<-matrix(nr=1,nc=2) # the max confidence level and min  
  LL.1p.mami[,1]<-apply(LL.1par,2,max)  # should of course be the same for all, but there may be local maxima
  LL.2p.mami[1]<-max(LL.2par)
  LL.1p.mami[,2]<-apply(LL.1par,2,min)
  LL.2p.mami[2]<-min(LL.2par)
  LL.max<-max(LL.1p.mami[,1])
  LL.conf.1p<<-LL.max-qchisq(1-alpha.conf, df=df.1p)/2   #deriving the confidence bounds the chi-squre for different degrees of freedom
  LL.conf.2p<<-LL.max-qchisq(1-alpha.conf, df=df.2p)/2
  
  LL.min.1d<-LL.conf.1p-LL.range.rel*(LL.max-LL.conf.1p)
  LL.min.2d<-LL.conf.2p-LL.range.rel*(LL.max-LL.conf.2p)
  
  if(sw.same.LL.range==1){LL.1p.mami[,2]<-LL.min.1d;LL.2p.mami[2]<-LL.min.2d}
  
  #  print(LL.2p.mami)
  LL.1p.mami.plot<-LL.1p.mami # the max confidence level and min
  LL.2p.mami.plot<-LL.2p.mami # the max confidence level and min
  LL.1p.mami.plot[,1]<-LL.1p.mami[,1]*ifelse(LL.1p.mami[,1]<0,0.98,1/0.98)
  LL.2p.mami.plot[1]<-LL.2p.mami[1]*ifelse(LL.2p.mami[,1]<0,0.98,1/0.98)
  LL.1p.mami.plot[,2]<-LL.conf.1p-LL.range.rel*(LL.1p.mami[,1]-LL.conf.1p)
  LL.2p.mami.plot[2]<-LL.conf.2p-LL.range.rel*(LL.2p.mami[1]-LL.conf.2p)
  #  print(LL.2p.mami.plot)
  
  LL.1p.yrange<-matrix(nr=Npar,nc=2)
  LL.1p.yrange[,1]=LL.1p.mami.plot[,2]
  LL.1p.yrange[,2]=LL.1p.mami.plot[,1]
  LL.2p.zrange=c(LL.2p.mami.plot[2],LL.2p.mami.plot[1])
  
  #check for what index the max is attained
  LL1p.max.index<-rep(NA,Npar)
  for(p in np){
    for(i in r.dat){
      if(LL.1par[i,p]==LL.1p.mami[p,1]) LL1p.max.index[p]<-i
    }
  }
  
  
  #derive the intersections with the confidence boundry for tye univariate plot
  LL.conf.delta<-function(par.delta) {   # a function that calculates the delta between LL and the LL for the confidence region
    par.set<-par.est
    par.set[p]<-par.delta
    #      par.set.sig<-c(sigma2,par.set)
    par.set.sig<-c(par.set)  
    abs(-model(par.set.sig,y)-LL.conf.1p)
  }
  
  # now we minimize the gap and define that as our lower and upper boundaries
  par.ci<-matrix(nr=Npar,ncol=2)
  for(p in np){
    p<<-p
    max.ind<<-ifelse(LL1p.max.index[p]==NA,N.data,LL1p.max.index[p])
    #    dvar.minr<-par.est[p]-0.5*par.1d.range[1,p]
    dvar.minr<-par.1d.range[1,p]
    dvar.MLE<-par.est[p]
    #    dvar.maxr<-par.est[p]+0.5*par.1d.range[p]
    dvar.maxr<-par.1d.range[2,p]
    ## for the univariate ll we just find the LL closest to the confidence level
    if(sw.profile==0){
      par.ci[p,1]<- optimize(LL.conf.delta,c(dvar.minr,dvar.MLE))$minimum;
      par.ci[p,2]<- optimize(LL.conf.delta,c(dvar.MLE,dvar.maxr))$minimum  
    }
    # for the profile ll we have to explore the LL curve for the profile parameter
    if(sw.profile==1){
      curr.max.ind<-which(LL.1par[,p]==max(LL.1par[,p]))
      # we distinguish between left and right interval
      i.left<-c(1:curr.max.ind)  
      i.right<-seq(from=curr.max.ind+1,to=N.data)
      #left interval
      LL.prof<-LL.1par[,p];LL.prof[i.right]<-1e10
      i.conf<-which(abs(LL.prof-LL.conf.1p)==min(abs(LL.prof-LL.conf.1p)))
      #      print(i.conf)
      par.ci[p,1]<-vpar[i.conf[1],p]*ifelse(length(i.conf)>1,0.1,1)  # if they are all the same (ie length(i.conf) >1 the range is out of bounds
      #right interval
      LL.prof<-LL.1par[,p];LL.prof[i.left]<-1e10  # we ignore the left side
      i.conf<-which(abs(LL.prof-LL.conf.1p)==min(abs(LL.prof-LL.conf.1p)))
      #     print(i.conf)
      par.ci[p,2]<-vpar[i.conf[length(i.conf)],p]*ifelse(length(i.conf)>1,10,1) # if they are all the same (ie length(i.conf) >1 the range is out of bounds
      
    }
    
  } 

  # create the conf bound for the bivariate perspective graph
  if(sw.2dplot==1){
    LL.persp<-LL.2par;
    LL.persp[LL.persp<LL.2p.zrange[1]]<-NA   # we ignore values outside the relevant range
    
    ## parameter initialization
    len<-201
    phi <- seq(0, 2*pi, len = len)
    fr.c<-LL.rc<-rep(NA,len)
    crit<-0.025
    phi.val<-phi[1]
    
    #derive the intersections with the 2 dimensional confidence boundry as a function of angle phi
    # designed for and used in the function "LL.multipar.plot" for the bivariate plots 
    delta.LL.phi<-function(fr) {
      par.set<-par.est
      par.set[par1] <- par.est[par1]+fr*par.2d.range[1]*cos(phi.val)
      par.set[par2] <- par.est[par2]+fr*par.2d.range[2]*sin(phi.val)  
      par.set.sig<-c(par.set)

      delta<<-abs(-model(par.set.sig,y)-LL.conf.2p)/abs(LL.conf.2p-LL.2p.mami[1]) 
    }
    # we use the function delta.LL.phi which measures the difference between the LL and the LLbound for a point on a line r with angle phi
    ## we do this going around from phi= 0[i=1] to phi= 360 [i=len] 
    ## we only care for ppoints that are actually close enough
    
    for(i in 1:len){
      phi.val<-phi[i]
      r.op <- optimize(delta.LL.phi,c(0,1))
      fr.c[i]<-ifelse(r.op$objective<crit,r.op$minimum,NA) 
      #    if(i==10 | i==110) print(c(i,delta.LL.phi(0.1),delta.LL.phi(0.2),delta.LL.phi(0.8)))
      #    if(i==10 | i==110) print(c(r.op$objective,r.op$minimum,fr.c[i]))
    }
#    print(phi);    print(fr.c)
    rc.p1 <- par.est[par1]+fr.c*par.2d.range[1]*cos(phi)
    rc.p2 <- par.est[par2]+fr.c*par.2d.range[2]*sin(phi)
    #  rc.p1 <- par.2d.range[1,1]+fr.c*(par.2d.range[1,2]-par.2d.range[1,1])/2*cos(phi)
    #  rc.p2 <- par.2d.range[2,1]+fr.c*(par.2d.range[2,2]-par.2d.range[2,1])/2*sin(phi) 
    # get the associated LN

    for (i in 1:len){
      par.set<-par.est
      par.set[par1] <- rc.p1[i]
      par.set[par2] <- rc.p2[i]
      #      par.set.sig<-c(sigma2,par.set)
      par.set.sig<-c(par.set)

      if(all(!is.na(par.set.sig))) LL.rc[i]<- -model(par.set.sig,y)
    }
    
    #set the bivariate regions
    range.p1<-rc.p1[complete.cases(rc.p1)]
    range.p2<-rc.p2[complete.cases(rc.p2)]
    par.ci[par1,]<-c(min(range.p1),max(range.p1))
    par.ci[par2,]<-c(min(range.p2),max(range.p2))
  }
  print(par.ci)
  
  #plot the graphs
  return({
    
    N.plots<-Npar
    N.col<-2;N.row<-ceiling(N.plots/N.col);
    dev.new(width=6, height=3.75) # proper sizes
    par(mar=c(5, 5, 1, 1),mfrow=c(N.row,N.col));# Adjust the margin of plot (bottom,left,top,right)
    
    # the 1-dimensional plots
    for (p in np){
      
      c.xlim<-c(par.1d.range[1,p],par.1d.range[2,p])
      c.ylim<-c(LL.1p.mami.plot[p,2],LL.1p.mami.plot[p,1])
      vpar.names.plot<-var.names.base
      if(sw.log[p]==0) plot(vpar[,p],LL.1par[,p],type="l",xlab=vpar.names.plot[p],ylab="Log Likelihood",ylim=c.ylim,xlim=c.xlim);
      if(sw.log[p]==1) plot(vpar[,p],LL.1par[,p],log="x",type="l",xlab=vpar.names.plot[p],ylab="Log Likelihood",ylim=c.ylim,xlim=c.xlim);
      
      abline(h=LL.conf.1p,lty=2);
      abline(v=par.est[p],lty=2);
      if(par.ci[p,1]>c.xlim[1]) abline(v=par.ci[p,1],lty=2,col="red");
      if(par.ci[p,2]<c.xlim[2]) abline(v=par.ci[p,2],lty=2,col="red");
      if(par.ci[p,1]>c.xlim[1]) text(par.ci[p,1],LL.1p.mami[p,1]+0,"Lower", cex=0.8)
      if(par.ci[p,2]<c.xlim[2]) text(par.ci[p,2],LL.1p.mami[p,1]+0,"Upper", cex=0.8)
      text(par.est[p],LL.1p.mami[p,1]+2,"MLE", cex=0.8)
      #    title("Log Likelihood and confidence bounds for parameters a and b",cex=0.5);  
    } 
    if(sw.2dplot==1){
      par(mfrow=c(1,1));
      persp(vpar.2d1[,1],vpar.2d2[1,],LL.persp,
            theta = pl.theta, phi = pl.phi, expand = 0.5, 
            ltheta = 120, shade = 0.25, ticktype = "detailed",nticks=4,
            xlim=c(vpar.2d1[1,1],vpar.2d1[N.data,1]), ylim=c(vpar.2d2[1,1],vpar.2d2[1,N.data]),zlim=range(LL.2p.zrange,na.rm=TRUE),
            xlab=vpar.names.plot[par1],ylab=vpar.names.plot[par2],zlab="Log Likelihood",cex=0.8,
            scale=T,
      ) -> res;
      lines(trans3d(rc.p1,rc.p2,LL.rc, res), col = "red", lwd = 3)
    };
    #    title(main="Time per Order & Desired time per Order", col.main="black", font.main=2)
    v.type<-ifelse(sw.2dplot==1,"_BIV",ifelse(sw.profile==0,"_UNIV","_PROFILE") )
    dev.copy2pdf(file = paste("BookChapterOutput/",filename,v.type,".pdf",sep=""));
    # report the results
{
  print(c("bound",vpar.names.plot));
  print(c("lower",round(par.ci[,1],3)));
  print(c("MLE"  ,round(par.est,3)));
  print(c("upper",round(par.ci[,2],3)));
  print(c("sw.profile=",sw.profile))
  
};
    
  }
  )
  
}
