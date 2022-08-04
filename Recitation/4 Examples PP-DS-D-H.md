## What
Calibrating Hierarchical Bayesian ODE; for this, tracing the source of variation and hierarchy is needed.

### Variation (a.k.a. Uncertainty)
As the main part of calibration is inference, our goal is to formulate dynamic model into Bayesian statistical model.
- Classify variables:
	- semantic: time, ratio, rate, price, state
	- SD_syntax: assumed/estimated `parameter` from _exogenous_ and  observed/simulated `state` and latent for _endogenous_
	- Bayes_syntax: data, transformed data, parameters, transformed parameters, model, generated quantities

- Verify variation source as:
	- semantic: exogenous parameters like `time`, `ratio`, `rate`, `price` 
	- SD_syntax:  `parameter var`, `process var`, `measurement var`
	- Bayes_syntax (block for Stan syntax): `parameter var` as prior distribution in params block, `measurement var` as likelihood distribution in params block, `process var` as function block (need either Python for data generation or C++ for RNG in Stan function block)

- Understand dynamic model in generalized linear regression context: `observed state` Y as `outcome` and `assumed parameter` value X as `predictor`
- Understand how causal and feedback structure is affected by Bayesian inference
- Understand the role of parameter inference in terms of model calibration (first heuristic Ring-Toss success ratio on different quantiles then formal SBC)

### Hierarchy

Hierarchical model (HM) is introduced in [[Reading/Gesmann20_HierCompRsrv.pdf]] paper as popular tools in social and life sciences whose role is to help us understand which characteristics are shared among individuals within a population as well as which ones vary, and to what extent. I believe the connection between HM and aggregation from System dyanmics is natural as hierarchical model (a.k.a partial pooling) infer the degree of heterogeneity. HM infers from data, where the data-generating-process stands between no pooling (no mixing) and complete pooling (perfect mixing). 

Hazhir and I set the goal of 879 Fall seminar as calibrating hierarchical model in production model (Chp.18 of business dynamics textbook) which I call below as Demand-Supply. In this context, the following questions need to be addressed: 

1. Is agent-based (AB) and Differential equation be thought as no pooling and complete pooling? 

2. If so, what would mean of AB model correspond to in Bayesian context? 

3. Could vensim subscript and hierarhical model replace order fullfillment lookup function? I understood the source of fuzzy function as M:1 (M SKUs each with different (but similar) production process become 1 item in shipment process).

If time allows, I wish to address interaction between temporal heterogenity and spatial heterogenity which may be accessed with cross-correlation of time series. To elaborate, Hierarchy allows the spectrum between heterogenous to homogenous on spatial axis but with this hierarchy evolve over time, it faces another hierarchy in time axis due to seasonality. Understanding the interaction between two hierarchy interests me. [This](https://dl.acm.org/doi/abs/10.1016/j.eswa.2022.117195) paper was my first attempt in modeling time series hierarchy. 

## How
We start with a simple prey-preditor (PP) model and compare with demand-supply (DS) model to understand three sources of variation: parameter, measurement, and process. Due to structural differences, PP includes two (parameter and measurement) while DS can be modeled to have all three variations. Then we introduce hierarchy to the two model to test HM's role of gauging system heterogeneity. The goal is to learn allowable aggregation level.

### M1: Prey-Predator (PP)
<img width="856" alt="image" src="https://user-images.githubusercontent.com/30194633/182760257-81fac798-1927-430d-841e-40569427b43f.png">

PP has 8 parameters to estimate and 0 parameters that is assumed

8 = 4 (2*2) stock-related (:= observable)

	- `latent_state_init`, `msr_error_scale` for each stock `Prey`, `Predator`

plus 4 estimated params (:= external to loop)

	- `prey_birth_coeff`, `prey_death_coeff`, `pred_birth_coeff`, `pred_death_coeff`

### M2: Demand-Supply (DS)
<img width="1210" alt="image" src="https://user-images.githubusercontent.com/30194633/182761909-83a6c6dd-c683-4fec-9cf8-5f302be4209c.png">

DS has 8 parameters to estimate and 5 parameters that is assumed

8 = 6 (2 * 3) stock-related

	- `latent_state_init`, `msr_error_scale` for each stock `Supply Line`, `Inventory`, `Backlog`

plus 2 estimated params 

	- `supply_lead_time`, `shipment_lead_time`,

and

5 `assumed params`

	- const: `supply_line_adj_time`, `inventory_adj_time`, `backlog_adj_time` , `demand_adj_time`
	- series: `demand`

Note that diagram follows the rule of
- variable color: according to semantic and unit
	- red for time (month), green for state #, blue for rate (#/month), skyblue for ratio (dmnl)
	- orange is `estimated params`
- arrow shape: solid arrow for same level or integration and dotted arrow for derivative

### M3: Hierarchical version of M1 and M2


### (if time permits) M4: Diffusion (SI, SIR, COVID) and its hierarchical version.

Reference
- [Heterogeneity and Network Structure](https://pubsonline.informs.org/doi/abs/10.1287/mnsc.1070.0787) by Hazhir and John which compares Agent-Based and Differential Equation Models which I wish to connect with no-pooling (separate) and complete-pooling (perfect mixing) in Hierarchical Bayesian.
-  [last Twinkie](https://metasd.com/2017/03/dynamics-of-the-last-twinkie/) and [aggregate cats](https://metasd.com/2010/11/aggregate-cats/) post from Tom's blog. The first is related to hierarchy hidden in order fullfillment ratio lookup function (M:1 mapping of SupplyLine SKU to Shipment item). The second extends the above paper, introducing disaggregate representation of the population using approximation from [this](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000968#pcbi.1000968-Keeling2) paper on obesity diffusion.
 
