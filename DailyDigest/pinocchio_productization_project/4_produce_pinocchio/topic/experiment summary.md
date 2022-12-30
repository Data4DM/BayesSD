## JanW1
- ("m_noise_scale",  "normal", init_order * .1, init_order * .01, 0) #"lognormal", np.log(1), .1, 0) takes too long

distribution change to lognormal (from normal); around 10 times slower, depending on tail thickness. better with lower scale of process and measurement noise scale
- 120s for lognormal, 1est VS s for lognormal, 2est
| -   | P   |                                | time             | plot                                           | summary                                |
| --- | --- | ------------------------------ | ---------------- | ---------------------------------------------- | -------------------------------------- |
|     | 1   | normal                         |                  | normal is ten times faster than lognormal      |                                        |
|     | 1   | lognormal                      | 120              |                                                |                                        |
|     | 2   | hier_normal                    | 300s             | [[2hier_s_normal_S1N10Q2P3H2R2_M100_ps.1.png]] |                                        |
|     | 2   | hier_lognormal                 | test_dist.py 250 | [[lognormal_S1N10Q2P4H2R2_M1000_ps0.1.png]]    |                                        |
|     | 3   | hier_normal, (loc, .1 loc)     | 70s              |                                                |                                        |
|     | 3   | hier_lognormal, .01 dispersion | 120              | 2hier_s_lgnorm_0.01_S1N10Q2P6H3R2_M1000_ps0.1  | frac3 starts to diverge, underestimate |
|     | 3   | hier_lognormal, 1 dispersion   | 180 = s(120)     | 2hier_s_lgnorm_1_S1N10Q2P6H3R2_M1000_ps0.1     | frac3 divergence disappeared           |
|     | 3   | hier_lognormal, 10 dispersion  | 240              | 2hier_s_lgnorm_10_S1N10Q2P6H3R2_M1000_ps0.1    | frac3 divergence reappears,            |
|     | 3   | hier_lognormal, 100 dispersion | 8,000            |                                                | TEST_dist running; thicker tail is su, frac3 diverge more |
|     | 4   | hier_lognormal, .01 dispersion | 650            |                                                | didn't add frac_loc4                   |
|     | 4   | hier_lognormal, 1 dispersion   | s(650)  1500     |                                                | TEST running                           |
|     |     |                                |                  |                                                |                                        |
|     |     |                                |                  |                                                |   sbc running                                     |


test, test_distribution, sbc


## DecW3

JanW1 todo
1. plot process noise (and show it is auto-correlated enough)

2. capping process noise to 2 to prevent negative stock; this prevents negativity leaking to flow which explains negative stocked flow

DecW3 summary 
1. process noise is being injected every `saveper` (as `saveper` now replace `time_step`) as it should be

2. kill stuck chains with extremely low variance if loglik is smaller compared to main (correct range of estimates)

3. removing stuck chains would improve pair plots

4. one layer for hyperprior should be added to both forward and backward model. Using two parameter (`loc`ation and `scale`) distribution. i.e. a. to b.
a. theta_r ~ normal(mu_loc, mu_loc*.1) mu_loc = .25, 
b. theta_r ~ normal(loc_theta, scale_theta), scale_theta ~ exp(1), mu_loc = .25
c. theta_r ~ normal(loc_theta, scale_theta), loc_theta ~ exp(mu_loc), scale_theta ~ exp(1), mu_loc = .25

Thanks for the meeting today, your comment on hierarchy model was the most helpful; do you think we should extend to c, or would b enough?



last week, we defined proportional quality and speed, doesn't need to fire fu

| speed, quality | pretty | ugly |
| -------------- | ------ | ---- |
| fast           | fp     | fu   |
| slow           | sp     | su   |
- this week, Q ( [[flow_or_stock.png]] ), P-HR [[lifting_p_hr.png]], S [[lifting_s.png]]

