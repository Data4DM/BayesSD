Time, Graph, Openness, Hierarchy are four components of system structure.

## 1. Time
Everything is relative. Any policy can be myopic as the time horizon can always be elongated. Speed is the integration of acceleration, but is the differentiation of location. Worlding starts from setting the time horizon and time step. 

## 2. Graph: Time+Space
Once the time axis is set, we move on to the spatial structure layout. Stock and flow diagram is a cyclic directed graph with the aggregation lever in each link. This aggregation is why the graph holds not only the information of space but also time. Modeler's will for system's heterogeneity, is expressed as the number of assumed parameter i.e. replacing nuisance parameter to its equilibrium value (first moment). `N`th order system's order usually has `N` number of stocks. With greater order comes greater responsibility for the marginalized out heterogenity. These integration explains "low pass filter" role of SD models, killing the aleatoric uncertainty with high frequency.

Usually, variables in one view are one connected graph.

## 3. Openness: Information+Energy+Material
Four types of system exists depending how open this system is on the axis of information, energy, and material. Closed, information open, information+energy open, information+energy+material open are the four systems in order of modeling complexity.

 The following  (n $\in$ 1..N) structure classification may tell us something on how open the system is. For instance, c is the most closed (perfect markov chain). Balking is one physical mechanism that transforms open to closed system.
a. flow - $(\text{stock}-\text{flow})_{n}$
b. flow - $(\text{stock}-\text{flow})_{n}$- stock
c. stock - $(\text{flow}-\text{stock})_{n}$
d. stock - $(\text{flow}-\text{stock})_{n}$- flow

#hrq Q. Could we find the relation between a~d to information, energy, material open system?

## 4. Hierarchy
To implement fractional order of aggreagation, we use hierarchical Bayesian modeling with subscripts. 


## Eight examples
Below are eight examples of world models (in process).

| Name           | Time (unit, init, final, step)    | list of Stock                                                                                                                                                                                                                  | order | View # and name                                                     | Info | Energy | Material | Hierarchy |
| -------------- | --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----- | ------------------------------------------------------------------- | ---- | ------ | -------- | --------- |
| SEIRb          | day, 50, 580, .25                 | S, E, I, Recovered, Dead                                                                                                                                                                                                       | 6     | 1                                                                   |      |        |          |           |
| Project        | week, 0, 200, .125                | Rework Backlog, Quality Assurance Backlog, Work Released, Initial completion backlog, Project duration, Project resources                                                                                                      | 6     | 2: workflow, resource                                               |      |        |          |           |
| LongWave       | year, 0, 200, .03125 (1/32 month) | Expected orders, Capital Supply Line, Capital Stock, Backlog, Goods Supply Line                                                                                                                                                | 5     | 3: capital goods, cosunmer goods, capital sector                    |      |        |          |           |
| MarketGrowth   | month, 0, 130, .25                | Sales Force, Recent Revenue, Backlog, Delivery Delay Perceived by Market, Delivery Delay perceived by Company, Capacity                                                                                                        | 6     | 4: sales force, production, market, capacity aquisition             |      |        |          |           |
| ServiceQuality | week, 53, 300, .125               | sales force, recent revenue, backlog, delivery delay perceived by company, delivery delay perceived by market, capacity                                                                                                        | 14    | 5: input, service capacity, labor, delivery, quality                |      |        |          |           |
| Material cycle | year, 0, 160, .03125              | Pink Noise, Industry Demand, Long Run Expected Price, Expected Production Costs, WIP, Inventoy, Capacity Utilization, Short Run Expected Price, Expected Variable Costs, Traders' Expected Price, Perceived Inventory Coverage | 11    | 5: unit cost, demand, desired capacity, production inventory, price |      |        |          |           |
| UrbanDynamics  | year, 0, 250, 1                   |                                                                                                                                                                                                                                |       |                                                                     |      |        |          |           |
| World3         | year, 1900, 2100, .5              |                                                                                                                                                                                                                                |       |                                                                     |      |        |          |           |

#hrq  longwave model: 
- may I call this as mng(capacity)
- should I count graph connected around init capital stock as one?
- 

