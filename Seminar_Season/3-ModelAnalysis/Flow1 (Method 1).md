Micro models with 7 +-2 observation (`obs_stock`) where you need detailed causal prediction/calibration for 5+-1 `est_param`. [This notebook](https://github.com/hyunjimoon/pysd/blob/stan-backend/test_scripts/demand_supply.ipynb) file includes a table that sets user-program interface.

- Key: More analyitic approach of the following compared to [[Flow2 (Method 3)]]
	- Basis function space construction e.g. Hierarchical Bayesian
	- Simulation-based Calibration
	- Prior specification (= regularization) 
- Optimization algorithm design is less emphasized as it would take less than 10 mins `_draws2data.stan`. However, due to frustrating posterior geometry from Hierarchical Bayesian, parameterization (scale separation, auto-CP-NCP, invariant flow) and funnel-avoiding tricks are popular research topics. [[Hierarchical prior]] contains tips for setting prior for designing hierarchical model that converges (it probaby wouldn't in your first attempt).
  
