## 1. stochasticity
- [[discrete_event]], [[markov_chain]], [[stock_flow_compartment]]'s process noise

## 2. aggregation level
- compartment vs agent-based vs discrete event
 - SD and agent based modeling are a match made in heaven. At some level disaggregate models still need aggregate representations of agents; modelers could learn a lot from SD about good representation of behavior and dynamics, not to mention good habits like units checking that are seldom followed. At the same time, SD modelers could learn a lot about emergent phenomena and the limitations of aggregate representations. from https://metasd.com/2010/09/sd-build-bridges/

## 3. programming type
- (functional vs object-oriented) [[system_dynamics_discrete_event]] #tfq 

|                        | System Dynamics                                                                             | Discrete Event Simulation                           |
| ---------------------- | ------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| clock type             | continuous                                                                                  | interarrival time ~ exp($\lambda$)                  |
| # of variables         | a few                                                                                       | many, Stochastic process                            |
| e.g.                   | fluid flow, strategic                                                                       | longest waiting time, backlog estimate              |
| how                    | global clock                                                                                | simulation clock                                    |
|                        | Relation-based; differential equation i.e. identify structure + relationships within system | Object-based                                        |
|                        | nonlinear                                                                                   | linear                                              |
| direction of inference | deconvolution i.e. what is Y given X + Y = Z, X + Z = 10 (Dirichlet problem)                | convolution i.e. what is Z given X, Y and X + Y = Z |
