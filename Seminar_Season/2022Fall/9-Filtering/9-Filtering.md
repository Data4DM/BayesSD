In “Bringing Data into Dynamic modeling” (syllabus attached just as reference) we aim to apply SBC and hierarchical Bayesian techniques to eight different system dynamics models (ODE model with the order from three to thirty). However between the two posterior approximation methods (HMC in week7 vs filtering in week10) I don’t know much about filtering as I do about HMC. Few relevant experience might be:

-   implementing approximate Bayesian computation with python 
-   auto-calibrating joint prior using SBC framework (dynamic update using synthetic data, not real)

A comment "filtering is the best approach to modeling dynamic systems" from [this](https://discourse.mc-stan.org/t/state-space-kalman-filtering-advice-for-inverse-model/8648/13?u=hyunji.moon) Stan post which introduce [this](https://streaklinks.com/BK7lCbrh4XfhPiYDmwg_8Yfz/https%3A%2F%2Fgithub.com%2Frlabbe%2FKalman-and-Bayesian-Filters-in-Python) python library that supports diverse filtering methods (I have no idea where to start) + great demand of SBC methodology in filtering community other reasons for my interest.


[This](https://streaklinks.com/BK6hPsIVVXs4s0L-uwhKhtC5/https%3A%2F%2Fyoutube.com%2Fplaylist%3Flist%3DPLcAxwev2PmV_VJ8mgX-XggfA3gsednBJI?email=hyunji.moonb%40gmail.com) recent lecture series on system data science and particle MCMC method by Nathaniel.

Below are some discussion I had with Hazhir and Tom:

**1.  Filtering VS MCMC?**

Importance sampling and gradient-based sampling are two 
MCMC helped implementing Bayesian update by replacing the marginalized likelihood of posterior distribution with its Monte Carlo estimate. This was start of the computational Bayesian statistics. Hamiltonian Monte Carlo (HMC) made the random
Sequential Monte Carlo (also known as particle filtering) and MCMC (with their variants on each side) are two algorithm families that are compared.

Bayesian Monte Carlo techniques for filtering

pMCMC being the 

Dynamic models are  our coupling based MCMC to 
explicit MCMC but I wish to know more on Kalman filtering considering the comment "I tend to agree with you that filtering is the best approach to modeling dynamic systems" from the following post which also introduce [this](https://streaklinks.com/BK7lCbrh4XfhPiYDmwg_8Yfz/https%3A%2F%2Fgithub.com%2Frlabbe%2FKalman-and-Bayesian-Filters-in-Python?email=hyunji.moonb%40gmail.com) python library that supports Kalman filters,extended Kalman filters, unscented Kalman filters, particle filters. Also, I noticed Kalman filtering community has a great need for SBC methodology which may be due to the inexistence of theoretically supported convergence diagnostics (other than SBC).

[https://discourse.mc-stan.org/t/state-space-kalman-filtering-advice-for-inverse-model/8648/14](https://discourse.mc-stan.org/t/state-space-kalman-filtering-advice-for-inverse-model/8648/14)  


Hazhir mentioned HMC might be a better choice for higher dimensions. I heard particle filtering is the cutting edge in high dimension discrete space (HMC cannot support discrete type parameters). Tom may have a different opinion which I am curious about.  


**2. Might it be reasonable for Vensim to outsource optimization engines?**

I have no intention of saying Stan has a better algorithm. I am asking, considering log likelihood optimization is the core for Bayesian computation (one branch of probabilistic programming language), wouldn't it be natural for Stan platform to have continuous inflow of cutting-edge techniques both for algorithm and diagnostics? Note both needs constant update considering their actor-critic relation. For one, DREAM embedded in Vensim cites Gelman and Rubin (1992) for its convergence diagnostics which is outdated. khat from [this](https://streaklinks.com/BK7lCb7vrzarxOTGVAftlLMC/https%3A%2F%2Farxiv.org%2Fpdf%2F1507.02646v8.pdf?email=hyunji.moonb%40gmail.com) paper is one of the cutting-edge diagnoses. Aki (BDA author chapter on nonparametrics e.g. Gaussian process)'s LAB and Stan have a team of at least ten developers concentrating on developing diagnostics (and thousands of users for testing) itself so perhaps outsourcing this and channeling our efforts in what we excel at seemed reasonable to me. To be specific, the decision analysis of Stan in [this](https://streaklinks.com/BK7lCbncHDCl9zmqEQd2XBem/https%3A%2F%2Fmc-stan.org%2Fdocs%2Fstan-users-guide%2Fexample-decision-analysis.html?email=hyunji.moonb%40gmail.com) official manual is not dynamic which we can do better. Practicality of decision-based optimization is why I returned to the SD community. Doing what each community is best at is the core spirit of open-source. So I wanted to ask your honest opinion for our future; however, please do correct me if I am missing something.

3. To support possible connection with vensim and Stan C++ engine,

a. recent [blog](https://streaklinks.com/BK7lCbnTk-f-XvijuQdIDpkA/https%3A%2F%2Fblog.mc-stan.org%2F2022%2F08%2F03%2Foptions-for-improving-stan-sampling-speed%2F?email=hyunji.moonb%40gmail.com) by Akiwhich documents recent 25-40% speedup in Stan which includes: 

> C++ compiler optimization options  
> C++ compiler CPU architecture options  
> stanc optimization options  
> External BLAS / LAPACK libraries  
> External BLAS / LAPACK libraries with multithreading  
> Within chain threading with reduce_sum  
> Solver tolerances


b. Stan math library is licensed under new BSD which allows commercial use ([this](https://streaklinks.com/BK7lCcUV1XuCTNCIdQSvD09L/https%3A%2F%2Fgithub.com%2Fstan-dev%2Fstan%2Fwiki%2FStan-Licensing?email=hyunji.moonb%40gmail.com) provides full license info), which was what Tom was curious about. In short, Math library with its documentation [here](https://streaklinks.com/BK7lCb3MDIlZ_E__bwVoBl4e/https%3A%2F%2Fmc-stan.org%2Fmath%2F?email=hyunji.moonb%40gmail.com) provides reverse-mode automatic differentiation (in C++ with several parallel features such as Threading, OpenCL CPU/GPU Support, MPI) and Stan library with its MCMC code [here](https://streaklinks.com/BK7lCb3RUYVQhjBsbw-bwRg4/https%3A%2F%2Fgithub.com%2Fstan-dev%2Fstan%2Ftree%2Fdevelop%2Fsrc%2Fstan%2Fmcmc?email=hyunji.moonb%40gmail.com) and documentation [here](https://streaklinks.com/BK7lCbrent4ipvH11QMYbJTS/https%3A%2F%2Fmc-stan.org%2Fdocs%2Freference-manual%2Falgorithms.html%23algorithms?email=hyunji.moonb%40gmail.com) keeps building new optimization algorithms. Users can contribute by building custom algorithms on this platform which I've tried for ADVI algorithm.

c. Hazhir asked about combining the stochastic gradient descent idea with HMC. I feel parallelizing MCMC might be relevant as in both cases we pray for the magic of aggregation. The following includes Stan leaders' most recent view along this line for sampling speedup: [https://discourse.mc-stan.org/t/parallelizing-the-sampler-not-the-model/26212](https://discourse.mc-stan.org/t/parallelizing-the-sampler-not-the-model/26212)


d. Along with parallel computing, development of optimization algorithms is so fast; there are at least thirty descendants of the HMC algorithm that I know of (coupled, tuning free, fast-initialization, multinomial) and I expect the same in Kalman filtering domain (including Tom's comment on doing MCMC on particle filters).