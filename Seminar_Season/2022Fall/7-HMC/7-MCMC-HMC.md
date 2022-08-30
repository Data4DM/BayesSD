## Why Stan?
Mainly from sec. 1.1 of [Flexible and efficient Bayesian pharmacometrics modeling using Stan and Torsten, Part I]( https://arxiv.org/pdf/2109.10184.pdf) 
	 
1. flexibility: it is straightforward to specify priors, systems of ODEs, a broad range of measurement models, missing data models and complex hierarchies (i.e. population models).
	- expressive language as specialized software do not readily handle the relatively complex structures and priors the 
		  - combining various sources of data and their corresponding measurement models into one large model, over which full Bayesian inference can be performed
		  - build complex hierarchical structures, which allow us to simultaneously pool information across various groups, e.g. patients, trials, countries.
		  - using sparsity inducing prior, such as a the Horseshoe prior, to fit models with a high-dimensional covariate. This approach has, for example, been used in oncology and is a promising avenue in pharmacogenetics.
		  - incorporating a non-parametric regression, such as Gaussian process, to build a translational model for pediatric studies 
2. Stan supports state of the art inference algorithms, most notably an adaptive Hamiltonian Monte Carlo (HMC) sampler, a gradient-based Markov chains Monte Carlo (HMC) algorithm [12] based on the No U-Turn sampler (NUTS) [13], automatic differentiation variational inference (ADVI) [14], and penalized maximum likelihood estimators. Stan’s inference algorithms are supported by a modern automatic differentiation library that efficiently generates the requisite derivatives [15].

3. 
### 1 Computing Expectations By Exploring Probability Distributions

### 2 Markov Chain Monte Carlo

### 3 Foundations of Hamiltonian Monte Carlo

### 4 Eﬃcient HMC
#### 4.1 Phase Space Geometry

#### 4.2 Kinetic Energy Choice

#### 4.3 Integration Time Choice

### 5 HMC Implementation

### 6 Robustness of HMC

#### 6.1 Diagnosing Poorly-Chosen Kinetic Energies

#### 6.2 Diagnosing Regions of High Curvature

#### 6.3 Limitations of Diagnostics