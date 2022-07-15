
Model calibration can be viewed as balance loop between generator $(y|\theta)$ and estimator $(\theta|y)$.

## 1. Mapping SD model to Stats. model

| -        | Statistical model | SD model                               |
| -------- | ----------------- | -------------------------------------- |
| variable | predictor         | driving variable                       |
| variable | outcome           | target variable                        |
| data     | predictor value   | observed or assumed value of predictor |
| data     | observed outcome  | target variable data                   |
| data     | simulated outcome | ODE solution of target variable        |

For predictor value, distinguishing two ways how predictor values are set (observed or assumed) are crucial. It directly affects the estimation process; parameter corresponding to assumed predictor stay fixed as the sampler explores the parameter space. We will call this fixing or conditioning as "clamped 🗜". The table may be extended based on  [this](https://mc-stan.org/docs/reference-manual/statistical-variable-taxonomy.html#statistical-variable-taxonomy) section of Stan manual, especially regarding missing data concepts.


## 2. Mapping Stats. model to Code
Based on the mapping, `stan_builder` on pysd translate Vensim's `.mdl` file into Stan's `.stan` file for data generation and estimation. `create_stan_program_generator` and `create_stan_program_estimator` are functions that we will mainly use. The main difference is their purpose which is better understood when thinking in terms of Stan's program block. Stan has six program blocks which modularizes possible inflow and outflow of information in statistical estimation process. The following two stan files for non-hierarchical, non-ODE model illutstrate their difference. Also, measurement parameter ($\sigma$) is fixed as 1.2.

```stan
data{
	int <lower = 0> N;
	real X[N];
}

generated quantities{
	real alpha;
	real beta;
	alpha ~ normal_rng(0, 1);
	beta ~ normal_rng(0, 1);
	for (n in 1:N){
		y[n] ~ normal_rng(alpha + X[n] * beta, 1.2);
	}
}
```

```stan
data{
	int <lower = 0> N;
	real X[N];
	real y[N];
}

parameters{
	real alpha;
	real beta;
}

model{
	alpha ~ normal(0, 1);
	beta ~ normal(0, 1);
	for (n in 1:N){
		y[n] ~ normal(alpha + X[n] * beta, 1.2);
	}
}
```

The following table shows the mapping for possible Bayesian variables with blocks as documented [here](https://mc-stan.org/docs/reference-manual/statistical-variable-taxonomy.html#variable-kinds.figure) in Stan manual.

![[Pasted image 20220715052858.png]]

## 3. Mapping Hierarchical SD_Stats. model to Code
What code components is additionally needed for ODE and hierarhical model? This section introduces how function block encodes ODEs and prior parameters can express hierarchical concept. With these techniques, hierarchical SD model is translated into Stan file which once plugged into optimization algorithm implemented in Stan returns parameter samples.

#### Function block for ODE
Hierarchical modeling predicts the outcome through linear combination $\eta$ transformed by the function $D$ (which we will call family distribution e.g. Poisson or Logitistic). $D$ assumes a certain distribution for $y$ and $y_i \sim D(\eta_i, \phi)$ stresses how each $i$th data point is modeled.  Parameter $\phi$ is global parameter that do not vary across data points, such as prior parameter or measurement parameter. Example of the measurement parameters are standard deviation $σ$ in normal models, shape $\alpha$ in Gamma, dispersion $\phi$ in negative binomial models. The linear predictor can generally be written as $\eta = X \beta + Z u$ where $\beta, u$ are each population and group-level coefficient parameters and X, Z are corresponding predictors (or sometimes called design matrix). Important advantage of Bayesian MCMC methods as compared to maximum likelihood approaches is treating  $u$ as model parameter in the same manner as $\beta$  whose uncertainty in its estimates can be evaluated. Maximum likelihood does not estimate $u$, instead assume it as part of the error term (Fox and Weisberg, 2011). 

#### Prior parameter for Hierarchy
Prior parameter models shared structure among groups as they both affect data generation process (dgp) of data for every group. Hence in the estimation process, which is the reverse of dgp, prior parameters are updated by new data from any group.

The following tables lists how `create_stan_program_generator` translates SD_Stats. model into each block.

| Program Block        | Purpose | SD_Stats. model                                                | e.g.  in SIR                 |
| -------------------- | ------- | -------------------------------------------------------------- | ---------------------------- |
| data                 | define  | predictor                                                      | N, size of each compartments |
| data                 | define  | initial outcome                                                | y0                           |
| data                 | define  | time index                                                     | t0, ts                       |
| generated quantities | define  | prior (= hyper) parameter                                      | $\tau$                       |
| generated quantities | define  | coefficient parameter                                          | $\beta$, $\gamma$            |
| generated quantities | define  | prior (= hyper) parameter                                      | $\tau$                       |
| generated quantities | define  | measurement parameter                                          | $\phi$                       |
| generated quantities | relate  | coefficient parameter  ~ HyperPrior(prior parameter)           |                              |
| generated quantities | relate  | y_t = matrix_exp(init_outcome, t, theta, predictor)            |                              |
| generated quantities | relate  | observed outcome ~ D(simulated outcome, measurement parameter) | simulated_cases              |

Data synthesis with one file may only be possible for simple linear [ODEs Mode](https://mc-stan.org/docs/stan-users-guide/solving-a-system-of-linear-odes-using-a-matrix-exponential.html). We recommend using pysd for data synthetis for complex models.

The main step of model calibration is to estimate parameter based on the generated outcome .`simulated_cases` synthesized with `create_stan_program_generator` or `pysd` can be plugged in as  `cases` for `create_stan_program_estimator`. 

The following tables lists how `create_stan_program_estimator` translates SD_Stats. model into each block. The main componentes of data block are $Y, X, Z$ and parameters block include $\beta, u, \phi$.

| Program Block         | Purpose  | SD_Stats. model                                                         | e.g.  in SIR                 | e.g. in MLM        |
| --------------------- | -------- | ----------------------------------------------------------------------- | ---------------------------- | ------------------ |
| data                  | define   | predictor                                                               | N, size of each compartments |                    |
| data                  | define   | initial outcome                                                         | y0                           |                    |
| data                  | define   | observed outcome                                                        | cases                        |                    |
| data                  | define   | time index                                                              | t0, ts                       |                    |
| transformed data      | classify | int type predictor to `X_i`                                             |                              |                    |
| transformed data      | classify | real type predictor to `X_r`                                            |                              |                    |
| parameter             | define   | coefficient parameter                                                   | $\beta$, $\gamma$            |                    |
| parameter             | define   | prior (= hyper) parameter                                               | $\tau$                       |                    |
| parameter             | define   | measurement parameter                                                   | $\phi$                       | $\sigma$, $\alpha$ |
| transformed parameter | relate   | simulated outcome = rk45(f, outcome, init_outcome, t, theta, predictor) |                              |                    |
| model                 | relate   | coefficient parameter  ~ HyperPrior(prior parameter)                    |                              |                    |
| model                 | define   | measurement parameter                                                   |                              |                    |
| model                 | relate   | observed outcome ~ D(simulated outcome, measurement parameter)          |                              |                    |

generated quantities block can be added for prediction or decision which is separate from estimation. This will be dealt in the upcoming sections.

Below is the example of Stan block code for SIR model which has the following ODE, simulated outcome `y`, observed outcome `cases`, coefficient parameter for `beta`, `gamma`. There is no hyperprior parameter as it is fixed as 2, 1, .4, .5, 5.

- $dS/dt = -\beta * I/N$
- $- dI/dt = \beta * I/N -\gamma * N$
- $dR/dt = \gamma * I$

 ![[Pasted image 20220715025016.png]]


#### how `create_stan_program_estimator` works under the hood

It first creates abstract syntax tree as described in [this](https://pysd.readthedocs.io/en/master/structure/vensim_translation.html) pysd vensim translation section then builds dependency graph for topological sort. This is needed as Stan requires all variables to be orderly declared. For instance, if `c=a+b` then, we make sure declaration of `a` or `b` precedes that of `c`. The aim is to get the minimal input from users for calibration process; for instance, repair and inventory model (`Repair.mdl, Inventory.mdl`) file under VensimModels folder, `stan_builder.build_function_block`  receives the following input: predictor and outcome.
```
stan_builder.create_stan_program(["failure_count", "repair_time"], ["battle_field", "repair_shop"])

stan_builder.create_stan_program(["demand"], ["inventory", "backlog"])
``` 

