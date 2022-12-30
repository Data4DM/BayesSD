Posterior does not possess a closed form, as the move from the generative problem (the speciﬁcation of p(y | θ)) to the inverse problem (the production of p(θ | y)), yields a posterior that is known only up to a constant of proportionality exceptions being some cases including exponential or natural conjugacy and noninformative prior([Martin20](https://arxiv.org/pdf/2004.06425.pdf)). This motivates computational approaches which can be divided into three:
1) **Deterministic integration** methods 
2) **Simulation** methods 
3) **Approximation** (including asymptotic) methods. 

It is notable that 1 and 2 are not mutually exclusive. A second computational revolution following the first revolution of Gibbs and MCMC [^1]and previous developments[^3] include Pseudo-Marginal Methods, Approximate Bayesian Inference, and Hybrids. Especially approximate Bayesian inference covers wide topics such as Approximate Bayesian Computation (ABC), Bayesian synthetic likelihood (BSL), Variational Bayes (VB), and Integrated nested Laplace approximation (INLA). These concepts would be covered in this post. (to be continued)

## Approximate Bayesian Computation

ABC in nutshell

1.  Use a **prior** to generate a parameter vector [^1]
    
2.  Use a computational method to generate a **prediction** about outcomes with the parameter vector
    
3.  Take the detailed output of the computational model and summarize it into a **smaller dimensional summary**:
    
| -   | prediction                              | summary                                       |
| --- | --------------------------------------- | --------------------------------------------- |
|     | weather                                 | mean wind speed over 1km patches              |
|     | electricity production at all windmills | net wind power of all windmills for each farm |
|     |                                         |                                               |


4.  accept the parameter vector with probability proportional to $K(S_{sim},S_{obs})$, nonnegative kernel function of the simulation and observed (measured) values' summary. Or think this as rejection algorithm where $\rho(\hat{D},D) > \epsilon$  is rejected. High dimension lowers the acceptance ratio for fixed latexepsilon which requires summary statistics that represent the whole dataset and upon which our rejection decisions are made.

 Ssim is the summary of the simulations and Smeas is the same summary from measured values.

In elfi, python package, `batch_size` is the number of simulation (samples from each prior) which is similar to `S` (number of fit or prior sample) in SBC. `N` in elfi is the number of samples selected from rejection sampling which is similar to `M` (number of posterior samples) from SBC. It is easy to think in terms of input and output (S->M for SBC, batch_size -> N for ABC).

several points on ABC

-   probability that a summary statistic will fall within a certain distance of a predicted value using a computational predictor
-   repeating importance sampling that produce closer sample distribution to true posterior at each step (importance sampling throws away the samples that are too “atypical”)
-   bypass the likelihood evaluation
-   relatively prior-sensitive as it is based on generated samples from prior
-   approximate the likelihood function by simulations, the outcomes of which are compared with the observed data

Some notes on general Bayesian computation.

-   P(u|x) ~ P(u) P(x|u) is just sample from the prior and then sample from P(x|u) by rejection.
-   One way to improve posterior approximation is through pareto-smoothed importance sampling (PSIS). See sec.5.1 of [Vehtari19](https://arxiv.org/abs/1507.02646).

approximate-bayesian-computation

[^1]: collective recognition that MCMC draws from a joint posterior could be produced via iterative sampling from lower dimensional conditional posteriors made Gibbs sampling (with or without Metropolis-Hastings subchains) the work-horse of Bayesian computation

[^2]:  Bayes' integral, Laplace asymptotic approximation, Monte Carlo simulation and Metropolis algorithm, importance sampling, Generalization of the Metropolis Algorithm by Hastings

[^3]: With any computational method, it is typically necessary to constrain the investigated parameter ranges. 