### 1. SEIRb
Mng(Population)
![[Pasted image 20220822225557.png]]

### 2. Project
Mng(Project)
![[Mng(project).excalidraw.svg]]


### 3. Capacity
Mng(Capacity): capital
![[Mng(Longwave).excalidraw.svg]]


### 4. Market growth
Mng(Market)
![[Mng(Market).excalidraw.svg]]
- why do we have three backlogs?
- book to bill ratio?
- stock: sales force, reent revenue, backlog, delivery delay perceived by company, delivery delay perceived by market, capacity


### 5. Service quality
Mng(Service)
![[Manage(Service).excalidraw.svg]]

### 6. Material Cycle
Mng(MaterialSupplyPink Noise, Industry Demand, Long Run Expected Price, Expected Production Costs, WIP, Inventoy, Capacity Utilization, Short Run Expected Price, Expected Variable Costs)

![[Mng(Commodity).excalidraw.svg]]

### 7. City
Mng(City)


### 8. World 
Mng(World) 


### Variation (a.k.a. Uncertainty)
As the main part of calibration is inference, our goal is to formulate dynamic model into Bayesian statistical model.
- Classify variables:
	- semantic: time, ratio, rate, price, state
	- SD_syntax: assumed/estimated `parameter` from _exogenous_ and  observed/simulated `state` and latent for _endogenous_
	- Bayes_syntax: data, transformed data, parameters, transformed parameters, model, generated quantities

- Verify variation source as:
	- semantic: exogenous parameters like `time`, `ratio`, `rate`, `price` 
	- SD_syntax:  `parameter var`, `process var`, `measurement var`
	- Bayes_syntax (block for Stan syntax): `parameter var` as prior distribution in params block, `measurement var` as likelihood distribution in params block, `process var` as function block (need either Python for data generation or C++ for RNG in Stan function block)

- Understand dynamic model in generalized linear regression context: `observed state` Y as `outcome` and `assumed parameter` value X as `predictor`
- Understand how causal and feedback structure is affected by Bayesian inference
- Understand the role of parameter inference in terms of model calibration (first heuristic Ring-Toss success ratio on different quantiles then formal SBC)

### Hierarchy

