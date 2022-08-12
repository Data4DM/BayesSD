### Code Developed by Jeroen Struben 
### version November 2013
### for:
###  Struben, Jeroen, John Sterman, and David Keith, (2014) 
### “Parameter and Confidence Interval Estimation in Dynamic Models: Maximum Likelihood and Bootstrapping Methods” 
### CH1 in: Oliva, R, N. Osgood, and H. Rahmandad (Eds) Dynamic Modeling Analytical Handbook, MIT Press, Cambridge MA 

### Linear example in the appendix
### this script allows testing and comparing the basic MLE and bootstrapping tools on a most simple example

## setting the working directory
getwd()
#setwd("/Users/jeroenstruben/Documents/1. Current Research/Book Chapter MLE")

## opening relevant libraries
source("Scripts/CH1_LinEx_Functions.R")  

#EX1 Linear model, 1 parameter: y=c+et
seed<-200
set.seed(seed)
N<-30
t<-(1:N)
a<-20
b<-0.2
bt<-b*t
sde<-1
et<-rnorm(N,0,sde)
yt<-a+bt+et
reg.dat<-cbind(yt,t)
cor(t,yt)
plot(t,yt,pch=16)

#General estimation values
conf.tail<-0.05

#1a) using MLE 
#assumptions of heterosk (var in x constant), explanatory variable (T) measured with out errors
# residuals (diff between ymeas and ypred), measured on scale of y , are normally distributed
#-> OLS is feasible

#1ai  regression
lin1.ols.model <- lm(yt ~ t)

#lin1.ols.res <- yt - (lin1.ols.fit$coefficients[[2]]*T+lin1.ols.fit$coefficients[[1]])
lin1.ols.res<-residuals(lin1.ols.model)

#1aiii summary
layout(matrix(c(1), 1, 1, byrow = TRUE));
plot(t,yt, main="Linear Model with MLE")
abline(lin1.ols.model)
lin1.ols.summary<-summary(lin1.ols.model)
lin1.ols.summary

lin1.ols.model$coefficients



#1aiv  "manual" derivation using statistics of "the famous five" (sumy2 sumy sumx2 sumx sumxy)
XY<-cbind(1,reg.dat)
t(XY)%*%XY
#now we need to get the corrected sums (SSX, SSY, SSXY) which we can derive from the famous 5
# the MLE estimation of b=SSXY/SSX (see page 393 and p 271 af in the R book)
library(MASS)
X<-cbind(1,t)
Y<-yt
XpX<-ginv(t(X)%*%X)            #(X'X)^-1
ab.est<-XpX%*%t(X)%*%Y  # X'Xb=X'Y --> b=(X'X)^-1X'Y
ab.est


#### constructing the log likelihood function
a.est<-lin1.ols.model$coefficients[1]
b.est<-lin1.ols.model$coefficients[2]
ln.LL<-function(a,b,N,sd,yl,xl) {-N/2*(log(2*pi)+log(sd^2)) -(1/(2*sd^2))*sum((yl-a-b*xl)^2)}
ln.LL<-function(a,b,N,sd,yl,xl) {-N/2*(log(2*pi)+log(sd^2)) -(1/(2*sd^2))*sum((yl-a-b*xl)^2)}

# reporting all the LR approach results
ll.surf.2par(N=30,sde=1,a.range=1,b.range=0.06,a.range.2d=2,b.range.2d=0.08,N.data=51,b.const.index=26,a.const.index=26,df=2,df.2d=1,LLmin.adj=-100,seed=200)

