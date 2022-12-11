comparison from inven model: comparison with S>20 is valid (robust), 
## setting
```
setting = {  
    "est_param_names" : ["fractional_inventory_adjustment_time", "fractional_wip_adjustment_time"],  
    "hier_est_param_names": [],  
    "target_simulated_vector_names" : ["production_rate_stocked", "production_start_rate_stocked"],  
    "driving_vector_names" : ["customer_order_rate", "process_noise_uniform_driving"],  
    "model_name": "inven_frac"  
}  
```

- frac vs time parameterization: inven_S1N10R2_M200 vs inven_frac_S20N10R2_M200  show same obs


## precision
```
precision ={  
    "S": 100, # # of draws from prior  
    "M": 1000, # # of draws from posterior (# of chains * # of draws from each chain)  
    "N": 200, # # of observation  
    "R": 1, # # of subgroups for hierarchical Bayes  
}  
```

1. S 1 vs 20
- top ten troll (not giving trolls to present themselves)
- new plot design
- [[Inven_S1N10R2_M200_data2draws_posterior.png]] vs [[Inven_S20N10R2_M200_data2draws_posterior.png]], [[Inven_S1N10R2_M200_data2draws_pair.png]] vs [[Inven_S20N10R2_M200_data2draws_pair.png]]


2. N 20 vs 100 vs 200 
- increase superlinear (1, 10, 35s)
- [[Inven_S1N10R2_M200_data2draws_posterior.png]] vs [[Inven_S20N10R2_M200_data2draws_posterior.png]], [[Inven_S1N10R2_M200_data2draws_pair.png]] vs [[Inven_S20N10R2_M200_data2draws_pair.png]]
- univariate:  [[Inven_S1N5R2_M1000_data2draws_posterior.png]], [[Inven_S1N5R2_M1000_data2draws_trace.png]]
- bivariate: [[Inven_S1N5R2_M1000_data2draws_pair.png]] vs 


3. R 1 vs 2
- new plot design required as hier-sbc is new area (arviz has hierarhcial bayesian plots, bayesflow has sbc plot including 2d; need combining)

4. (less interesting) M 200 vs 1000
- M 200 may not converge

- 

## numeric
```
numeric = {  
        "customer_order_rate": np.sin(np.arange(0, precision['N'])*1000) * init_order * .5 + init_order,  
        "process_noise_uniform_driving": np.random.uniform(low=-.5, high=.5, size=precision['N']),  
        'process_noise_scale': .1  
}  
```


## prior
```
prior = {  
    ("fractional_inventory_adjustment_time", "normal", 1/8, 1/8 *.1, 0),  
    ("fractional_wip_adjustment_time", "normal", 1/2, 1/2 * .1, 0),  
    ("m_noise_scale", "normal", init_order * .1, init_order * .01, 0)  
}
```
