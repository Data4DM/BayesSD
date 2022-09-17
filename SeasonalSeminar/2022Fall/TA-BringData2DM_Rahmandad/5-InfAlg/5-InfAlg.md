[[Posterior_Approximator]] is what Hazhir used for [[def(JobStrategy)]] project. [[CP-Posterior Approximator 🧠]] is the list of approximators that I have implentation experience.

Sampling methods can be classified into three familes: accept-reject (AR), MCMC, and importance sampling (IS) (robert2007bayesian). AR scales poorly with parameter dimension as it equires many uniforms to produce a single x. This leaves us the choice between MCMC and IS.

## MCMC 
Just as Bayesian inference is an inversion (construct forward scaffold from parameter to data then reuse it inversely to retreive parameter samples given a data), the aim of Markov chain Monte Carlo (MCMC) is to get the kernel that delivers us to the posteriror distribution. To be precise, this kernel is a Markov process whose equilibrium distribution is the target distribution that you wish to sample from. MCMC has drawbaks: cannot do dynamic settings, and without idependent assumption it requires full joint loglikedlihood speficification. These triggers the need for SMC below.


## Sequential Monte Carlo(a.k.a Particle Filtering)

![[Pasted image 20220825235412.png]]
SMC combines importance sampling with MCMC. A sequence of target distributions ${\pi_n}n$ perform an importance sampling update step (SMC step) which evolves a population of samples to new samples, based on the new observation.

\cite{del2006sequential} introduce SMC as a methodology which allows us to derive simple algorithms to make parallel Markov chain Monte Carlo algorithms interact to perform global optimization and sequential Bayesian estimation. Furthermore, \citep{andrieu2010particle} combines the benefits of both algorithms (MCMC and SMC) using SMC algorithms to design efficient high dimensional proposal distributions for MCMC algorithms. On the contrary, MCMC kernels have been used to build proposal distributions for SMC algorithms to prevent progressive degeneration \citep{gilks2001following}.


McCoy [says](https://femtomc.github.io/posts/sequential_monte_carlo/#sequential-monte-carlo):

Sequential Monte Carlo methods allows dynamic update which is not possible in [Markov chain Monte Carlo](https://femtomc.github.io/posts/markov_chain_monte_carlo/) (MCMC) methods hence benificial for approximate Bayesian inference. It also excludes independence assumptions in the model, compared to MCMC which requires evaluating joint likelihood of the observed data.


The key idea (in the most general formulation) $\left\{\pi_{n}\right\}_{n}$ is to mix importance sampling with MCMC moves.

For a sequence of target distributions $\left\{\pi_{n}\right\}_{n}$ perform an importance sampling update step (the SMC step) which evolves a population of particles (samples) to new particles, including new observation information and updating the existing importance weights with new weights for the new target distribution πt.

At this stage of the algorithm, it is also appropriate to perform resampling moves.

With the new particles in hand, perform MCMC moves targeting πt on each particle in your collection.


## Correctness of the algorithm

What does it look like to prove “correctness” of an algorithm like this? Because one of the key ingredients is importance sampling - the intuition is that we want to prove properties about the final expectation of the accumulated importance weights.


[1] Del Moral, P., Doucet, A., and Jasra, A. 2006. [Sequential Monte Carlo samplers](https://doi.org/10.1111/j.1467-9868.2006.00553.x). _Journal of the royal statistical society: Series b (statistical methodology)_ _68_, 3, 411–436.

[2] Doucet, A., de Freitas, N., and Gordon, N., eds. 2001. _[Sequential Monte Carlo Methods in Practice](https://doi.org/10.1007/978-1-4757-3437-9)_. Springer-Verlag, New York.