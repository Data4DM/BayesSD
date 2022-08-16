Merging many to one based on two objects' heterogeneity i.e. from diffuse to tight prior. 

## Bayequentist
How different things can be viewed as the same from higher perspective e.g. Bayesian and Frequentists are similar (From Hetereo to Homogeneity)

Possimpible is nexus between the Possible and the Impossible (How I met you mother E4.14)

 [This](marginnote3app://note/200AB425-22DA-49A3-8A2C-30603B2E290A) mindmap compares Bayesian and and Frequentist inference. 
 
 However, like possimpible, we should combine both philosophies; [this](marginnote3app://note/982C1E63-BCBB-4E83-8E34-377AE616D789) mindmap shows how we choose to approach our dynamic model calibration using data. 
 
 Darwid defines Prequential as Probabilistic / Predictive / Sequential, a general framework for assessing and comparing the predictive performance of a FORECASTING SYSTEM in his 2010 [workshop slide](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.169.5851&rep=rep1&type=pdf).

Andrew explains [here](https://statmodeling.stat.columbia.edu/2018/06/17/bayesians-are-frequentists/) how Bayesian could be one for of frequentist by corresponding Bayesian prior distribution to the frequentist sample space. "It’s the set of problems for which a particular statistical model or procedure will be applied."

Christina explains (as a response to the above blog) how frequentist's loss function correspond to Bayesian's prior and how both aim for decision sets of minimal average size (with the only difference being the dimension along which error is controlled).

## Calibration


| Step | Program's work (P-rows have `.function(input)`)                                                | User's work                                                                                                       | added info (for U-row) or infrastructure (for P-row)       -            | out format                    |
| ---- | ---------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------- |
| U1   | `Vensim` assists U1.a()                                                                        | a. Translate mental model to SD model                                                                             | Relation btw Variables                                                  | `.mdl`                        |
| U2   | `PySD` assists U2.a()                                                                          | a. Classify parameters `est_param`, `ass_param`, b. Select `obs_state` among stocks                               | Want (`est_param`) and Have (assume: `ass_param`, observe: `obs_state`) | `.json`                       |
| P1   | `PySD`, `.read_vensim`(U1.a): Switch lang. from FP to OOP                                      |                                                                                                                   | None, `.py`                                                             | `.py`                         |
| U3   |                                                                                                | a. Supply value or series of `assmed_param`, b. Choose `family`(:= dist. of `msr_err_scale`)                      |                                                                         | DataFrame `object`,   `.json` |
| U4   |                                                                                                | a. Choose `prior_family`(:= `est_param`'s prior dist. type) , b. Set `prior_param` (:= `est_param`'s prior param) |                                                                         | `.json`                       |
| P2   | `PySD`, `.run`(U2.ab, U3.ab): Generate synthetic data                                          |                                                                                                                   |                                                                         | DataFrame `object`            |
| P3   | `PySD`,`.create_stan_program`(U2.ab, U3.ab): Switch lang. from OOP to PPL                      |                                                                                                                   |                                                                         | `.stan`                       |
| U5     |                                                                                                |        a. Set precision with `iter_sampling` (:= # of samples)                                                                                                           |                                                                        |      `int`                           |
| P4   | `Stan`, `.sample`(P2, P3, U5.a)): Sample posterior draws (optimize measure with specified precision) |                                                                                                                   |                                                                         | DataFrame `object`            |

### Work needed

- Revise the above table until we have consensus
	- Time-orderly step from U1 to U5 and P1 to P4 describes interaction interface between programs and users as they evolve. (branched out from Bayesian workflow)
	- P.a(), U.a() are function, P.a, U.a are output
	- In U2: `est_param` : estimated parameter, `ass_param`: assumed parameter, `obs_state`: observed state
- Unify input for P3 and P4 by defining types for U2ab, U3ab (ref: [Arviz.InferenceData type](https://arviz-devs.github.io/arviz/api/generated/arviz.InferenceData.html))
- Define function with the following input (ref: `brms` [brm()](https://paul-buerkner.github.io/brms/reference/brm.html) ) would enhance process' modularity
	 - `family`
	 - `prior`
	 - `algorithm`
	 - `stan_model_args`
- Define prior class (ref: brms [set_prior](https://paul-buerkner.github.io/brms/reference/set_prior.html), comparison with pymc's prior system is needed)
- Connect algorithm to Stan's different algorithm ([`optimize()`](https://mc-stan.org/cmdstanpy/api.html#cmdstanpy.CmdStanModel.optimize "cmdstanpy.CmdStanModel.optimize") for optimization,  [`variational()`](https://mc-stan.org/cmdstanpy/api.html#cmdstanpy.CmdStanModel.variational "cmdstanpy.CmdStanModel.variational") for variational inference, look for Kalman filtering if needed)
- Decision-based calibration using [`generate_quantities()`](https://mc-stan.org/cmdstanpy/api.html#cmdstanpy.CmdStanModel.generate_quantities "cmdstanpy.CmdStanModel.generate_quantities")
- Add the following to notebook:
	- a. prior predictive check: how users do U3 and U4 (especially U4 requires both stat + domain knowledge)
	- b. calibration: 
		- 1) revisit goals and resources in U2, assumptions in U3, prior knowledge in U4, system tolerance in U5 based until model passes SBC test
		- 2) sensitivity check on prior distribution and prior parameter 
		- 3) compare posterior with prior
	- c. posterior predictive: compare with the real observed state data 
 


### Remaining question:
- U2b: which is better between "b. Select `obs_state` among stocks" and b. Classify `obs_state` and `nonobs_state`? It depends on the average ratio of `obs_state` among stock variable which was 1 for prey-predator, and .75 for demand-supply model.
- Is it ok to view vensim as functional programming (FP) language? Compared to OOP, FP's traits fewer data types and many functions seem related (perhaps why Julia has great ODE lib) e.g. of object vs function orient: `array.sort()` vs `sort(array)` 
- do you agree 
	- FP is better for U1 elicit mental model? May I express this as translate prior knowledge to prior distribution (or archetype, policy, parameter)?
	- OOP is better for P2 data generation?

