# bayesian
## Bayesian Taxanomy
$$
\begin{array}{ll}
\hline \text { Notation (Symbol) } & \text { Meaning (Description) } \\
\hline \mathrm{P}, \mathrm{A}, \mathrm{D} & \text { Joint distribution, approximator, training data } \\
\theta, y, \tilde{y} & \text { Latent parameters, unrealized observables, realized observables } \\
z, \xi & \text { Random state, random noise (nuisance or exogenous variables) } \\
\varphi, \psi & \text { Quantity of interest, its model-based estimator (function of } \theta) \\
p(\theta) & \text { Prior distribution of parameters } \\
p(y \mid \theta) & \text { Likelihood function (explicit or implicit/simulation-based) } \\
p(\theta, y) & \text { Joint distribution of parameters and observables } \\
p(\theta \mid y) & \text { Posterior distribution of parameters given observables } \\
p_{\mathrm{A}}(\theta \mid y) & \text { Approximate representation of posterior by approximator A } \\
\mathbb{G}(\cdot), p^*(y) & \text { True data generator, true data-generating distribution } \\
\mathbb{E}_p[\cdot] & \text { Expected value of a quantity with respect to density } p \\
T, H & \text { Summary statistics of posterior, summary statistics of data }
\end{array}
$$


### Bayesian Objects
#### P
![[jointdist.excalidraw]]

#### A
Approximator
![[A.excalidraw]]

#### D

Training data
![[data.excalidraw]]

### Bayesian Functions
#### PA
![[PA.excalidraw]]

#### PAD
![[AD.excalidraw]]

#### PD
![[PD.excalidraw]]


- Sensitivity to Proportion


Classification of estimated and assumed parameter can dynamically change during model exploration; 

## Branching Bayesian


Good [classified Bayesians into 46656 varieties](http://fitelson.org/probability/good_bayes.pdf) with as: 

46656 = 
- 2 (type two rationality) X 2 (kinds of judgements) X 3 (judgement precision) X 3 (extremeness) 
- X 3 (utilities) X 3(quasiutilities)
- X 3 (physical probabilities) X 4 (conditions)
- X 2 (device of imaginary result) X 3 (axioms) X 2 (probabilities) 
 
 Each person has different demand but 46656 number of classification would suffice to give template for suppliers i.e. modelers who translate demand into a program, compute draws, and collect data.
One concept can be branched to many based on the homogenity assumption. On the contrary, [[bayes_and_freq_bayequentist]] introduce merging many to one. These seemingly opposite direction shows the relativity of prior specification. The first is from tight to diffuse prior and the second is from diffuse to tight prior. Only god can see the infinitely high dimension space. What is important is where we start from as an organizational agent and how efficiently we can learn.


 
Fun fact: Invention of 0 allowed infinity representation. So 0 is $\infty$.