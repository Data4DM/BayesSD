# Hierarchical model and priors

Summary tips:
1. Explore direction
	start from complete pooling i.e. direction of wideneding sigma distribution (for group heterogentity starting from $\delta_0$). For small number of groups (<5 or around), complete or no pooling may perform better.
2. Scale
   - every parameter to unit range (hence exploration on full hyper cude) as much as possible. Autoscaling is handy but users should be notified for nonlinear changes during which parameter interpretation changes  (even with Jacobian additions implemented in Stan)
	1. Y's transform: box-cox etc transform
	2. centered to non-centered parmaterization
3. Consider Y's type (e.g. continuous, count, non-negative, between[0,1]) when setting its prior distribution type
4. Middle ground for sigma: not close to 0 (funnel) but not fat tail (in) 비추: 0에 너무 가깝지 않고 (funnel), 너무 크지도 않은. 
5. With groups with little data, use centered parameterization while those with enough data, use centered version i.e. theta = mu + tau * eta; for this automation, refer to Mike's ADC automation [this](https://betanalpha.github.io/assets/case_studies/hierarchical_modeling.html#43_Now_I_Know_my_ADCs)  (but this may be complicated to implement)
6. Make parameters less correlated

How I improved divergence for Hierarchical Spline prior ([youtube]( https://youtu.be/1FJyNntNMH4?t=387)) using the above. 
![[Pasted image 20220818111020.png]]

Below are theoretical notes. History of variance of hierarchical model will be added.

## 1. Math
### complete pooling

-   discarding a variance component or setting the variance to zero understates the uncertainty
-   standard errors for coefﬁcients of covariates that vary between groups will be too low

### no pooling

-   ﬁt a regression with indicators for groups (a ﬁxed-effects model)
-   overcorrect for group effects (it is mathematically equivalent to a mixed-effects model with variance set to inﬁnity)
-   does not allow predictions for new groups

Monte carlo estimation

-   estimating equations involve the empirical version of the infinite-dimensional parameter in the semiparametric model (Jin15, MCVarSmoothing)

Prior choice

-   log-normal and inverse-gamma can only be used when there is real prior information to guide the choices of their two parameters; prevents nonzero variances (Chung et al., 2013)
-   multiple priors could be used during the sampling similar to mixing RK45 and BDF ODE integrators (natural interpretation of a posterior mode is as a starting point for full Bayes inference, in which priors are speciﬁed for all parameters in the model and Metropolis or Gibbs jumping is used to capture uncertainty in the coefﬁcients and the variance parameters (Dorie, Liu, & Gelman, 2013). For reasons discussed above, it can make sense to switch to a different class of priors when moving to full Bayes: once modal estimation is abandoned, there is no general reason to work with priors that go to zero at the boundary.)

![](https://i0.wp.com/www.hyunjimoon.com/wp-content/uploads/2021/02/image.png?resize=620%2C501&ssl=1)

-   correspondence between prior and penalty  
    1. exponential of penalty = prior (eg uniform prior = marginal logpost with varying intercept integrated out)  
    2. log-gamma(α,λ) penalty on σ θ = log gamma(2α − 1,λ) penalty on σ θ


## 2. Computer

## Kucukelbir' sADVI
Stan to enable generic inference. Stan implements a model compiler that automatically handles transformations. It works by applying a library of transformations and their corresponding Jacobians to the joint model density. 5 This transforms the joint density of any diﬀerentiable probability model to the real coordinate space. Now, we can choose a variational distribution independent from the model.
![[Pasted image 20220815110737.png]]

## Betancourt's ADC
![[Pasted image 20220815110758.png]]

Summary for https://betanalpha.github.io/assets/case_studies/hierarchical_modeling.html#43_Now_I_Know_my_ADCs needed!

## 3.  Business
How to design U3, 4?


References

A NONDEGENERATE PENALIZED LIKELIHOOD ESTIMATOR FOR VARIANCE PARAMETERS IN MULTILEVEL MODELS provides insightful relation between prior and penalty as well as their recommendation and connections.