[This](https://www.casact.org/sites/default/files/2021-02/compartmental-reserving-models-gesmannmorris0820.pdf) hierarchical compartment model paper introduces hierarchical model as popular tools in social and life sciences whose role is to help us understand which characteristics are shared among individuals within a population as well as which ones vary, and to what extent. I believe the connection between HM and aggregation from System dyanmics is natural as hierarchical model (a.k.a partial pooling) infer the degree of heterogeneity. HM infers from data, where the data-generating-process stands between no pooling (no mixing) and complete pooling (perfect mixing). 

Hazhir and I set the goal of 879 Fall seminar as calibrating hierarchical model in production model (Chp.18 of business dynamics textbook) which I call below as Demand-Supply. In this context, the following questions need to be addressed: 

1. Could [agent-based (AB) VS Differential equation (DE)] be paralleled to [No-pooling VS Complete-pooling] or [Centered VS non-centered] parameterization in Hierarchical Bayesian? (more on [Reference](https://github.com/hyunjimoon/DataInDM/edit/main/Recitation/4%20Examples%20PP-DS-D-H.md#sd-community)[1])

2. If so, what might be the quantity corresponding to the mean of stochastic AB outcomes (e.g. fig.2 in the paper above) in Bayesian context? 

3. Could vensim subscript and hierarhical model replace order fullfillment lookup function? I think the source of fuzzy function is M:1 (M SKUs each with different (but similar) production process become 1 item in shipment process) based on the following from BD text:

> The case where the order fulfillment ratio equals the 45" line when MSR < DSR and 1 when MSR IDSR corresponds to the formulation SR = MIN(DSR, MSR) and would represent a situation where either there is only one SKU or where the demand for each type of inventory is perfectly correlated and predictable.

If time allows, I wish to address interaction between temporal heterogenity and spatial heterogenity which may be accessed with cross-correlation of time series. To elaborate, Hierarchy allows the spectrum between heterogenous to homogenous on spatial axis but with this hierarchy evolve over time, it faces another hierarchy in time axis due to seasonality. Understanding the interaction between two hierarchy interests me. [This](https://dl.acm.org/doi/abs/10.1016/j.eswa.2022.117195) paper was my first attempt in modeling hierarchy on time axis to forecast multiseasonality timeseries. 

## How
We start with a simple prey-preditor (PP) model and compare with demand-supply (DS) model to understand three sources of variation: parameter, measurement, and process. Due to structural differences, PP includes two (parameter and measurement) while DS can be modeled to have all three variations. Then we introduce hierarchy to the two model to test HM's role of gauging system heterogeneity. The goal is to learn allowable aggregation level.

### M1: Prey-Predator (PP)
<img width="856" alt="image" src="https://user-images.githubusercontent.com/30194633/182760257-81fac798-1927-430d-841e-40569427b43f.png">

PP has 8 parameters to estimate and 0 parameters that is assumed

8 = 4 (2*2) stock-related (:= observable)

	- `latent_state_init`, `msr_error_scale` for each stock `Prey`, `Predator`

plus 4 estimated params (:= external to loop)

	- `prey_birth_coeff`, `prey_death_coeff`, `pred_birth_coeff`, `pred_death_coeff`

### M2: Demand-Supply (DS)
<img width="1210" alt="image" src="https://user-images.githubusercontent.com/30194633/182761909-83a6c6dd-c683-4fec-9cf8-5f302be4209c.png">

DS has 8 parameters to estimate and 5 parameters that is assumed

8 = 6 (2 * 3) stock-related

	- `latent_state_init`, `msr_error_scale` for each stock `Supply Line`, `Inventory`, `Backlog`

plus 2 estimated params 

	- `supply_lead_time`, `shipment_lead_time`,

and

5 `assumed params`

	- const: `supply_line_adj_time`, `inventory_adj_time`, `backlog_adj_time` , `demand_adj_time`
	- series: `demand`

Note that diagram follows the rule of
- variable color: according to semantic and unit
	- red for time (month), green for state #, blue for rate (#/month), skyblue for ratio (dmnl)
	- orange is `estimated params`
- arrow shape: solid arrow for same level or integration and dotted arrow for derivative

### M3: Hierarchical version of M1 and M2


### (if time permits) M4: Diffusion (SI, SIR, COVID) and its hierarchical version.

## Reference
### SD community
[1] [Heterogeneity and Network Structure, 2010](https://pubsonline.informs.org/doi/abs/10.1287/mnsc.1070.0787) by Hazhir and John which compares Agent-Based and Differential Equation Models on different network structure which I wish to connect with no-pooling (separate) VS complete-pooling (perfect mixing) or centered (similar effect with no-pooling) VS non-centered parameterization (similar effect with complete-pooling) in Hierarchical Bayesian. There are several Bayesian literature that analyzes the condition (e.g. scarce data) where one of the two outperforms other. For parameterization, it is known alternating the two is optimal.

[2] [last Twinkie, 2017](https://metasd.com/2017/03/dynamics-of-the-last-twinkie/) and [aggregate cats, 2010](https://metasd.com/2010/11/aggregate-cats/) post from Tom's blog. The first is related to hierarchy hidden in order fullfillment ratio lookup function (M:1 mapping of SupplyLine SKU to Shipment item). The second extends the above paper, introducing disaggregate representation of the population using approximation from [this](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000968#pcbi.1000968-Keeling2) paper on obesity diffusion.
 
### Bayes community
[3] [Gaining Efficiency by Combining Analytical and Numerical Methods to Solve
ODEs: Implementation in Stan and Application to Bayesian PK/PD Modeling, 2017](https://www.metrumrg.com/wp-content/uploads/2017/10/Gillespie_MixedSolver_ACOP2017.pdf)

[4] Stan discourse on hierarchical prey-predator starting from [Hierarchical Lotka Volterra](https://discourse.mc-stan.org/t/hierarchical-lotka-volterra/4423) and ending with [Estimating Parameters for Chaotic Systems](https://discourse.mc-stan.org/t/estimating-parameters-for-chaotic-systems-lotka-volterra-redux/5243) which includes Charles' `CStem` package for hierarchical SDE (2018)
