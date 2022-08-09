## Collaboration of
- Internal-External Consistency
- User-Program
- Dynamics modeling and statistical modeling (long time vs short time)
- Six packages

### Internal-External Consistency
- Verification, Validation

### User-Program Collaboration

| Step | Program's work (P-rows have `.function(input)`)                                                      | User's work                                                                                                 | added info (for U-row) or infrastructure (for P-row)       -            | out format                    |
| ---- | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------- |
| U1   | `Vensim` assists U1.a()                                                                              | a. Translate mental model to SD model                                                                       | Relation btw Variables                                                  | `.mdl`                        |
| U2   | `PySD` assists U2.a()                                                                                | a. Classify parameters `est_param`, `ass_param`, b. Select `obs_state` among stocks                         | Want (`est_param`) and Have (assume: `ass_param`, observe: `obs_state`) | `.json`                       |
| P1   | `PySD`, `.read_vensim`(U1.a): Switch lang. from FP to OOP                                            |                                                                                                             | None                                                                    | `.py`                         |
| U3   |                                                                                                      | a. Supply value or series of `assmed_param`, b. Choose `family`(:= dist. of `msr_err_scale`)                |                                                                         | DataFrame `object`,   `.json` |
| U4   |                                                                                                      | a. Choose `prior_family`(`est_param`'s prior dist. type) , b. Set `prior_param` (`est_param`'s prior param) |                                                                         | `.json`                       |
| P2   | `PySD`, `.run`(U2.ab, U3.ab): Generate synthetic data                                                |                                                                                                             |                                                                         | DataFrame `object`            |
| P3   | `PySD`,`.create_stan_program`(U2.ab, U3.ab): Switch lang. from OOP to PPL                            |                                                                                                             |                                                                         | `.stan`                       |
| U5   |                                                                                                      | a. Set precision with `iter_sampling` (:= # of samples)                                                     |                                                                         | `int`                         |
| P4   | `Stan`, `.sample`(P2, P3, U5.a)): Sample posterior draws (optimize measure with specified precision) |                                                                                                             |                                                                         | DataFrame `object`            |

### Dynamics modeling and statistical modeling 
- Oliiva20 introduce two cultures of explainability: variation and process
- Yaman's slide:
<img width="686" alt="image" src="https://user-images.githubusercontent.com/30194633/183563210-76b281c8-616a-4905-8456-3e5b38750372.png">

### Six packages
1. perceive and programming `Demand` Vensim-SDA 
2. compute scientific `Draws` Stan-SBC 
3. collect supporting `Data` BATS-SOPS

SilkRoad detailed [here](https://github.com/hyunjimoon/DataInDM#demand-of-silkroad-project)
## How
### Modular design
Given a system, we aim for modular design in consistency check which requires two: modular decomposition of the system and a testing system that can detect which submodule caused the problem (breached consistency).

Subprojects are documented in [this](https://github.com/users/hyunjimoon/projects/2 ) project board and the purpose of this project boards is to list required works for code-based platform where prior knowledge, data, algorithms from two sides are explicitly represented and compared. Setting the language that is acceptable to each sides' language is the very first job. 

Listing sources of uncertainty and their interaction is the most important job. Then we map the sources between two worlds🔺 🟢. It first attempt is in progress in [Uncertainty Structure of Dynamic Models: Capturing Prey and Demand with Predator and Supply](https://github.com/hyunjimoon/DataInDM/issues/2)

In the end, combining functionalities that each community excels in (e.g. 🔺: automated short term forecast, 🟢: descriptive, policy-based) we aim to suggest `how to making noise-resilient choice` in modularized fashion.
