
## aggregate - marginalize
Last day, Hazhir and I had a discussion whether lead time in supply chain is random variable or not. I modeled it as a random variable whose mean and sd $\mu_{LeadTime}, \sigma_{LeadTime}$ needs estimation and Hazhir introduced me the concept of aggregation. However, I am still confused which prompted this writing. To be very honest, I view lead time as supply uncertainty, symmetric to the demand uncertainty and (forecasting as an inverse action of time delay). Hazhir suggested "time scale independence" as one reason why lead time is conventionally modeled as constant. I am okay with this, however in a model with constant lead time, shouldn't demand also be constant? i.e. a model which estimates $\mu_{Demand}, \sigma_{Demand}$ while fixing $\sigma_{LeadTime} =0$ seems to be on a incongrous supply and demand time scale.

### From Business dynamics (BD) 
I think the above is related to John's comment "represent a situation where either there is only one SKU or where the demand for each type of inventory is perfectly correlated and predictable." in BD book (Chp.18 Manufacturing supply chain p.713). Abscence of heterogentity has the same effect with abscence of randomness (predictable). 

Hierarchical Bayesian is magnifier; reviving the heterogenity previously aggregated for the computational reasons. This has been noted in "System Dynamics at Sixty" frame with which aggregated parameters on lifted the aggregated random variable. EXY = EX * EY

$p(A \cup B) = p(A) + p(B)$ Sum rule holds when mutually exclusive $p(A \cap B) = 0$
$p(A \cap B) = p(A)p(B)$ Product rule holds when independent 

Using indicator variable and $p(A) = E[I_A]$, we can understand the above as ratio of simulation instances.

The example in BD, where the quote is from, explains order fulfillment ratio. The formulation SR = MIN(DSR, MSR) where SR is shipment rate, DSR is desired SR, MSR is max SR. It exaplains this formulation becomes 45 degree line if DSR < MSR and 1 if DSR > MSR assumes "a situation where either there is only one SKU or where the demand for each type of inventory is perfectly correlated and predictable."

 - I wish to get your confirmation on the SD jargon "aggregation". I wonder whether this is equivalent to  EXY = EX * EY

and I came by the following. 

I have witnessed systems with two or more SKUs where each demand were not perfectly correlationd nor predictable. I believe hierarchical Bayesian can contribute for formulations for weakened assumption. 

This attempts of aggregation loosening may improve limitations from your Covid paper:

> First, we do not represent within-nation heterogeneity that may affect the course of the epidemic. These variations likely matter especially in large, diverse nations (e.g., USA), including differences in transmission risk between rural and urban areas, differences in adherence to NPIs based on political views, and especially differences in the ability of individuals and households to limit transmission risk or receive treatment based on socio-economic status, race and ethnicity, and other factors affecting social justice.

> Second, we model IFR as depending on age distribution and hospitalization, but do not explicitly model how well different nations are able to protect vulnerable subpopulations (the effect is aggregated into the overall impact of cumulative cases on IFR). 

> Third, the model aggregates behavioral and government policy responses, and does not represent the effectiveness of specific NPIs

As the essence of Hierarchical Bayes is conditional independence (i.e. once conditioned on hetereogentiy-inducing "factor"s such as within-nation heterogenity as you listed in the last sentence of your first Covid limitation. first in your first limite aggregation is straightforward) , I am hoping if a structure of sequential () aggregation can be sequentially (or conditionally) performed
. One initial point could be this hierarchical time series was wondering whether the extension of this logic could have practical impact. 

### From Bayesian data analysis (BDA)
As (statistical) modeling is an act of transforming aleatoric uncertainty to epistemic uncertainty in the form of uncertain parameter and its likelihood function, I find it easier to understand "estimation via modeling" as two step process. Starting from infitine dimension of parameters, we first classifying them into two groups i.e. $\theta = (\theta_1, \theta_2)$ to main-interest $ $\theta_1$ and nuisance parameter $\theta_2$. A classic example of nuisance parameter is the scale of the random errors in a measurement problem. Despite the urge to concentrate only on the main parameter, 'fixed value of the nuisance paramete' determines the estimation quality estimation as the landscape of main parameter is not homogeneous across the nuisance parameter. Therefore, it is important to carefully pick the nuisance parameter value to condition on; or else costly estimation process would be wasted exploring the landscape far from what we see in reality. A classic example of nuisance parameter is the scale of the random errors in a measurement problem.


We seek the conditional distribution of the parameter of interest given the observed data; in this case, p(θ 1 | y). This is derived from the joint posterior density, $p(θ 1 , θ 2 | y) ∝ p(y | θ 1 , θ 2 )p(θ 1 , θ 2 )$ by averaging over $θ_2$ : p(θ_1 | y) = \int p(θ_1 , θ_2 | y)dθ_2$

Alternatively, the joint posterior density can be factored to yield $p(θ_1 | y) = \int p(θ_1 | θ_2 , y)p(θ_2 | y)dθ_2$

Aggregation in SD is related as with the independent assumption, EXY = EX * EY


---
different degree of uncertainty in demand and lead time might be on a different time scale in supply and demand side.  has different  but I think if we model So the model with a large time with a constant model that fix leadtime as a constant as long as we are using the same time scale as  (demand forecasting seems to be the invese action of time delay considering the opposite direction of diffused time, but I haven't developed it fully yet.)

I understood aggregation as averaging out i.e. $\integ d\theta$ and the source of limitation in Covid paper regarding aggregation seems to be too much marginalization. We integrated out mixture distribution and want to un-integrate it. seems to be is because pointed out out certain "variable" we knownot sure how to understand this concept

version of uncertainunderstand that the modeling should be independent of time step 
Our aggregation which tries to model the average effect  E[I_{Man}I_{Wom}]

We rarely evaluate the integral (3.1) explicitly, but it suggests an important practical strategy for both constructing and computing with multiparameter models. Posterior distributions can be computed by marginal and conditional simulation, ﬁrst drawing θ 2 from its marginal posterior distribution and then θ 1 from its conditional posterior distribution, given the drawn value of θ 2.

This 'conditioning' or 'projection' view allows   First are the ones important enough to invest exploration cost and the other. The formers are luxiouriously treated (e.g. not only their value but their range, uncertainty interval, are of interest) while the latter are fixed as constants. However, every parameter are created equal and parameter; parameter of interest would differe depending on the d that are of no interest to one may highly us  and not treating the marginalized parameter so let me introduce its name "nuisance parameter". lightly as depending on what values they are  This conditioning is a projection from infinite dimension of parameters to a "realistic hyperplane". By realistic, I mean the values of parameters we leave out should be fixed to a reasonable value. For example, when modeling how the height of father and son is related, we cannot 

infinite dimension of parameters  unknown" is modeled as parameter On the model space with possibily infinite number of parameters (its construction is straightforward with hierarchical Bayesian by giving endless hyperprior to the parameter e.g. just as gamma distribution prior ($\lambda$)convoluted with Poisson likelihood is point mass $\lambda$ Negative binomial, with gamma distribution given to its rate, we can once again prior on its rate got extended by giving gamma prior, we can once again)

