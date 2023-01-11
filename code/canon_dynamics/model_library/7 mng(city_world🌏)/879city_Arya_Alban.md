## 12.02
people (underemp, labor, manager), housing (underemap, worker, premium), industry (new, mature, declining)

correlation between variables, not included in likelihood, MCMC took 1hr 

population level params (worker housing, mature business labor, underemp birth rate)
unit level params

tax (synthesize three sectors)

Resetting the stock value prevents accumulated error to negatively affect estimation
optimally reset stocks somewhere btw simulation-based inference and new measurement

- better to turn off the noise during parameter analysis
- floating point error (numerical integrate error, division by zero, e^large); reduce timestep

- worker
- worker housing normal error, new enterprise normal error, labor normal error sd of labor normal error gets larger (less important during iteration)