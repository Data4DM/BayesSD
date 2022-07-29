## 3D with 879879 loop
Three dots to connect: data, draws, decision. We first unite [draws-decision] then [data - [draws-decision]]. The main spirit is, real data comes last as we "Match supply with demand", not the other way around. For each module, we assume previous modules are `built-in`.

### 1. 879-Fall: Verify Draws-Decision
In 879,  `Bringing data in dynamic models`, we limit the bounds for data, draws, decision to
- data: synthetic data
- data to draws: HMC and sequential MC (not neural networks or other posterior approximators)
- draws to decision: only binary decisions

### 2. 879-Spring: Validate Data - [Draws - Decision]
Real data comes in during our second iteration. We argue the right questions to ask with this empirical approach is: to make our decision noise-resilient, what data is needed and how should it be collected? The effect of new data on decision can be simulated with Bayes rule as uncertainty can be propagated from data to samples of posterior draws then to samples of decision.

Parsimoniously constructed graphs (i.e. structure) with appropriate level of parameter uncertainty (i.e. tight enough prior distribution) will facilitate the inverse procedure by preventing degeneracy in posterior space.
- decision: binary
- decision to draws: simulation-based calibration and indirect inference
- draws to data:
- data: real data (serving as `attractor remover`)

The value of real data i.e. empirical approach are two folds:
1. infer parameter range
2. remove unrealistic attractor

I will use Jeroen's poster in SDS 2022, [_Sustainable consumption transformations: Should we mobilize the young generation?_]() with its appendix [[Struben22_SustainTrans.pdf]] to illustrate the two.

First, infer green (fixed parameter) and orange (sensitivity parameter) from observed states. For statistical and computational reasons, different verification and validation results are possible from different parameter range. For instance, it may be the case that aging model pass qualification test when $\tau_{yo}$ active life duration (assumed parameter) is fixed at 30 but fails when fixed at 20. In other words, the same model would be unqualified for a few decades before where active life duration would have been lower. Therefore, depending on the goal, real data can be used to both qualify and unqualify the model. This consideration of both real data and parameter is well discussed in the upcoming paper on simulation-based calibration.

Second, is to argue the state value of a particular attractors is by no mean achievable in the real world. If this is the case, it can save us from considerable amount of further analysis (`Analysis of tipping behavior` from the poster) by precluding certain scenarios. However, both known and unknown bias should be acknowledged as data in hand may not be the just representation of population.

![[Struben22Poster.png]]


### 3. 879-Fall: nonDiscrete [Data - [Draws - Decision]]
For the final iteration, we visit non-binary or continuous functions; examples being behavior classification (e.g. 25 cases in AMD 6) or policy optimization in stochastic settings (AMD 8).

