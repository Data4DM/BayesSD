(in process)

Time, Graph, Openness, Hierarchy are four standards for classifying system structure.
- Two forces of system: soul and body (by [Jules Verne](https://www.enquoted.com/jules-verne--dost-thou-not-understand-that-there-are-two-distinct-forces-in-us-that-of-the-quote.html))

| -                   | Guard System                                                                                                      | Attack System                                                                                           |
| ------------------- | ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| e.g. of man         | Angel [Michael](https://en.wikipedia.org/wiki/Michael_(archangel)) asks one's fear, White hacker | Devil [Lucifer](https://en.wikipedia.org/wiki/Lucifer) asks one's desire, Black hacker |
| e.g. of machine     | Shield, Red fiber muscle (aerobic, fatigue-tolerant)                                                        | Spear, White fiber muscle (anaerobic, rapid use)                                                 |
| e.g. of material    | Water (Long time, high latent heat w/ hydrogen bond)                                                     | Fire (Short time, Ignition, Energy space),                                                              |
| e.g. of information | Cyber-security, Privacy, Fairness, Sustainability, Innocent until proven guilty, Time, worst avoiding, Hazhir's [quest](https://medium.com/@jahandad.memarian/hazhir-rahmandad-applying-system-dynamics-to-social-challenges-998b5bb62f84) for lose-lose strategy                                                                 | Hacking, Phishing, Discrimination, Guilty until proven innocent ([reverse onus](https://en.wikipedia.org/wiki/Reverse_onus)), Space                                                                     |
| e.g. of energy      | Renewable energy                                                                                                  | Non-renewable energy                                                                                    |
| synonym             | Prevention, Defense                                                                                               | Promotion, Offense                                                                                      |
| objective function  | minimize the cost                                                                                                 | maximize the benefit                                                                                    |
| Goal                | Sustain, Stable, Negative-loop dominant, [industry 5.0](https://www.forbes.com/sites/jeroenkraaijenbrink/2022/05/24/what-is-industry-50-and-how-it-will-radically-change-your-business-strategy/?fbclid=IwAR0dfsxXp54qUtXG1RK-Jrof1E4qjceVnnL1umE3EvZeIkttv6KSwmktsT8&sh=2815339120bd) (humans as ends company as solution)                                                                           | Subvert, Non-stable, Positive-loop dominant, Path-dependence, industry 4.0 (human as means, company as problems)                                            |
| interconnectedness  | dense connection                                                                                                  | sparse connection                                                                                       |
| time horizon        | long term, noise-free (aggregated to 0)                                                                           | short term, noise-dependent                                                                             |
| difficulty          | nobody gets credit for something fixing problem that didn't happen                              |   proving existance is easier than non-existence                                                                                                       |
| math symbol         | $\forall$                                                                                                         | $\exists$                                                                                               |
| uncertainty         | fight with the `unknown` (=its complement = nature)                                                               | fight with the `known`                                                                                  |
| statistical support | uniformity test like SBC (computationally heavy)                                                                  |                                                                                                         |
|                     |<img width="478" alt="image" src="https://user-images.githubusercontent.com/30194633/183263726-f225ba87-dcc9-4dbc-89d5-359ece1dc0f4.png">                                                                              | <img width="506" alt="image" src="https://user-images.githubusercontent.com/30194633/183263743-8ec4de46-bd4f-43d2-9a77-2041cc62543c.png">                                                                   |



## 1. Time
Everything is relative. Any policy can be myopic as the time horizon can always be elongated. Speed is the integration of acceleration, but is the differentiation of location. Worlding starts from setting the time horizon and time step. 

## 2. Graph: Time+Space
Once the time axis is set, we move on to the spatial structure layout. Stock and flow diagram is a cyclic directed graph with the aggregation lever in each link. This aggregation is why the graph holds not only the information of space but also time. Modeler's will for system's heterogeneity, is expressed as the number of assumed parameter i.e. replacing nuisance parameter to its equilibrium value (first moment). `N`th order system's order usually has `N` number of stocks. With greater order comes greater responsibility for the marginalized out heterogenity. These integration explains "low pass filter" role of SD models, killing the aleatoric uncertainty with high frequency.

Usually, variables in one view are one connected graph.

### body and soul system
sharing material VS sharing 

## 3. Openness: Information+Energy+Material
Four types of system exists depending how open this system is on the axis of information, energy, and material. Closed, information open, information+energy open, information+energy+material open are the four systems in order of modeling complexity.

 The following  (n $\in$ 1..N) structure classification may tell us something on how open the system is. For instance, c is the most closed (perfect markov chain). Balking is one physical mechanism that transforms open to closed system.
 
### a. flow - $(\text{stock}-\text{flow})_{n}$
#### [[mng(diffusion)]]
##### existence of self-loop
![[Pasted image 20220929064847.png]]
![[Pasted image 20220929071937.png]]
- loop of suceptible is interesting whose equations are:
	- Susceptible[Rgn,NVx] = -Infection Rate VS[Rgn,NVx]-Vaccinations[Rgn,NVx]+Immunity Loss[Rgn,NVx]+Losing Immunity Susceptible[Rgn]
	- Susceptible[Rgn,NVx] = -Infection Rate VS[Rgn,Vx]+Vaccinations[Rgn,NVx]-Losing Immunity Susceptible[Rgn]+Vaccinations[Rgn,Naive]
	- Susceptible[Rgn,Naive] = -Infection Rate VS[Rgn,Naive]-Vaccinations[Rgn,Naive]
Entire population, subscripted with `VS` is divided into `Naive, NVx, Vx`. `VS`'s subrange `VS2` includes `Naive, NVX, VX` while `VS3` includes `Naive, NVX`

  
#### [[mng(chain)]]
![[Pasted image 20220929071219.png]]

![[Pasted image 20220929081905.png]]
### b. flow - $(\text{stock}-\text{flow})_{n}$- stock



### c. stock - $(\text{flow}-\text{stock})_{n}$
- [[mng(project)]] explains "no equilibrium condition"
![[Pasted image 20220929082027.png]]

### d. stock - $(\text{flow}-\text{stock})_{n}$- flow

### others
- from [[mng(service)]]
- ![[Pasted image 20220929082423.png]] 

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
[[mng(diffusion)]]

![[mng(diffusion).png]]

### 2. Project
[[model_month/2 mng(project)/mng(project)]]
![[Pasted image 20221028173956.png]]



### 3. Capacity
[[model_month/2 mng(capacity)/mng(capacity)]]: capital
![[Mng(Longwave).excalidraw.svg]]
![[mng(capacity).png]]

### 4. Market growth
[[mng(market)]]
![[Pasted image 20221028174043.png]]
- why do we have three backlogs?
- book to bill ratio?
- stock: sales force, reent revenue, backlog, delivery delay perceived by company, delivery delay perceived by market, capacity


### 5. Service quality
[[mng(service)]]
![[Pasted image 20221028174145.png]]


### 6. Material Cycle
[[Mng(MaterialCycle)]]
Mng(MaterialSupplyPink Noise, Industry Demand, Long Run Expected Price, Expected Production Costs, WIP, Inventoy, Capacity Utilization, Short Run Expected Price, Expected Variable Costs)

![[Pasted image 20221028174218.png]]

### 7. City
[[mng(city)]]


### 8. World 
[[mng(energy)]] 



## Reference
### SD community
[1] [Heterogeneity and Network Structure, 2010](https://pubsonline.informs.org/doi/abs/10.1287/mnsc.1070.0787) by Hazhir and John which compares Agent-Based and Differential Equation Models on different network structure which I wish to connect with no-pooling (separate) VS complete-pooling (perfect mixing) or centered (similar effect with no-pooling) VS non-centered parameterization (similar effect with complete-pooling) in Hierarchical Bayesian. There are several Bayesian literature that analyzes the condition (e.g. scarce data) where one of the two outperforms other. For parameterization, it is known alternating the two is optimal.

[2] [last Twinkie, 2017](https://metasd.com/2017/03/dynamics-of-the-last-twinkie/) and [aggregate cats, 2010](https://metasd.com/2010/11/aggregate-cats/) post from Tom's blog. The first is related to hierarchy hidden in order fullfillment ratio lookup function (M:1 mapping of SupplyLine SKU to Shipment item). The second extends the above paper, introducing disaggregate representation of the population using approximation from [this](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000968#pcbi.1000968-Keeling2) paper on obesity diffusion.
 
### Bayes community
[3] [Gaining Efficiency by Combining Analytical and Numerical Methods to Solve
ODEs: Implementation in Stan and Application to Bayesian PK/PD Modeling, 2017](https://www.metrumrg.com/wp-content/uploads/2017/10/Gillespie_MixedSolver_ACOP2017.pdf)

[4] Stan discourse on hierarchical prey-predator starting from [Hierarchical Lotka Volterra](https://discourse.mc-stan.org/t/hierarchical-lotka-volterra/4423) and ending with [Estimating Parameters for Chaotic Systems](https://discourse.mc-stan.org/t/estimating-parameters-for-chaotic-systems-lotka-volterra-redux/5243) which includes Charles' `CStem` package for hierarchical SDE (2018)
