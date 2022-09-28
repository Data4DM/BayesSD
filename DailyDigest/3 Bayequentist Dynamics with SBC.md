## What
: Affordable Cutting-edge Analytics for All

Detailed:
Bayesian workflow on which stakeholder's demand, expert's structural knowledge, and machine's learning algorithms are balanced and tested. My work is focused on automating this flow with modular design so that its output, explainable policy, can be widely supplied which is the vision of my startup: cheap and cutting-edge curation.

Control panels


## How
: Design  `Prior specifier`, `Posterior approximator`, `Simulation-based Calibration` coflow for system data scientist whose work is detailed as:

- collects **Demand (demand prior)**  from stakeholders (executives, product managers, engineers, ops/business teams). They utilize a deep understanding of the business to develop decision frameworks that drive alignment on the most impactful problems and solutions.

- verifies **Behavior (structure prior)** from domain experts that governs the supply side.

- elicits **Variation prior** from domain targets that affects the demand side.

- develops **Inference Algorithms (posterior approximators)** that power internal and external production systems. They typically apply a combination of optimization, machine learning, and inference methods to design, improve, and monitor models and systems.

- tests the above combination with **Simulation-based calibration**.

## Why
: Modular production of  `Prior specifier`, `Posterior approximator`, `Simulation-based Calibration`.


## Detailed How (in progress)


| Step | Goal                                      | Machine's work                                                                                                                                 | Human's work                                                           | Bayes Component (Stan block)                                                       | output format                                                           |
| ---- | ----------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| 1    | Prior specification of Structure 🕸️        | `Vensim` assists H1.a()                                                                                                                        | H1.a Translate mental model to SD model (behavioral classification)    | Prior (`function`)                                                                 | `.mdl`                                                                  |
| 2    | Prior specification of Demand 💰            | `Vensim` assists H2.a()                                                                                                                        | H2.a List policy functions                                             |                                                                                    | `.vpd`                                                                  |
| 3    | Prior specification of Data Variation 🤷‍♀️    | `PySD` assists H3.abcd()                                                                                                                       |                                                                        |                                                                                    | `.json` with key: `est_param`, `ass_param`, `ass_param_ts`, `obs_stock` |
|      | - parameter variation                     |  sensitivity check to assist exploration path selection (given)                                                                                                                                              | H3.a Choose each parameters to be either `est_param` or `ass_param`    | Prior and constraint `est_param` : `transformed parameter` & `ass_param` : `data`) |                                                                         |
|      | - parameter variation                     |                                                                                                                                                | H3.b Specify scalar for `assmed_param`                                 |                                                                                    |                                                                         |
|      | - parameter variation                     |                                                                                                                                                | H3.c Specify vector_ts for `assumed_param_ts`                          |                                                                                    |                                                                         |
|      | - state variation                         |                                                                                                                                                | H3.d Choose each states to be `obs_state` or `unobs_state`             |                                                                                    |                                                                         |
| 4    | translate Manag. to Stats. lang.          | M1a. `PySD`, `.build_function_block`(H1.a)                                                                                                     |                                                                        |                                                                                    | `structure.stan`                                                        |
| 5    | Specify_explicit 🚥                         |                                                                                                                                                | H4.a. Choose `family` (:= dist. of y, penalty distribution for error)   | Likelihood (`model`)                                                               | `draws2data.stan` gq block,  `data2draws.stan` model, gq block          |
|      |                                           |                                                                                                                                                | H4.b Choose `prior_dist` (default: Normal)                             | Prior (`model`)                                                                    |                                                                         |
| 6    | Specify_implicit 🛢️                         |                                                                                                                                                | H5.a Specify {min, mode, max} value for `est_param`'s prior param      | Prior (`parameter`, `model`)                                                       | `draws2data.stan` gq block,  `data2draws.stan` model, gq block          |
|      |                                           |                                                                                                                                                | H5.b Choose sign (real, non-neg) for `est_param`'s prior param         |                                                                                    |                                                                         |
|      |                                           |                                                                                                                                                | H5.c Choose type (disc/cont) for `est_param`'s prior param             |                                                                                    |                                                                         |
| 7    | translate prior knowledge to distribution | M2a. map H5.abc to distributions (PERT normal or Poisson or Gamma etc)                                                                         |                                                                        |                                                                                    | $\theta \sim Normal(3, 1.5^2), \sigma \sim Gamma(5,2)$                  |
| 8    | predict                                   | M3a. `draws2data.stan`, `fit_prior_data.sample()`, `fit_prior_data = (U2.ab, U3.ab, U4.ab)`: Prior predictive check (opt-out prior)            |                                                                        |                                                                                    |                                                                         |
| 9   | infer to verify                           | M4a. `Stan`, `data2draws.stan`,`.create_stan_program`(H1a, H2abc, H3a, H4ab, H5abc): Infer parameter from (synthetic) data (Test or autoCalib) |                                                                        |                                                                                    | Prior predictive check plot (summary stats.)                            |
| 10   | Specify_tolerance 🤏                         |                                                                                                                                                | H6.a Set precision with `iter_sampling` (:= # of samples)              |                                                                                    | $\gamma$ from SBC-graphics                                              |
|      |                                           |                                                                                                                                                | H6.b Select posterior approximator from [[5 Merging Algorithm Tribes]] | Posterior_approximator (inference algorithm)                                       |                                                                         |
| 11   | infer to validate                         | M5a. `Stan`, `fit_post_draws.sample()`, ` fit_post_draws = (P1, U3.ab, U4.ab, U5.ab)`: Posterior predictive check (opt-in prior)               |                                                                        |                                                                                    | Posterior predictive check plot                                         |

## Reference
- [What is Data Science at Lyft](https://eng.lyft.com/what-is-data-science-at-lyft-4101a69be028)
- Many components of day-to-day work are the same across all Data Scientists, such as identifying product or business opportunities, surfacing data insights, designing experiments, and interpreting their results. The strength of the team comes both from these common expectations as well as from a diverse spectrum of complementary skills.

- The distinction between Decisions and Algorithms helps us hire and staff based on business need: influencing human decision-making or writing high-quality production models. However, the archetypes are not intended to be restrictive. Depending on the need and people’s ability to execute or desire to learn new skills, Data Scientists are encouraged to explore both spaces."


- Darwid defines Prequential as Probabilistic / Predictive / Sequential, a general framework for assessing and comparing the predictive performance of a forecasting system in his 2010 [workshop slide](https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.169.5851&rep=rep1&type=pdf).

