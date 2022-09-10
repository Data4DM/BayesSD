## Time series for dynamic modeling

Combine 
- 1_Analyze, 2_Infer, 3_Action in the `Code_Commit` folder
- supervised and unsupervised

## Ref
Nathaniel [explains](https://youtu.be/bHzTFLRCMZo) the above as: Description (unsupervised), Prediction (supervised/semi-supervised), Causal prediction (both supervised & unsupervised).

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
