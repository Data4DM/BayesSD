
comparison from inven model: 
- robustness when 
	-  S is at least 20 (5% can show itself)
	- increase N effect [[expected_SN.png]] 
	- decrease P effect (7, 10, 11)
- identifiability(setting, precision)
- proportional quality and speed; should fire fu (but rare)
| speed, quality | pretty | ugly |
| -------------- | ------ | ---- |
| fast           | fp     | fu   |
| slow           | sp     | su   |


| no. | speed | quality (log)                                  | Q       | P est param | H hier param | R (hier subgroup) | ps (f,b) | time  | hypothesis                                                   | -             |
| --- | ----- | ---------------------------------------------- | ------- | ----------- | ------------ | ----------------- | -------- | ----- | ------------------------------------------------------------ | ------------- |
| 1   |       |                                                | 2 flow  | 2           | 0            | .                 | .1,.1    | 200s  |                                                              | o             |
| 2   | 1     |                                                | 2 flow  | 2           | 0            | .                 | 1, 1     | 200s  | process noise makes estimation tighter [[pn_tight.png]] ??   |               |
| 3   | f(1)  |                                                | 2 flow  | 2           | 0            | .                 | .1,0     | 60s   | f(1) process noise during estimation makes estimation slower | 0             |
| 4   | 3     |                                                | 2 flow  | 2           | 0            | . (1 or -?)       | 1,0      | 200s  |                                                              | 0             |
| 5   | 4     |                                                | 2 flow  | 4           | 0            | .                 | 1,0      | 350s  | su(4) [[overparam_ugly.png]] with four params                | o             |
| 6   | s(4)     | u(4)?? (ci compare) | 2 flow  | 2           | 2            | 8                 | 1,0      | 1000s | s(4) hierarchy makes s                                       | 0             |
| -   | -     |                                                |         |             |              |                   |          |       | changed N 20-40 and made more exo_demand more osc            |               |
| 7   |       |                                                | 2 stock | 2           | 0            | 1 (1 or -?)       | 1,0      |       |                                                              | todo              |
| 8   | s(7)      |                                                | 2 stock | 4           | 0            | 1                 | 1,0      |       |                                                        | test2 running |
| 9   | s(7)      |                                                | 2 stock | 4           | 4            | 8                 | 1,0      |       |                                     |   |
|     |       |                                                |         |             |              |                   |          |       |                                                              |               |
| 10  | s(7)     |                                                | 2 stock |3           | 0            | .       | .1,0     |       |                                                              | test3_S10              |
| 11  | 10times s(10)    |                                                | 2 stock | 4           | 0            | .                 | .1,0     |  10,000s     | su(10)                                                       | divergence* |
| 12  | 10    |                                                | 2 stock | 4           | 4            | 8                 | .1,0     |       | su(10) hierarchy makes su                                    | test running  |
|     |       |                                                |         |             |              |                   |          |       |                                                              |               |


divergence*
```
	WARNING - Some chains may have failed to converge.
	Chain 1 had 250 iterations at max treedepth (100.0%)
	Chain 4 had 104 divergent transitions (41.6%)
	Chain 4 had 146 iterations at max treedepth (58.4%)
```



hierarchy and ps effect

