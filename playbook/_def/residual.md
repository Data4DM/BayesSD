List of pure Bayes lexicon is in https://statmodeling.stat.columbia.edu/2009/05/24/handy_statistic/

## Pinocchio
- sin vs exponential grwoth? 
- multimodality might be not relevant to your problem [image](https://user-images.githubusercontent.com/30194633/195950493-ed6dcc31-823d-4848-bba0-bcd8f55e727f.png)
- differentiating stuck chain (`adapt_delta` .9 to .95) and actual multimodality in posterior ("are you real","if you can't tell, does it matter?" - west world)
- pinocchio enable "telling"

## Dynamic tolerance
- dynamic aggregation: to prevent gardens of forking path in modeling hetereogenity (relevant to Best cluster may not come from clustering)

## Glass ceiling
- wrongly set upper bound of parameter hampering the estimation by cutting off the head

## Loop2Table
- Using table function as loop's abstraction: functional mapping (SW vs base point parameter  
- Tom is also using "parameterize table functions for sensitivity testing" for his deer chronic disease aging chain, but Tom is experiencing parameter's upper bound acting as a ceiling
- relevant to Loop knockout, causal identification as described in 

## Rainbow
- somewhere in between

## Scale free
- Tom showed me the picture of waterfall 
- only nature can produce full fractal

## Two ways to improve SIR: coflow and SEIR 
- screen function

## Cooking Time series for dynamic modeling
- 0_PA, 1_PAD, 2_PD, 3_Data4DM, 4_DM4Data
- labeled then unlabeled

### Description: finding patterns
- descriptive
- visualization
- clustering
- latent variable identification & generative approaches
  - Bayesian (theory-based): HMM, Particle filtering, PMCMC
  - Connectionist (less theory-based): Autoencoders, VAEs, GANs
- Dimensionality reduction (PCA/ICA, t-sne, SVC)
- Causality detection (CCM)
- Density estimation

### Prediction: Identify systemic way to anticipate outcome
- regression
- classification
key: defining loss function and regularization 

### Causal Prediction: Understanding counterfactuals and general behaviors
- correlation doesn't imply causation
- seeks to rigorusly predict outcomes in accordance w/posited causal structure
- advantage
  - capacity to reason about counterfactuals
  - strong generalizability across contexts
  - enhanced explainability
- heavy reliance upon postulated causal structure
- can cross-check causal expectations using empirical data via conditional independence, reverse dependence
- in temporal settings, causal hints can be suggested by empirical data (CCM)

Nathaniel [explains](https://youtu.be/bHzTFLRCMZo) the above as: Description (unsupervised), Prediction (supervised/semi-supervised), Causal prediction (both supervised & unsupervised).
