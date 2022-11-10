Part One: System Structures and Behavior  
ONE. The Basics 
TWO. A Brief Visit to the Systems Zoo 

Part Two: Systems and Us  
THREE. Why Systems Work So Well 
FOUR. Why Systems Surprise Us 
FIVE. System Traps . . . and Opportunities 

Part Three: Creating Change—in Systems and in Our Philosophy  
SIX. Leverage Points—Places to Intervene in a System 
SEVEN. Living in a World of Systems 

1 Introduction
: Estimation and Checking on eight dynamic models





Hitchhiker's guide toSearching Model space Multiverse analysis

 * Model search: Greedy graph search
 * Model search: Projection prediction (https://arxiv.org/abs/2010.06994)
 * Model search: Genetic algorithms (on module selection vectors)
 * Model search: Many-armed bandit. Metric (like ELPD) sampling time is the resources; Bayesian model of module contribution
 * Model search: "Symbolic regression" (meaningfully different or not?)
 * Sensitivity analysis: do neighbors of a model share its results?
 * Edges (posterior in data space/"fit"): absolute (e.g. ELPD (requires likelihood augmentation)) or comparative (bayes factor, marginal likelihood)
 * Edges (prior in data space): mutual SBC (requires generative model augmentation)
 * Edges (posterior in data space): basic data stats
 * Edges (posterior in parameter space): distribution distance (KL?); custom metrics (effect size)
 * Edges (prior in parameter space): "difference between priors"
 * Visualizations: Edges weights as distances, embed into 2D continuous space
 * Visualizations: Scatter plots of models, e.g. complexity/p-loo vs. ELPD or estimated effect size
 * Multiverse methods
 * Stacking methods
 * Module validation/effect isolation
 * Counterfactual models as nodes
 * Counterfactuals: estimated effect size as embedding dimension for visualization
 * Stan module libraries
 * Stan multi-model compilation
 * Module code generation
 * Module signatures ~ modeling assumptions (advanced module signature type system; Curry-Howard esque)

I think the order I'd pursue these in might be:

 1. Model search: Greedy graph search (done)
 2. Sensitivity analysis: do neighbors of a model share its results?
 3. Stacking methods
 4. Model search: Many-armed bandit. Sampling time of the metric (like ELPD) is the resources; Bayesian model of module contribution
 5. Model search: Projection prediction (https://arxiv.org/abs/2010.06994)
 6. Multiverse methods
 7. Edges (posterior in data space/"fit"): absolute (e.g. ELPD (requires likelihood augmentation)) or comparative (bayes factor, marginal likelihood)
 8. Edges (prior in data space): mutual SBC (requires generative model augmentation)
 9. Visualizations: Scatter plots of models, e.g. complexity/p-loo vs. ELPD or estimated effect size
 10. Visualizations: Edges weights as distances, embed into 2D continuous space


Aki (main author of Bayesian workflow) mentioned that the Bayesian workflow paper has grown from 65 to 275 pages and I am drafting a mail to request its manuscript. Authors of the new SBC paper (Aki, Andrew etc) agreed to support me in the next paper on the roadmap for simulation-based tests and I believe combining practical examples from Hazhir's seminar and questions from Tom's [talk last Wednesday](https://systemdynamics.org/event/data-uncertainty-in-system-dynamics/) would be very valuable for both communities.

For more concrete motivation, the attached two papers were lights  I think giving lessons on Jack's paper attached and , with the aim of the following:

**Statistical framework**

- 
  

**Case studies**

- introduce Bayesian computation tool (Stan) to dynamic modelers (with Hazhir and Tom’s help)  
- introduce dynamic simulation modeling tool (Vensim) to Bayesian modelers (with Andrew and Aki’s help)

-   
- define variable types for dynamic modeling  
- loglikelihood as objective function  
- HMC and hierarchical modeling  
- differentiating sample-based and continuous (asymptotic)  

  

The people I've been communicating with and had discussions were Paul Burkner,