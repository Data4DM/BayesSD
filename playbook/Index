
Model calibration can be viewed as balance loop between generator $(y|\theta)$ and estimator $(\theta|y)$.

## 1. Mapping SD model to Stats. model

| -        | Statistical model | SD model                               |
| -------- | ----------------- | -------------------------------------- |
| variable | predictor         | driving variable                       |
| variable | outcome           | target variable                        |
| data     | predictor value   | observed or assumed value of predictor |
| data     | observed outcome  | target variable data                   |
| simulated result     | simulated outcome | ODE solution of target variable        |

For predictor value, distinguishing two ways how predictor values are set (observed or assumed) are crucial. It directly affects the estimation process; parameter corresponding to assumed predictor stay fixed as the sampler explores the parameter space. We will call this fixing or conditioning as "clamped 🗜". The table may be extended based on  [this](https://mc-stan.org/docs/reference-manual/statistical-variable-taxonomy.html#statistical-variable-taxonomy) section of Stan manual, especially regarding missing data concepts.


## 2. Mapping Stats. model to Code
Based on the mapping, `stan_builder` on pysd translate Vensim's `.mdl` file into Stan's `.stan` file for data generation and estimation. `create_stan_program_generator` and `create_stan_program` are functions that we will mainly use. The main difference is their purpose which is better understood when thinking in terms of Stan's program block. Stan has six program blocks which modularizes possible inflow and outflow of information in statistical estimation process. The following two stan files for non-hierarchical, non-ODE model illutstrate their difference. Also, measurement parameter ($\sigma$) is fixed as 1.2.

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

<img width="819" alt="image" src="https://user-images.githubusercontent.com/30194633/179243325-f3dbfb4f-19b7-4832-8c6f-8975f49a7f39.png">


## 3. Mapping Hierarchical SD_Stats. model to Code
What code components is additionally needed for ODE and hierarhical model? This section introduces how function block encodes ODEs and prior parameters can express hierarchical concept. With these techniques, hierarchical SD model is translated into Stan file which once plugged into optimization algorithm implemented in Stan returns parameter samples.

#### Function block for ODE
Hierarchical modeling predicts the outcome through linear combination $\eta$ transformed by the function $D$ (which we will call family distribution e.g. Poisson or Logitistic). $D$ assumes a certain distribution for $y$ and $y_i \sim D(\eta_i, \phi)$ stresses how each $i$th data point is modeled.  Parameter $\phi$ is global parameter that do not vary across data points, such as prior parameter or measurement parameter. Example of the measurement parameters are standard deviation $σ$ in normal models, shape $\alpha$ in Gamma, dispersion $\phi$ in negative binomial models. The linear predictor can generally be written as $\eta = X \beta + Z u$ where $\beta, u$ are each population and group-level coefficient parameters and X, Z are corresponding predictors (or sometimes called design matrix). Important advantage of Bayesian MCMC methods as compared to maximum likelihood approaches is treating  $u$ as model parameter in the same manner as $\beta$  whose uncertainty in its estimates can be evaluated. Maximum likelihood does not estimate $u$, instead assume it as part of the error term (Fox and Weisberg, 2011). Question remains whether every nonlinear model can be formulated into generalized linear regression problem. I am positive; but with the overhead of transforming data structure to matrix form as below. Success of formulating ODE models into `brms` package by Mage [here](https://magesblog.com/post/modelling-change/) is notable.

<img width="143" alt="image" src="https://user-images.githubusercontent.com/30194633/179926376-20f56913-3655-417e-866e-9f6ac92b28d7.png">

Hierarchical modeling predicts the outcome through linear combination $\eta$ transformed by the function $D$ (which we will call family distribution e.g. Poisson or Logitistic). $D$ assumes a certain distribution for $y$ and $y_i \sim D(\eta_i, \phi)$ stresses how each $i$th data point is modeled.  Parameter $\phi$ is global parameter that do not vary across data points, such as prior parameter or measurement parameter. Example of the measurement parameters are standard deviation $σ$ in normal models, shape $\alpha$ in Gamma, dispersion $\phi$ in negative binomial models. The linear predictor can generally be written as $\eta = X \beta + Z u$ where $\beta, u$ are each population and group-level coefficient parameters and X, Z are corresponding predictors (or sometimes called design matrix). Important advantage of Bayesian MCMC methods as compared to maximum likelihood approaches is treating  $u$ as model parameter in the same manner as $\beta$  whose uncertainty in its estimates can be evaluated. Maximum likelihood does not estimate $u$, instead assume it as part of the error term (Fox and Weisberg, 2011). Question remains whether every nonlinear model can be formulated into generalized linear regression problem:

#### Prior parameter for Hierarchy
Prior parameter models shared structure among groups as they both affect data generation process (dgp) of data for every group. Hence in the estimation process, which is the reverse of dgp, prior parameters are updated by new data from any group.

#### what `create_stan_program_generator` does
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

The main step of model calibration is to estimate parameter based on the generated outcome .`simulated_cases` synthesized with `create_stan_program_generator` or `pysd` can be plugged in as  `cases` for `create_stan_program`. 

#### what `create_stan_program` does
The following tables lists how `create_stan_program` translates SD_Stats. model into each block. The main componentes of data block are $Y, X, Z$ and parameters block include $\beta, u, \phi$.

| Program Block         | Purpose  | SD_Stats. model                                                         | e.g.  in SIR                 | e.g. in Hierarchical M.        |
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

<img width="816" alt="image" src="https://user-images.githubusercontent.com/30194633/179243440-7c6c6b41-3dde-4a94-9d94-31e0d13b879f.png">


#### how `create_stan_program` works under the hood

It first creates abstract syntax tree as described in [this](https://pysd.readthedocs.io/en/master/structure/vensim_translation.html) pysd vensim translation section then builds dependency graph for topological sort. This is needed as Stan requires all variables to be orderly declared. For instance, if `c=a+b` then, we make sure declaration of `a` or `b` precedes that of `c`. The aim is to get the minimal input from users for calibration process; for instance, repair and inventory model (`Repair.mdl, Inventory.mdl`) file under VensimModels folder, `stan_builder.build_function_block`  receives the following input: predictor and outcome. Codes are underdevelopment in [here](https://github.com/Dashadower/pysd) which we aim to merge into pysd package. You can run `testing.py` script in `test_scripts` folder. Running the following returns the template for `.stan` as below.
```
> vf = VensimFile("test_scripts/vensim_models/Inventory.mdl")
> stan_builder.create_stan_program(["demand"], ["inventory", "backlog"])

functions {
    vector vensim_func(real time, vector outcome,     real demand    ){
        real inventory = outcome[1];
        real backlog = outcome[2];

        real sd_of_demand = 10;
        real inventory_adjustment_time = 3;
        real supply_line_adjustment_time = 3;
        real minimum_processing_time = 3;
        real mean_of_demand = 100;
        real desired_delivery_delay = 3;
        real fulfilment_ratio = 1;
        real bl_out = shipment_rate;
        real bl_in = demand;
        real back_log = bl_in - bl_out;
        real desired_shipment = back_log / desired_delivery_delay;
        real shipment_rate = desired_shipment * fulfilment_ratio;
        real inventory_period = 5;
        real demand_forecast = demand;
        real desired_inventory = demand_forecast * inventory_period;
        real lead_time = 5;
        real desired_supply_line = demand_forecast * lead_time;
        real adjustment_for_supply_line = desired_supply_line - supply_line / supply_line_adjustment_time;
        real adjustment_for_inventory = desired_inventory - inventory / inventory_adjustment_time;
        real desired_production_start = adjustment_for_inventory + adjustment_for_supply_line + demand_forecast;
        real production_start = fmax(0,desired_production_start);
        real supply_line = production_start - production_completion;
        real production_completion = supply_line / lead_time;
        real inventory_dydt = production_completion - shipment_rate;
        real maximum_delivery_rate = inventory / minimum_processing_time;
        real unit_overage_cost = 1;
        real overage_cost = inventory + supply_line * unit_overage_cost;
        real deficient_amount = fmax(0,back_log - shipment_rate);
        real unit_underage_cost = 9;
        real underage_cost = deficient_amount * unit_underage_cost;
        real cost = underage_cost + overage_cost;
        real forecast_period = 3;
        real final_time = 100;
        real initial_time = 0;
        real time_step = 1;
        real saveper = time_step;

        return {inventory_dydt, backlog_dydt};
    }
}
data{
}
transformed data{
}
parameters{
}
transformed parameters {
    vector[2] initial_outcome;
    initial_outcome = {inventory, backlog};
    array[] vector integrated_result = integrate_ode_rk45(vensim_func, initial_outcome, initial_time, times, demand);
}
model{
}
``` 