- Assuming Q = 2stock, three dimensions extended from S1P2H0 teaces:
	- S1P`3`H0, S1P`4`H0: estimated parameter range becomes wider as P increases
	- S`10`P2H0 : degenercy between S
	- [[ degenercy between P
	- S1P2H`2R8` : 

- measurement sigma at least 1/20 (scale 0 warning - #hrq  what to do when better condition appears in the middle of the experiment), 1/100 is faster than (1/10)
- changed uniform to normal (asymptotic) - have you experience difference?
- 

## PN, Qf vs Qs
- larger PN, slower
- lareger PN (10) leads to negative stocked flow (max(0, 1+ process noise)): is stocked_flow worth the effort? how about subtracting stock variables?[[Pasted image 20221220093536.png]] 
```
[ 83.941    109.115    110.625    112.118     85.9777    81.8217
  47.7298    37.6598    30.8851    43.798     36.0561    16.5238
  30.4239    -1.04816    3.00896   17.1947     7.24173   -4.14814
  13.7753    -3.35885   -3.82367   -1.21904  -10.1686    14.6153
 -20.6831     3.44342    2.13488   -3.00461   17.0985    -7.37067
 -20.261     -0.979966  -3.22786   -0.778419  -3.27115   -7.31667
  47.8864   113.448    113.762     
```

| no.                | compare speed                | compare quality (log)           | Q       | P est param | H hier param | R (hier subgroup) | ps (f,b) | time (s)   | what I discovered                                                                 | -                  |
| ------------------ | ---------------------------- | ------------------------------- | ------- | ----------- | ------------ | ----------------- | -------- | ---------- | --------------------------------------------------------------------------------- | ------------------ |
| Qf_P2H0_pndot1     |                              |                                 | 2 flow  | 2           | 0            | .                 | .1,.1    | 200        |                                                                                   | x                  |
| Qf_P2H0_pn1        |                              | u(Qf_P2H0_pndot1)??             | 2 flow  | 2           | 0            | .                 | 1, 1     | 200        | process noise makes estimation tighter [[pn_tight.png]] ??                        |                    |
| Qf_P2H0_pndot1~0   | f(Qf_P2H0_pndot1)            |                                 | 2 flow  | 2           | 0            | .                 | .1,0     | 60 -> x    | f(Qf_P2H0_pndot1) process noise during estimation makes estimation slower         | n=20->n=40 updated |
| Qf_P2H0_pn1~0      | s(Qf_P2H0_pndot1~0)          |                                 | 2 flow  | 2           | 0            | . **              | 1,0      | 200 -> 200 | larger process noise makes slower and ugly                                        | 0                  |
| Qf_P2H0_pn1~0      |                              |                                 |         |             |              |                   | 10,0     | -> 900     |                                                                                   |                    |
| Qf_P4H0_pndot10~0  | s(Qf_P2H0_pn1~0)             | = Qf_P2H0_pn1~0                 | 2 flow  | 4           | 0            | .                 | 1,0      | 350        |                                                                                   | o                  |
| Qf_P2H2R8_pn1~0    | s(Qf_P2H0_pn1~0)             | u(Qf_P2H0_pn1~0)?? (ci compare) | 2 flow  | 2           | 2            | 8                 | 1,0      | 1k         |                                                                                   | 0                  |
| -                  | -                            |                                 |         |             |              |                   |          |            | **changed N 20-40 and made exo_demand more osc**                                  |                    |
| Qs_P2H0_pn1~0      | Qf_P2H0_pn1~0                |                                 | 2 stock | 2           | 0            | 1                 | 1,0      |            | stock-target is slower than flow-target for increased process noise               | test2 running      |
| Qs_P4H0_pn1~0      | s(Qs_P2H0_pn1~0)             |                                 | 2 stock | 4           | 0            | 1                 | 1,0      |            | larger process noise makes slower and ugly                                        | o                  |
| Qs_P4H4R8_pn1~0    | s(Qs_P2H0_pn1~0)             |                                 | 2 stock | 4           | 4            | 8                 | 1,0      |            |                                                                                   |                    |
|                    |                              |                                 |         |             |              |                   |          |            |                                                                                   |                    |

## P_HR

| no.                | compare speed                | compare quality (log) | Q       | P est param | H hier param | R (hier subgroup) | ps (f,b) | time (s) | what I discovered                                                                 | -            |
| ------------------ | ---------------------------- | --------------------- | ------- | ----------- | ------------ | ----------------- | -------- | -------- | --------------------------------------------------------------------------------- | ------------ |
| Qs_P2H2R3_pndot1~0 | s(Qs_P2H0_pndot1~0)          |                       | 2 stock | 2           | 2            | 3                 | .1,0     | 600      |                                                                                   |              |
| Qs_P3H0_pndot1~0   | s(Qs_P2H0_pn1~0)             |                       | 2 stock | 3           | 0            | .                 | .1,0     |          | between s revils (herald) third dimension of ugly geometry (+overparam,hierarchy) | o            |
| Qs_P4H4_pndot1~0   | 10times s(Qs_P3H0_pndot1~0 ) |                       | 2 stock | 4           | 0            | .                 | .1,0     | 10k      | su(Qs_P3H0_pndot1~0 )                                                             | divergence*  |
| Qs_P4H4R8_pndot1~0 | 10                           |                       | 2 stock | 4           | 4            | 8                 | .1,0     | 60k      | su(Qs_P3H0_pndot1~0 ) hierarchy makes su                                          | test running |
|                    |                              |                       |         |             |              |                   |          |          |                                                                                   |              |
|                    |                              |                       |         |             |              |                   |          |          |                                                                                   |              |
|                    |                              |                       |         |             |              |                   |          |          |                                                                                   |              |




divergence*
```
	WARNING - Some chains may have failed to converge.
	Chain 1 had 250 iterations at max treedepth (100.0%)
	Chain 4 had 104 divergent transitions (41.6%)
	Chain 4 had 146 iterations at max treedepth (58.4%)
```

- for nonhierarchy, should we note R 1 or -? (the latter as we won't have joint  structre?..)
- 



Assuming Q = 2flow,
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
