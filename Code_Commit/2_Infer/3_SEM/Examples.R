# Examples from Chapter 3
# Peter S. Hovmand, PhD, Washington University in St. Louis
#
# Notes: 
# 1. The sem R package has been updated since the chapter was first written
# which impacted the syntax used to call the sem() function and the reporting
# of output. These examples modified to work with sem package 3.1-3 released on
# April 9, 2014.
# 2. The examples were developed and run in RStudio version 0.98.501. 
# 3. The Vensim models and export to .tab were completed on Vensim DSS version 6.2. Also
# note that Vensim version 6.3 uses a different random number generator so results
# may differ. 
# 4. The examples used in the chapter a random noise seed of 0. The Vensim files 
# supplied here have a variable noise seed that is intially set to 0. Changing the
# noise seed to another integer will generate a different sequence of random numbers. 
# 5. The code assumes that the .tab data files exported from Vensim are located in 
# the current working directory
# 6. It's important to stres that in these Vensim model, the simulation, time corresponds
# to a case, not the actual time.

require(sem)

# Example from Figure 3.2
Simple.regression <- read.delim("Simple regression.tab", header=TRUE)
df<-Simple.regression[,c("x1","x2","y1","y2")]

# this was the original model in the chapter
sem1 <- specifyModel()  
x1->y1, lam11, NA
x1->y2, lam21, NA
x2->y2, lam22, NA
x1 <-> x1, NA, 1
x2 <-> x2, NA, 1
y1 <-> y1, del1, NA
y2 <-> y2, del2, NA

# this is a much better fitting model
sem1 <- specifyModel()  
x1->y1, lam11, NA
x1->y2, lam21, NA
x2->y2, lam22, NA
x1 <-> x1, eps1, NA
x2 <-> x2, eps2, NA
y1 <-> y1, del1, NA
y2 <-> y2, del2, NA

sem1.rslt <- sem(model=sem1,S=cov(df),N=nrow(df),obs.variables=colnames(df))
summary(sem1.rslt, fit.indices=c("GFI", "AGFI", "RMSEA", "NFI", 
        "NNFI", "CFI", "SRMR", "BIC"))

# Example from Figure 3.3
latent <- read.delim("latent.tab", header=TRUE)
df<-latent[,c("x1","x2","x3","y1","y2","y3")]

sem2 <- specifyModel()  
xi1->x1, NA, 1
xi1->x2, NA, 1
xi1->x3, NA, 1
xi1->eta1, gam11, NA
eta1->y1, NA, 1
eta1->y2, NA, 1
eta1->y3, NA, 1
x1 <-> x1, eps1, NA
x2 <-> x2, eps2, NA
x3 <-> x3, eps3, NA
y1 <-> y1, del1, NA
y2 <-> y2, del2, NA
y3 <-> y3, del3, NA
eta1 <-> eta1, zeta1, NA
xi1 <-> xi1, NA, 400

sem2.rslt <- sem(model=sem2,S=cov(df),N=nrow(df),obs.variables=colnames(df))
summary(sem2.rslt, fit.indices=c("GFI", "AGFI", "RMSEA", "NFI", 
        "NNFI", "CFI", "SRMR", "BIC"))

# Example from Figure 3.4
Simultaneous <- read.delim("Simultaneous.tab", header=TRUE)
df<-Simultaneous[,c("y1","y2","y3","y4","y5","y6")]

# Example from Figure 3.4 
sem4<-specifyModel()
eta1->y1, NA, 1
eta1->y2, NA, 1
eta1->y3, NA, 1
eta2->y4, NA, 1
eta2->y5, NA, 1
eta2->y6, NA, 1
eta1->eta2, beta21, NA
eta2->eta1, beta12, NA
y1<->y1, del1, NA
y2<->y2, del2, NA
y3<->y3, del3, NA
y4<->y4, del4, NA
y5<->y5, del5, NA
y6<->y6, del6, NA
eta1<->eta1, NA, 100
eta2<->eta2, NA, 100

sem4.rslt<-sem(model=sem4,S=cov(df),N=nrow(df),obs.variables=colnames(df))
summary(sem4.rslt, fit.indices=c("GFI", "AGFI", "RMSEA", "NFI", 
                                 "NNFI", "CFI", "SRMR", "BIC"))
