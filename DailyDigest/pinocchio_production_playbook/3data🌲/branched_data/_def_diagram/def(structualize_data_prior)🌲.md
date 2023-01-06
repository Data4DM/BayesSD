goal: to argue Hierarchical draws2data causes data2draw uncertainty 

#### Recovery quality under uncertainty
parameter retrieval quality (RQ) is a measure of model trustability defined with sbc metric

##### syntax: 
-   numerically as sbc distance from uniformity metric, predictive quantities    
-    visually as no divergence, pair plot simulate the model with some samples from the posterior and compare them against the data. This gives me a visual check of a "good fit".Pair Plot to evaluate the shape of the joint posterior distribution. Add correlations for more information. Lots of correlations indicate a difficult parameter space. Trace plots. For marginal distributions, I found it useful to overlap prior & posterior histograms. This plot tells how much information we gained from the inference process for a particular parameter.


##### semantic:

-   [Effect of process noise and hierarchy measured by parameter retrieval quality (RQ)](https://github.com/Data4DM/BayesSD/discussions/118)

#### Draws2data, data2draws uncertainty and noise

-   process and measurement noise during draws2data and data2draws

![](https://lh5.googleusercontent.com/igNWrpYtlFJWw1goCpC4oCvTm5wNTq8WeXTjnpT_zaNDhxOsOBlnBdjoerQvagE7i-B4G9rzjp5Mfk7TkfqPOKv-s4-uXVhyDGutntp8XPj-ibVpRTYghDujZaN8_aGD8d_LlHEqvaI2-2rdeeRab5AUl5TVX9PV38OnXgv_mFs0s4sANSGDLfu8wChNAw)

  

soft and hard constraint

-   how to decide giving prior or range
    
-   how user-defined constraints are encoded under the hood 
    

-   given the first two moments (mean and sd) PERT prior
    
-   given only the first moment (mean) -> normal( mean, .1 of mean)
    

  

#### Role of hierarchy 

-   experiment tool for heterogeneity (homogeneous treatment of heterogeneous unit VS heterogeneous treatment of homogeneous unit)
    
-   a.k.a process noise