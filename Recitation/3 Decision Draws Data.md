## 3D with 879879 loop
Three dots to connect: data, draws, decision. We first unite [draws-decision] then [data - [draws-decision]]. The main spirit is, real data comes last as we "Match supply with demand", not the other way around. For each module, we assume previous modules are `built-in`.

### 1. 879-Fall: Verify Draws-Decision
In 879, `Bringing data in dynamic models`, we limit the bounds for data, draws, decision as follows.
```
Given the `generator`,
- data: synthetic data
- data to draws: asymptotically unbiased inference algorithms e.g. HMC (and sequential MC)
- decision: stiff binary
```
Examples are not too very complicated (prey-predator, demand-supply, SIR) and the focus is on adding hierarcy in each of them.

### 2. 879-Spring: Validate Data - [Draws - Decision]
The difference with the first iteration is the use of real-world data. With this, we reverse engineer the first iteration by asking, "to make our decision noise-resilient, what form should our decision be, what data is needed, and what algorithm can do this most efficiently"? 
```
Given the `real-world data`,
- decision: flexible binary
- data to decision: Bayes factor simulation-based calibration and indirect inference
- draws: posterior approximators from simulation-based inference e.g. BayesFlow
```

This order is common in Bayesian inference where we first build the generator then do the inference conditional on the data. Working in both directions is the benefit of generative model (e.g. Bayesian) which operates on data-parameter joint space. Using this benefit, we argue the best practice of model building is to first make the rough mockup from data to decision then builuping up from the decision's end. For instance, the effect of new data on decision can be forwardly-simulated, then compared to inform us the best data. This spirit is similar to [Bayesian optimization](https://www.cs.ox.ac.uk/people/nando.defreitas/publications/BayesOptLoop.pdf). However, unlike their description of "taking human out of the loop", we aim to design human-machine interface. In practice, human's form of decision, or activation function in Bayesian optimization, becomes clearer during the model building iteration.

Parsimoniously constructed graphs with appropriate level of parameter uncertainty (i.e. identifiable structure with tight prior distribution) will facilitate the inverse procedure by preventing degeneracy in posterior space.

The value of real-world data i.e. empirical approach are two folds:
1. prevent fixed value of parameters cross the tipping boundaries
2. remove unrealistic attractor

I will use Jeroen's poster in ISDC 2022, _Sustainable consumption transformations: Should we mobilize the young generation?_ to illustrate the two. Appendix Struben22_SustainTrans.pdf is in `Reading` directory the same folder.

First, the model qualification test outcome (pass/fail) depends on the value `assumed parameter` is conditioned updon. Like a water's boiling point (100 degree at 1 atm), tipping points boundary is unavoidable. The least we can do is to move our decision (mostly binary, at most finite) away from these sensitive borders. The easiest remedy is to adjust the fixed value of `assumed parameter` as this sometimes is modeler's rough assumption. However, changing `estimated parameter`'s prior distribution or prior parmeter can be another remedy, followed by changing model parmaeterization or components. Even collecting more data are possible and recommended if this can make our decision more resilient. 

Jeroen's poster on aging model illustrates two attractors in the phase space; however, this analysis is based on the fixed value of `assumed parameter` (noted as green in his poster, e.g. $\tau_{yo}$ active life duration). Fixing $\tau_{yo}$ can be problematic in two ways: first in calibration then in analysis. Regarding calibration, the model that passed quality test when conditioned on $\tau_{yo}$ at 20 can fail the test at $\tau_{yo}$ = 30. In other words, the same model qualifed in 1900s (or at the time when active life duration was 20 years) becomes outdated as society evolved to the era of longer active life duration. Considering both real data and parameter for calibration is well discussed in the upcoming paper on simulation-based calibration. Second, even if the model passed the quality test, under different conditioning, the analysis (two attractors in phase space) may comepletely change. There may be one or three attractors for instance, affecting the downstream policy proposal.

Assumed-value of nuisance parameter affecting the test result is problematic but unavoidable as we can't afford full-Bayesian model where uncertainty is imbued to every parameter. Like a Pirate Roulette game, we should pray each time that our slice of fixed parameter hyperplane does not cross the tipping points. Inference helps us in this respect as we can alternately focus on different parmeters by switching back and forth between `estimated parameter` and `assumed parameter`. This zig-zag learning like that of Gibbs sampling is suboptimal but can help keep modelers away from borders by providing a more global view of the decision geometnry.

Second, is to argue the state value of a particular attractor is not realistic. Globally it may be the bimodal but if the scale of state for the second mode is out of bounds we may as well consider it unimodal. This allows us to save considerable amount of further analysis (`Analysis of tipping behavior` from the poster) by precluding certain scenarios. However, both known and unknown bias should be acknowledged as data in hand may not be the just representation of population.
![image](https://user-images.githubusercontent.com/30194633/181718173-4e7cda1d-4ce8-4130-8d8d-524b05af58d0.png)

### 3. 879-Fall: nonDiscrete [Data - [Draws - Decision]]
For the final iteration, we visit non-binary or continuous functions; examples being behavior classification (e.g. 25 cases in AMD 6) or policy optimization in stochastic settings (AMD 8).
