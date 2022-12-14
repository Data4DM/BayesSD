
comparison from inven model: 
- comparison with S>20 is valid (robust) [[expected_SN.png]]
- identifiability(setting, precision)
- proportional quality and speed; should fire fu (but rare)
| speed, quality | pretty | ugly |
| -------------- | ------ | ---- |
| fast           | fp     | fu   |
| slow           | sp     | su   |

- total sim


hierarchy and ps effect

| no. | comp. | Q       | R  (hier subgroup) | ep // hier_ep       | ps (f,b) | RQ (1:good) | time  | hypothesis                       | found                  | compare with | note                                           |
| --- | ----- | ------- | ------------------ | ------------------- | -------- | ----------- | ----- | -------------------------------- | ---------------------- | ------------ | ---------------------------------------------- |
| --- |       | ---     |                    |                     |          |             |       |                                  |                        |              |                                                |
| 1   |       | 2 flow  | 1                  | inv                 |          | 1           | < 5s  |                                  |                        |              |                                                |
| 2   | 1     | 2 flow  | 1                  | wip                 |          | 1           | < 5s  |                                  |                        |              |                                                |
| 3   |       | 2 flow  | 2                  | wip, inv // wip     | .1,0     | 1           | 5-60s |                                  |                        |              |                                                |
| 4   |       | 2 flow  | 2                  | wip, inv // inv     | .1,0     | 1           | 40s   | tighter(1/2>1/8) is better       | o                      | 3            | x,1/x both normal, prev inf                    |
| 5   | 4     | 2 flow  | 2                  | wip, inv //wip, inv | .1,0     | 1           | 5-60s | increasing hier_ep increase time | - (less than expected) |              | TODO                                           |
| 6   |       | 2 flow  | 2                  | wip, inv //wip      | 1,0      | 1           | 80s   | larger ps - obs levels off       | leveloff-uglier?[^1]   |              |                                                |
| 7   |       | 2 flow  | 2                  | wip, inv //wip, inv | 1,0      | 1           | 90s   |                                  |                        |              |                                                |
| 8   | 7     | 2 flow  | 8                  | wip, inv //wip      | 1,0      | 1           | 400s  | larger r - fp to fu              |                        |              |                                                |
| 9   |       | 2 flow  | 8                  | wip, inv //wip      | .1, 0    | 1           | 300s  | lower ps - fp fit                | o (lte)                |              |                                                |
| 10  |       | 2 flow  | 2                  | wip, inv //wip      | .1, .1   | 1           | 80s   |                                  |                        |              |                                                |
| 11  |       | 2 flow  | 8                  | wip, inv //wip      | 1, 1     | 1           | 450s  | will break                       | x slow but pretty      |              | error msg `normal_lpdf: Scale parameter is 0,` |
| 12  | 11    | 2 flow  | 8                  | wip, inv //wip      | 0,1      |             |       | higher heter. su fit             |                        |              |                                                |
| 13  |       | 2 stock | 2                  |                     |          |             |       |                                  |                        |              |                                                |
|     |       | 2 stock        |                    | wip, inv, man //wip                    |          |             |       |                                  |                        |              |                                                |

top priority: 
1. what cause level off? bug or feature?
2. find better ways to plot obs and compare with vensim results
3. loglik plot comparing ground truth and posterior samples (within 95% is safe)
4. compare stock vs flow as Q to verify using stock 
5. increase ep from mfct, tdd (its' effect in oscillation?)

robustness check:
- process noise only injected to production rate, so enough info with production start rate [[cup_half_full.png]]
- larger process noise -> neg
- what result do you expect from flow vs stock as target simulated ?
-  uglier = rugged or smooth?
- too tight (autocorrelation)- missing correlation from lik (narrow tailed liik ftn) - error are all gaussian (assuming processs and likelihood) tighter

- longer wip more osc, longer inv less osc
- 90% of loglik
-

- 
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
- how much data we need to 
- [[Inven_S1N10R2_M200_data2draws_posterior.png]] vs [[Inven_S20N10R2_M200_data2draws_posterior.png]], [[Inven_S1N10R2_M200_data2draws_pair.png]] vs [[Inven_S20N10R2_M200_data2draws_pair.png]]
- univariate:  [[Inven_S1N5R2_M1000_data2draws_posterior.png]], [[Inven_S1N5R2_M1000_data2draws_trace.png]]
- bivariate: [[Inven_S1N5R2_M1000_data2draws_pair.png]] vs 


3. R 1 vs 2
- new plot design required as hier-sbc is new area (arviz has hierarhcial bayesian plots, bayesflow has sbc plot including 2d; need combining)

4. (less interesting) M 200 vs 1000
- M 200 may not converge



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

