### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### Linear example in the appendix
### this script allows testing and comparing the basic MLE and bootstrapping tools on a most simple example



## LR surface interval 
## designed specifically for the linear example (see appendix)
ll.surf.2par<-function(N,sde,a.range,b.range,a.range.2d,b.range.2d,N.data,b.const.index,a.const.index,df,df.2d,LLmin.adj,seed){
  r.dat<-1:N.data
  ln.L<-al<-bl<-matrix(nr=N.data,nc=N.data);
  ln.L.2d<-a.2d<-b.2d<-matrix(nr=N.data,nc=N.data);
  
  set.seed(seed)
  Na<-N*2
  sdea<-sde*2
  xl<-(1:N);          xlna<-(1:Na)
  bt<-b*xl;           btna<-b*xlna;
  et<-rnorm(N,0,sde);   set.seed(seed); etsa<-rnorm(N,0,sdea);   set.seed(seed); etna<-rnorm(Na,0,sde)
  yl<-a+bt+et;          ylsa<-a+bt+etsa;          ylna<-a+btna+etna
  lin1.ols.model <- lm(yl ~ xl)
  lin1.ols.model.sa <- lm(ylsa ~ xl)
  lin1.ols.model.na <- lm(ylna ~ xlna)
  a.est<-lin1.ols.model$coefficients[1]
  b.est<-lin1.ols.model$coefficients[2]
  a.est.sa<-lin1.ols.model.sa$coefficients[1]
  b.est.sa<-lin1.ols.model.sa$coefficients[2]
  a.est.na<-lin1.ols.model.na$coefficients[1]
  b.est.na<-lin1.ols.model.na$coefficients[2]
  LL.est<-logLik(lin1.ols.model)
  
  ln.L.sa<-ln.L.na<-matrix(nr=N.data,nc=N.data);
  ln.L.ab<-function(a,b,N,sd,yl,xl) {-N/2*(log(2*pi)+log(sd^2)) -(1/(2*sd^2))*sum((yl-a-b*xl)^2)}
  sd.est<-(1/N)*sum((yl-a.est-b.est*xl)^2)
  sd.est.sa<-(1/N)*sum((ylsa-a.est.sa-b.est.sa*xl)^2)
  sd.est.na<-(1/Na)*sum((ylna-a.est.na-b.est.na*xlna)^2)
  for(i in r.dat){
    for(j in r.dat){
      al[i,j]<-a.est-0.5*a.range+a.range*(i-1)/(N.data-1)
      bl[i,j]<-b.est-0.5*b.range+b.range*(j-1)/(N.data-1) 
      ln.L[i,j]<-ln.L.ab(al[i,j],bl[i,j],N,sd.est,yl,xl)
      ln.L.sa[i,j]<-ln.L.ab(al[i,j],bl[i,j],N,sd.est.sa,ylsa,xl)
      ln.L.na[i,j]<-ln.L.ab(al[i,j],bl[i,j],Na,sd.est.na,ylna,xlna)
    }
  }
  
  lnmax1<-max(ln.L)
  lnmax<-lnmax1*0.98
  lnmin1<-min(ln.L[,b.const.index])
  lnmin<-lnmin1+0.2*(lnmin1-lnmax)
  zrange=c(lnmin:lnmax)
  #deriving the confidence bounds the chi-squre for different degrees of freedom
  LL.est<-logLik(lin1.ols.model)
  LL.ci.single<-lnmax1-qchisq(.95, df=1)/2;LL.ci.single
  LL.ci.set<-lnmax1-qchisq(.95, df=3)/2;LL.ci.set
  LL.ci<-lnmax1-qchisq(.95, df=df)/2;LL.ci
  
  
  
  # now for the alternatives
  
  # for the alternative LL's
  lnmax.sa<-max(ln.L.sa)  
  lnmax.na<-max(ln.L.na)
  LL.ci.sa<-lnmax.sa-qchisq(.95, df=df)/2
  LL.ci.na<-lnmax.na-qchisq(.95, df=df)/2
  lnmax.var1<-max(ln.L,ln.L.sa,ln.L.na)*0.95
  lnmin.var<-max(LLmin.adj,min(ln.L,ln.L.sa,ln.L.na)*0.6)
  
  #derive the intersections with the bound
  ln.L.ci.a<-function(a.ci) {abs(-N/2*(log(2*pi)+log(sd.est^2)) -(1/(2*sd.est^2))*sum((yl-a.ci-b.est*xl)^2)-LL.ci)}
  a.ci.low <- optimize(ln.L.ci.a,c(al[1,1],al[a.const.index,1]))$minimum
  a.ci.high<-a.est+(a.est-a.ci.low)
  ln.L.ci.b<-function(b.ci) {abs(-N/2*(log(2*pi)+log(sd.est^2)) -(1/(2*sd.est^2))*sum((yl-a.est-b.ci*xl)^2)-LL.ci)}
  b.ci.low <- optimize(ln.L.ci.b,c(bl[1,1],bl[1,b.const.index]))$minimum
  b.ci.high<-b.est+(b.est-b.ci.low)
  
  # create the conf bound for the perspective graph
  # We need a separate boundary for this to capture the larger space
  for(i in r.dat){
    for(j in r.dat){
      a.2d[i,j]<-a.est-0.5*a.range.2d+a.range.2d*(i-1)/(N.data-1)
      b.2d[i,j]<-b.est-0.5*b.range.2d+b.range.2d*(j-1)/(N.data-1) 
      ln.L.2d[i,j]<-ln.L.ab(a.2d[i,j],b.2d[i,j],N,sd.est,yl,xl)
    }
  }
  ln.L.persp<-ln.L.2d;ln.L.persp[ln.L.2d< lnmin]<-NA
  LL.ci.2d<-lnmax1-qchisq(.95, df=df.2d)/2
  len<-201
  phi <- seq(0, 2*pi, len = len)
  phi.val<-phi[1]
  fr.c<-LL.rc<-rep(NA,len)
  crit<-0.025
  delta.LL.phi<-function(fr) {
    ar <- a.est+fr*a.range.2d/2*cos(phi.val)
    br <- b.est+fr*b.range.2d/2*sin(phi.val)  
    delta<<-abs(-N/2*(log(2*pi)+log(sd.est^2)) -(1/(2*sd.est^2))*sum((yl-ar-br*xl)^2)- LL.ci.2d)/abs(LL.ci.2d-lnmax1) 
  }
  for(i in 1:len){
    phi.val<-phi[i]
    r.op <- optimize(delta.LL.phi,c(0,1))
    fr.c[i]<-ifelse(r.op$objective<crit,r.op$minimum,NA)  
  }
  arc <- a.est+fr.c*a.range.2d/2*cos(phi)
  brc <- b.est+fr.c*b.range.2d/2*sin(phi)
  for (i in 1:len){LL.rc[i]<-ln.L.ab(arc[i],brc[i],N,sd.est,yl,xl)}
  
  #plot the graphs
  return({
    #    op
    #    par(oma=c(2,2,2,2))
    #   dev.print(png, width=480, height=480)
    #   par(mfrow=c(2,2));
    layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE));
    #    plot(al[,b.const.index],ln.L[,b.const.index],type="l",xlab="a",ylab="Log Likelihood");
    
    plot(al[,b.const.index],ln.L[,b.const.index],type="l",xlab="a",ylab="Log Likelihood",ylim=c(lnmin,lnmax));
    abline(h=LL.ci,lty=2);
    abline(v=a.est,lty=2);
    abline(v=a.ci.low,lty=2,col="red");
    abline(v=a.ci.high,lty=2,col="red");
    text(a.ci.low,lnmax1+2,"Lower", cex=0.8)
    text(a.ci.high,lnmax1+2,"Upper", cex=0.8)
    text(a.est,lnmax1+2,"MLE", cex=0.8)
    #    title("Log Likelihood and confidence bounds for parameters a and b",cex=0.5);
    
    plot(bl[a.const.index,],ln.L[a.const.index,],type="l",xlab="b",ylab="Log Likelihood",ylim=c(lnmin,lnmax));
    abline(h=LL.ci,lty=2);
    abline(v=b.est,lty=2);
    abline(v=b.ci.low,lty=2,col="red");
    abline(v=b.ci.high,lty=2,col="red");
    text(b.ci.low,lnmax1+2,"Lower", cex=0.8)
    text(b.ci.high,lnmax1+2,"Upper", cex=0.8)
    text(b.est,lnmax1+2,"MLE", cex=0.8)    
    
    persp(a.2d[,1],b.2d[1,],ln.L.persp,
          theta = 50, phi = 40, expand = 0.5, 
          ltheta = 120, shade = 0.25, ticktype = "detailed",nticks=4,
          xlim=c(a.2d[1,1],a.2d[N.data,1]), ylim=c(b.2d[1,1],b.2d[1,N.data]),zlim=range(zrange,na.rm=TRUE),
          xlab="a",ylab="b",zlab="LL",
          scale=T,
    ) -> res
    lines(trans3d(arc,brc,LL.rc, res), col = "red", lwd = 3)
    
    plot(bl[a.const.index,],ln.L[a.const.index,],type="l",xlab="b",ylab="Log Likelihood",ylim=c(lnmin.var,lnmax.var1));
    lines(bl[a.const.index,],ln.L.sa[a.const.index,],type="l",lty=1);
    lines(bl[a.const.index,],ln.L.na[a.const.index,],type="l",lty=1);
    abline(v=b.est,lty=2);
    abline(h=LL.ci,lty=2);
    abline(h=LL.ci.sa,lty=2);
    abline(h=LL.ci.na,lty=2);
    text(b.est,lnmax+1,"LL (Example)", cex=0.8)
    text(b.est,lnmax.sa+2,"LL (High SD)", cex=0.8)
    text(b.est,lnmax.na+2,"LL (High N)", cex=0.8)
    c("a.est",a.est,"b.est",b.est,"LL.est",LL.est,"lnmax",lnmax1,"a.ci.low",a.ci.low,"a.ci.high",a.ci.high,"b.ci.low",b.ci.low,"b.ci.high",b.ci.high)
  }
  )
}