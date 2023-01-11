## 1. symmetry
- simulation-based calibration's key is prior and posterior are exchangeable conditional on the data (not necessearly observable)
- [[verification_idata_plan]]
- should separate estimation for real data and estimation for testing. "one layer deeper" is only for the former where our goal is to infer parameter values (unknown). For testing, the unknown is not parameter value, but acceptance of our hypothesis "our computational realization matches statistical mental model". Once the hypothesis is not rejected, we move on to estimation with real data. Conditional on our statistical and computational model matches, we apply the backward model to real data for estimating parameter values
- action: sbc next step using `wrapper` + connecting with `rvars`

