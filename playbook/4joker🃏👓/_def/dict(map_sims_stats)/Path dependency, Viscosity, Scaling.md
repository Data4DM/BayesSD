## Comparison of system with two boxes: SI vs PP

| -                      | Suceptible-Infected           | Prey-Predator                                |                                                        |
| ---------------------- | ----------------------------- | -------------------------------------------- | ------------------------------------------------------ |
| order                  | box-flow-box  (closed system) | flow-box-flow (open system)                  |                                                        |
| members                | cooperative actors            | competitive actors                           | competition:= heterogeneous goals                      |
| global goal            | guard, allocate within        | attack, match between                        |                                                        |
| relation between boxes | zero sum, relative            | absolute                                     |                                                        |
| # of flow/ # of box    | < 1                           | > 1                                          |                                                        |
| model for              | diffusion                     | competition, M:1 matching                    |                                                        |
| scale of `est.param`   | free (given N, ratio form)    | scale dep. coef. of rate (u-coef vs uv-coef) |                                                        |
| time window            | instant                       | long-term                                    | reason why time-hetero transm. rate is emphasized (HR) |
| equilibrium            | (space-time) locally stable   | locally unstable                             |                                                        |
| reference              | BD ch.9, negative feedback    | BD ch.10, positive feedback                  |                                                        |
| tag                    |       #ZeroSum                         |                                              |                                                        |


conservation of (first order)


## Angel and Devil

| -                   | Guard System                                                                                                      | Attack System                                                                                           |
| ------------------- | ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| e.g. of man         | Angel [Michael](https://en.wikipedia.org/wiki/Michael_(archangel)) asks "what is it that you fear?", White hacker | Devil [Lucifer](https://en.wikipedia.org/wiki/Lucifer) asks "what is it that you desire?", Black hacker |
| e.g. of machine     | Shield, Time, Red fiber muscle (aerobic, fatigue-tolerant)                                                        | Spear, Space, White fiber muscle (anaerobic, rapid use)                                                 |
| e.g. of material    | Water (Long time, Potential, high latent heat, hydrogen bond)                                                     | Fire (Short time, Ignition, Energy space),                                                              |
| e.g. of information | Cyber-security, Privacy, Fairness, Sustainability                                                                 | Hacking, Phishing, Discrimination,                                                                      |
| e.g. of energy      | Renewable energy                                                                                                  | Non-renewable energy                                                                                    |
| synonym             | Prevention, Defense                                                                                               | Promotion, Offense                                                                                      |
| objective function  | minimize the cost                                                                                                 | maximize the benefit                                                                                    |
| Goal                | Sustain, Stable, Negative-loop dominant                                                                           | Subvert, Non-stable, Positive-loop dominant, Path-dependence                                            |
| interconnectedness  | dense connection                                                                                                  | sparse connection                                                                                       |
| time horizon        | long term, noise-free (aggregated to 0)                                                                           | short term, noise-dependent                                                                             |
| difficulty          | proving non-existance is harder, nobody gets credit for something that didn't happen                              |                                                                                                         |
| math symbol         | $\forall$                                                                                                         | $\exists$                                                                                               |
| uncertainty         | fight with the `unknown` (=its complement = nature)                                                               | fight with the `known`                                                                                  |
| statistical support | uniformity test like SBC (computationally heavy)                                                                  |                                                                                                         |
|                     | ![[Pasted image 20220806145328.png]]                                                                              | ![[Pasted image 20220806145416.png]]                                                                    |





## Horizontal and Vertical Aggregation for Hierarchical system

| -                   | sharing time     (parallel)                | sharing time-space                              |
| ------------------- | ------------------------------------------ | ----------------------------------------------- |
| e.g. of man         | politics in Japan and Iceland              | politics in U.S. for black and white            |
| e.g. of machine     | engine modules (1 SKU) at SupplyLine level | engine (combination of M SKU) at Shipment Level |
| e.g. of material    |                                            |                                                 |
| e.g. of information |                                            |                                                 |
| e.g. of energy      |                                            | differt sources of renewable energy             |
| tag     |                                            |       #ZeroSum                                         |
|                     |                                            |                                                 |



Prevention vs Promotion: Is it simply Min vs Max?

- global and local
- diffusion and matching
- absoltue and relative
- SIR and prey-predator
- homogenity and heterogeneity
- complete pooling and no pooling
- differentiation (disaggregation) and integration (aggregation)
- differentiation becomes multiplication in frequency domain
- 
1. Simple why

2. What
Due to the non-negativity limit in physics or mathematical concepts, two opposite goals of prevention and promotion requires fundamentally different approaches. We first investigate the source of asymmetry through examples and connect this with scale-free and timelessness of the mathematical concept 'ratio' as opposed to 'rate'. Then we suggest recommendation for modeling and policy design that are resilient to scale for each goals. Several example such as marketing, disease treatment, sports 

- relative (prevention) vs absolute (promotion)

- two explicit fighting actors
- fighting with given demand

Imagine training a computer model for soccer game. How would setting the objective function as maximizing our score differ from maximizing score difference? To be the soccer champion, the latter is the correct

This comes down to local vs global view of the system. 

Imagine 

 a computer model for soccer game. How would setting the objective function as maximizing our score differ from maximizing score difference? To be the soccer champion, the latter is the correct

Path dependency is created from scale-free ratio model

In a scale-free model where ratio is used, dX_t/X_t = dB_t is symmetric. However, asymmetry is incurred from lower-bound constraint and scale as seen in the trajectory of X_t = X_0 * exp(B_t). This incurs different approach needed for preventive and promotive goals. Nobody is credited for something that didn't happen. The unknown, inexistence of limit, explains  using Fatou lemma, the sample path that reached zero in probability should  unknown associated with non-existing bounds

3. How

4. Why (examples)
- Preventing 

S_{t}=S_{0}\exp \left(\left(\mu -{\frac {\sigma ^{2}}{2}}\right)t+\sigma W_{t}\right).

Prevention: fairness, defense system (Army), climate 

Difference between defense and offense strategy:
- sport: [soccer]()
- [marketing](https://smallbusiness.chron.com/differences-between-offensive-defensive-marketing-20435.html)
- disease: [cancer treatment]()

## path dependency
White vs Pink noise: if you want to get the benefit of "viscosity scale-ignorance" go for pink noise. Else, white noise should have $\sqrt(n)$ aggregation scaling and if we want to match the simulated flow to the observed stock variable.


Viscosity 
Different scaling of Compound PP (y=x, ballistic) and BM (y = sq(x), diffusion)
- The size of `dt/T_c` is related to moments (its ignorable size depending on its size, we can choose to )
- Time-changed Brownian motion