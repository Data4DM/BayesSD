- where would pyschological scale and beta belong?
- <iframe src="https://docs.google.com/spreadsheets/d/1gbtGAA2YUaxXgHegiyoaa0WVKfPxnIgd7pxvXZABcIA/edit#gid=499227104" width=1700 height=1000></iframe>
- 
- 
- asis is not always diffuse; below 1 or not is a sensitive lower bound boundary (hyperbolic boundary distortion)
- behavior of setting boundary for time and frac.time; frac.time is easier due to (false) belif of 0-1 soft bound
tighter the prior range (2,4,8 vs 3,4,5), the closer PERT and ASIS is.

## compare paremterization and default prior to ensure better behavior of dynamic model
- limiting variation (sea vs mountain-living pinocchio) that murks inherent casuality (could we have inherent casuality?)
- for oragnization which would more likely to be regional? (adjustment time VS table function parameters); iterative clamping estimation
- peferable to have zero-avoiding function for scale; darwin_prior which adjusts its form to the posterior geometry
- don't make "don't care, don't know" region too critical i.e. thou shall not cross tipping point boundary without knowing

| -                  | min (a) | mode (b) | max (c) | mean, $\mu = (a+4b+c)/6$ | PERT's scale $\sqrt{(\mu-a)(c-\mu)/7}$ | ASIS's scale $.1*\mu$ |
| ------------------ | ------- | -------- | ------- | ------------------------ | -------------------------------------- | --------------------- |
| diff.time          | .01     | 4        | 100     | 29.0                     | $\sqrt{2059} = 45$                     | 2.9                   |
| diff.frac.time     | .01     | .25      | 100     | 25.3                     | $\sqrt{1875} = 43$                     | 2.5                   |
| weak.time          | .01     | 4        | 100     | 29.0                     | $\sqrt{2059} = 45$                     | 2.9                   |
| weak.frac.time     | .01     | .25      | 100     | 25.3                     | $\sqrt{1875} = 43$                     | 2.5                   |
| beh.weak.frac.time | .01     | .25      | 1       | 25.3                     | $\sqrt{1875} = 43$                     | 2.5                   |
| generic.time       | 2       | 4        | 8       | 4.30                     | $\sqrt{1.22} = 1.1$                    | .43                   |
| generic.frac.time  | .125    | .25      | .5      | .27                      | $\sqrt{.005} = .07$                    | .027                  |
| specifi.time       | 3       | 4        | 5       | 4.00                     | $\sqrt{.14} = .38$                     | .4                    |
| specific.frac.time | .2      | .25      | .33     | .255                     | $\sqrt{.0006} = .024$                  | .03                   |

- 
- frac X pert would give stable performance
- fractional has normalizing effect
- 
Three comparisons: parameterization, tightness, PERT and ASIS way to set scale of normal (loc, scale^2) 

Following stan's five classification of prior (generic is 1, and 1/10, 10 for specific and weakly):
```
-   Flat prior (not usually recommended);
-   Super-vague but proper prior: normal(0, 1e6) (not usually recommended);
-   Weakly informative prior, very weak: normal(0, 10);
-   Generic weakly informative prior: normal(0, 1);
-   Specific informative prior: normal(0.4, 0.2) or whatever. Sometimes this can be expressed as a scaling followed by a generic prior: theta = 0.4 + 0.2*z; z ~ normal(0, 1);
```
## parameterization x vs 1/x  
- ASIS is more less sensitive to user's prior knowledge for variation. This is good as it prevents adjustment times to be near zero which cause near infinite flows and negative stocks. It is bad if model has relatively accurate prior for variation.
- PERT is more sensitive to tightness of distribution as sd (row 1 vs 2 and 3 vs 4)
- tightness: user cannot affect ASIS's scale










![[Pasted image 20221223152919.png]]
## tightness
- prevent near-zero time (near-infinite frac.time)
- is not affected by prior knowledge on diffuseness which is bad and good; this prevents non-negativity by default as outside 10sigma for normal distribution is rare for normal dist.  (row 12 vs 34)
