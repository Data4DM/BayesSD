
## What
- Classify variables:
	- semantic: time, ratio, rate, price, state
	- SD_syntax: assumed/estimated `parameter` from _exogenous_ and  observed/simulated `state` and latent for _endogenous_
	- Bayes_syntax: data, transformed data, parameters, transformed parameters, model, generated quantities

- Verify uncertainty source as:
	- semantic: exogenous parameters like `time`, `ratio`, `rate`, `price` 
	- SD_syntax:  `parameter uc`, `process uc`, `measurement uc`
	- Bayes_syntax: `parameter uc` as prior distribution in params block, `measurement uc` as likelihood distribution in params block, `process uc` as function block (need c++ coding)

- Understand them in generalized linear regression context: assumed/ data observed state Y and predictor X (driving data and values of assumed parameter) 
- Understand how causal and feedback structure is affected by Bayesian inference
- Understand the role of parameter inference in terms of model calibration (first counting Ring-Toss-Success ratio then using SBC)
 

## How

We start with a simple prey-preditor Lotka Voltera (LV) model and compare with demand-supply (DS) model to understand three sources of uncertainty. Then we observe the effect of hierarchy and how it affects uncertainty of parameter, measurement, and process.


### M1: Prey-Predator (LV)

### M2: Demand-Supply (DS): short time, Different space

- M1, M2 vignette in process

### M3: Diffusion (SIR, COVID): Long time, Different space


### M4: Hierarchical Model

 
---


 
