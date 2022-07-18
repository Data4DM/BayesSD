| Program Block         | Purpose  | SD_Stats. model                                                         | e.g.  in SIR                 | e.g. in Hierarchical M. |
| --------------------- | -------- | ----------------------------------------------------------------------- | ---------------------------- | ----------------------- |
| data                  | define   | predictor                                                               | N, size of each compartments |                         |
| data                  | define   | initial outcome                                                         | y0                           |                         |
| data                  | define   | observed outcome                                                        | cases                        |                         |
| data                  | define   | time index                                                              | t0, ts                       |                         |
| transformed data      | classify | int type predictor to `X_i`                                             |                              |                         |
| transformed data      | classify | real type predictor to `X_r`                                            |                              |                         |
| parameter             | define   | coefficient parameter                                                   | $\beta$, $\gamma$            |                         |
| parameter             | define   | prior (= hyper) parameter                                               | $\tau$                       |                         |
| parameter             | define   | measurement parameter                                                   | $\phi$                       | $\sigma$, $\alpha$      |
| transformed parameter | relate   | simulated outcome = rk45(f, outcome, init_outcome, t, theta, predictor) |                              |                         |
| model                 | relate   | coefficient parameter  ~ HyperPrior(prior parameter)                    |                              |                         |
| model                 | define   | measurement parameter                                                   |                              |                         |
| model                 | relate   | observed outcome ~ D(simulated outcome, measurement parameter)          |                              |                         |

1- SD community term (primary for 15.879)

2- Stats community term (used in 15.879 when discussing concepts more clearly defined in stats, with additional emphasis/specification)

3- Stan code block

4- Example parameters from a hierarchical SD estimation example (e.g. thinking of a hierarchical SIR, or your supply chain example in a hierarchical set up)

5- Explanation of concept



# Bayesflow meeting

- uncertainty propagation
- prior regularization
- precoess noise - rv


## workflow
Three traits of Bayesian
- uncertainty quantification
- information pooling
- sequential model building
    - is Bayes necessarily connected to causal?


With more structure: hierarchical ode context


- aggregation and individual hetereogenity





| 1.SD              | 2. Stats. | 3.Stan Code Block |     | 4.e.g. hierarchical SD estimation | 5.explanation |     |
| ----------------- | --------- | ----------------- | --- | --------------------------------- | ------------- | --- |
| driving data      |           | data              |     | demand, Backlog, Inventory        |               |     |
| assumed parameter |           | data              |     |                                   |               |     |
|                   |           |                   |     |                                   |               |     |
