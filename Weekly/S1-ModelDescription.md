### Matching supply and demand (MID) model 
- Goal: Infer the parameter $\theta$ value i.e. estimation conditional on the outcome Y and predictor X (driving data and values of assumed parameter) data.

- (Y and X matrix) and Matching parameter value with the 
data is provided where `decisions` is assumed to be optimized around cost function and where  is the obejctive function 

![[MatchingSupplyDemand.png]]


I am finalizing our inventory model which I wish to call `matchSupplyDemand`(MSD; so I won't extend more than what I have: SIR, MSD, Job Strategy (JS) in increasing complexity). Intention behind this renaming is its generality where material and information delay are matched and actors' decisions are conditional on delay modules. 

From your explanation of viewing data as assumed parameter or estimated parameter (mean, sd, corr), I wish to start with the former. But then do you agree cr ratio is viable candidate for estimated parameter? From John's model which sets `Desired Inventory Coverage = Minimum Order Processing Time + Safety Stock Coverage`, `Safety Stock Coverage` would be the function of `cr ratio`.  

Few questions on MSD:
- should I exclude decision structure (overage and underage cost) out from it? Some may say this component may be irrelevant to estimation but as the observed outcome is the result of real world actor trying to optimize their objective function (minimizing the sum of underage and overage cost (newsvendor) seemed reasonable for this purpose), I am not sure how to walk around this. 879's title is bringing data into dynamic models; do you mean synthetic data or real data? If we aim for the former, we can leave out overage/underage cost structure. This can still provide us reasonably robust and calibrated model on which decision can next be calibrated.

As a ref. for the above purpose, Mike Betancourt used  "1. pre-data, model 2. pre-data, post-model 3. post-data, model" in his own version of workflow (which now I am beginning to appreciate). So we have to set how far we wish to cover i.e. the point we will start introducing 3 (which could be as the epilogue).


### Job Strategy (JS) model

### SIR model
I hope wecould rename this based on the modeling goal like MSD or JS.