There is no such thing as an optimal simulation method. - [Christian P. Robert](https://link.springer.com/book/10.1007/0-387-71599-1#author-0-0)the author of The Bayesian choice

However, we can categorize them into three families:

## 1. Accept-reject (AR) methods

AR methods are intended to provide an i.i.d. sample from f. To achieve this, one designs an algorithm that takes as input a random number of uniform variates 𝑢1,𝑢2,... and returns a value x that is a realisation from f. The _pros_ are that there is no approximation in the method: the outcome is truly an i.i.d. sample from f. The _cons_ are many: (i) designing the algorithm by finding an envelope of f that can be generated may be very costly in human time; (ii) the algorithm may be inefficient in computing time, i.e., requires many uniforms to produce a single 𝑥x; (iii) those performances are decreasing with the dimension of X. In short, such methods cannot be used for simulating one or a few simulations from f unless they are already available in a general computer language.

## 2. Markov chain Monte Carlo (MCMC) methods

 MCMC are extensions of i.i.d. simulations methods when i.i.d. simulation is too costly. They produce a sequence of simulations xt which limiting distribution is the distribution f. The _pros_ are that (i) less information about f is needed to implement the method; (ii) f may be only known up to a normalising constant or even as an integral and still be associated with an MCMC method; (iii) there exist generic MCMC algorithms to produce simulations (xt)t that require very little calibration; (iv) dimension is less of an issue as large dimension targets can be broken into conditionals of smaller dimension (as in Gibbs sampling) or HMC which allows smart update by iterating lifting and projecting between manifold and symplectic manifold (symplectic optimization).

   
The _cons_ are that (i) the simulations (xt)t are correlated, hence less informative than i.i.d. simulations; (ii) the validation of the method is only asymptotic, hence there is an approximation in considering $x_t$ for a fixed t as a realisation of f; (iii) convergence to f (in t) may be so slow that for all practical purposes _the algorithm does not converge_; (iv) the universal validation of the method means there is an infinite number of potential implementations, with an equally infinite range of efficiencies.

## 3. **Importance sampling methods** 

are originally designed for integral approximations, namely generating from the wrong target g(x) and compensating by an importance weight

f(x)/g(x).

```
The resulting sample is thus weighted, which makes the comparison with the above awkward. However, importance sampling can be turned into importance sampling resampling by using an additional resampling step based on the weights. The _pros_ of importance sampling resampling are that (i) generation from an importance target 𝑔g can be cheap and recycled for different targets 𝑓f; (ii) the "right" choice of 𝑔g can lead to huge improvements compared with regular or MCMC sampling; (iii) importance sampling is more amenable to numerical integration improvement, like for instance quasi-Monte Carlo integration; (iv) it can be turn into adaptive versions like population Monte Carlo and sequential Monte Carlo. The _cons_ are that (i) resampling induces inefficiency (which can be partly corrected by reducing the noise as in systematic resampling or qMC); (ii) the "wrong" choice of 𝑔g can lead to huge losses in efficiency and even to infinite variance; (iii) importance has trouble facing large dimensions and its efficiency diminishes quickly with the dimension; (iv) the method may be as myopic as local MCMC methods in missing important regions of the support of 𝑓f; (v) resampling induces a bias due to the division by the sum of the weights.
```

Recalling the advise by Robert, simulation should be chosen based on the demand. Dimension, type (continuous/discrete) of the parameter, and the need for explainability are main information modelers should base thier choice of sampling methods.
