Could SBC rank uniformity be attacked by generator's non-linearity? 

SBC rank uniformity relies on measure theory which is free from numerical considerations (integration, optimization error). Analytical approaches were mostly multivariate normal and conjugate distributions.

I was curious whether nonlinearity can possibly impede rank uniformity diagnostics. For one, I am frequently facing hmc chains stuck in certain posterior regions (I am testing `lp__` of the stuck chain, with the feeling its value would be much smaller than the global optimum). One whole chain being stuck would have a detrimental effect on sbc rank calculations which might be what the following plot might imply. 

I've tested with fifty synthetic data, with [this](https://github.com/Data4DM/stanify/blob/main/vignette/stan_files/2hier_asy_S1N20Q2P2H0R1_M1000_ps0.1/functions.stan#L305) ode function and [this](https://github.com/Data4DM/stanify/blob/main/vignette/stan_files/2hier_asy_S1N20Q2P2H0R1_M1000_ps0.1/draws2data.stan) generator.

To be honest, the fact that nonlinearity can impede outcome rank uniformity in polya urn model, motivated this post. Compared to linear model where the probability of balls added in each run is linearly proportional to the current proportion which results in uniform rank as in fig.10-3, nonlinear polya process disrupts this uniformity as in fig.10-7. Aside from numeric issues from integration and optimization approximation (i.e. stuck or inconsistent target density evaluation or its gradient), I am curious whether there exist deeper mechanisms why sbc rank uniformity may not hold for nonlinear models. For instance, 

 model loses its uniformity in its outcome proportion after 200 simulation according to the  the following excerpt from chp.10 path dependence from *Business Dynamics*. makes me wonder whether the above nonuniformity is solely due to numerical issues. Nonlinear in the polya model is 
![[Pasted image 20230106112258.png]]

Similar question has been asked in https://discourse.mc-stan.org/t/simulation-based-calibration-sbc-for-non-linear-model/24074, but I couldn't find numerical considerations.