| no. | comp. | Q       | R  (hier subgroup) | ep // hier_ep       | ps (f,b) | RQ (1:good)[^2] | time  | hypothesis                       | found                  | RQ(1:good), note                                           |
| --- | ----- | ------- | ------------------ | ------------------- | -------- | ----------- | ----- | -------------------------------- | ---------------------- | ---------------------------------------------- |
| --- |       | ---     |                    |                     |          |             |       |                                  |                        | 1                                               |
| 1   |       | 2 flow  | 1                  | inv                 |          | 1           | < 5s  |                                  |                        | 1                                              |
| 2   | 1     | 2 flow  | 1                  | wip                 |          | 1           | < 5s  |                                  |                        | 1                                               |
| 3   |       | 2 flow  | 2                  | wip, inv // wip     | .1,0     | 1           | 5-60s |                                  |                        | 1                                               |
| 4   |       | 2 flow  | 2                  | wip, inv // inv     | .1,0     | 1           | 40s   | tighter(1/2>1/8) is better       | o                      | 1 // x,1/x both normal, prev inf                    |
| 5   | 4     | 2 flow  | 2                  | wip, inv //wip, inv | .1,0     | 1           | 5-60s | increasing hier_ep increase time | - (less than expected) | TODO                                           |
| 6   |       | 2 flow  | 2                  | wip, inv //wip      | 1,0      | 1           | 80s   | larger ps - obs levels off       | leveloff-uglier?[^1]   |   1                                             |
| 7   |       | 2 flow  | 2                  | wip, inv //wip, inv | 1,0      | 1           | 90s   |                                  |                        |  1                                              |
| 8   | 7     | 2 flow  | 8                  | wip, inv //wip      | 1,0      | 1           | 400s  | larger r - fp to fu              |                        |   1                                             |
| 9   |       | 2 flow  | 8                  | wip, inv //wip      | .1, 0    | 1           | 300s  | lower ps - fp fit                | o (lte)                |    1                                            |
| 10  |       | 2 flow  | 2                  | wip, inv //wip      | .1, .1   | 1           | 80s   |                                  |                        |     1                                           |
| 11  |       | 2 flow  | 8                  | wip, inv //wip      | 1, 1     | 1           | 450s  | will break                       | x slow but pretty      | 1 // error msg `normal_lpdf: Scale parameter is 0,` |
| 12  | 11    | 2 flow  | 8                  | wip, inv //wip      | 0,1      |             |       | higher heter. su fit             |                        |                                                |
| 13  |       | 2 stock | 2                  |                     |          |             |       |                                  |                        |                                                |
|     |       | 2 stock |                    | wip, inv, man //wip |          |             |       |                                  |                        |                                                |


## effect of process noise
| no. | compare | PN         | Q          |
| --- | ------- | ---------- | ---------- |
| p1  |         | 1(pr) | 2(psr, pr) |
| p2  |         | 2(pr)      | 1 (pr)     |
| p3  |         |            |            |
| p4  |         |            |            |



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
    "est_param_names" : ["adj_mat_push_frac1", "adj_mat_push_frac2", "adj_mat_pull_frac3"], #, "ss2p_frac4"],  
    "hier_est_param_names": [],  
    "target_simulated_vector_names" : ["ss", "s"],  
    "driving_vector_names" : ["exog_demand", "process_noise_uniform_driving"],  
    "model_name": "2hier_s_asy_osc"  
}
```

- frac vs time parameterization: inven_S1N10R2_M200 vs inven_frac_S20N10R2_M200  show same obs


## precision
```
precision ={  
    "S": 10, # # of draws from prior  
    "M": 1000, # # of draws from posterior (# of chains * # of draws from each chain)  
    "N": 40, # # of observation  
    "R": 1 # # of subgroups for hierarchical Bayes  
}
```
time_saveper = .125, N  = 40; time horizon = 0-5

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
init_order = 100  
# driving data  
numeric = {  
        "exog_demand": np.sin(np.arange(0, precision['N'])*10000) * init_order * .5 + init_order,  
        "process_noise_uniform_driving": np.random.uniform(low=-.5, high=.5, size=precision['N']),  
        'process_noise_scale': .1 #.1  
}
```

exog_demand:  [[Pasted image 20221217073819.png]]

## prior
```
prior = {  
    ("fractional_inventory_adjustment_time", "normal", 1/8, 1/8 *.1, 0),  
    ("fractional_wip_adjustment_time", "normal", 1/2, 1/2 * .1, 0),  
    ("m_noise_scale", "normal", init_order * .1, init_order * .01, 0)  
}
```
