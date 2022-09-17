15.879 Bringing Data into Dynamic Models, Fall 2022 

Assignment 4: Modes of behavior and synthetic data generation1 

Due: 10/07/2022 

The goal of this exercise is to understand the distinct modes of behavior your model can generate, and to use that insight to create synthetic data to be used for the next assignments. Each model may generate a few distinct modes of behavior (e.g., oscillatory, s-shaped, overshoot and collapse) for the primary outcomes of interest. Knowing those modes of behavior is both of interest in general and relevant for assessing estimation performance. That is, the calibration method one uses may be able to identify the model when one mode of behavior is observed but may not do as well in another mode of behavior. Knowing the distinct modes allows you to test the calibration method across those distinct modes and informs the ability of the estimation method to recover the model parameters in each mode.  

There are a few automated methods for identifying modes of behavior algorithmically. For example, see the packages at (https://bitbucket.org/sesdyn/workspace/projects/MAS). While useful for more involved applications, since these methods require some additional work to setup, we will instead use a more ad-hoc method for identification of modes of behavior. We then pick a handful of the distinct modes, identify the generating parameter sets, and use those for generating synthetic data.  

Conduct a sensitivity analysis on ‘estimated parameters’ of the model. Turning off the process and measurement noise, conduct a hundred simulations2 where you change all the estimated parameters within their range, and record key variables of interest. You can use Vensim’s sensitivity analysis menu or you could do those simulations in Python using PySD link (in which case you need some additional packages to setup sensitivity run sampling). You can keep the ‘assumed parameters’ at their base values, changing only the ‘estimated parameters’ sampled following a Latin Hypercube method using uniform distribution (between parameter specific min and max). See Vensim help on sensitivity simulation setup for implementation details. Make sure you save a few key model outcomes you care about for each sensitivity simulation. Those maybe data variables, but also could be other unmeasured outcomes you care about. Limit your outcome measures to 3 variables or fewer.   

Find distinct modes of behavior based on how far the key outcomes are from the base run. You should separately run the baseline model using parameters that come with the model. Then define an index to compare each sensitivity run against the baseline run. This index could be a weighted average of a measure of similarity between outcomes across baseline and each sensitivity run. For example, you may adopt correlation as your measure of similarity (Mean squared error or Mean Absolute Percent Error could be other example measures), and then calculate correlations for each outcome variable across baseline and each sensitivity run. Taking an (weighted by importance) average of those correlations gives a single score for each sensitivity run. You can now identify the sensitivity runs that are very distinct from the baseline (i.e. have low correlations). Inspect the graphs for outcomes for those specific simulations (you may need to write a piece of code to browse through those graphs efficiently), and identify the ones that offer distinct modes of behavior. Try to identify all distinct modes of behavior, but limit yourself to a handful of modes. 

Select 2-4 distinct parameter sets corresponding to the baseline as well as the more distinct modes of behavior you identified under step 2. Save those parameter settings as separate CIN files for use in future. 

Generate a synthetic dataset corresponding to each of the scenarios under step 3 (make sure baseline parameters are included). In generating a synthetic dataset you need to turn on both process and measurement noise streams, using baseline noise levels you deem appropriate. Make sure you save both the simulated values for target data variables and other outcomes you identified under step 1. 

Now generate a multi-unit synthetic data set for each of the scenarios under step 3. To this end, create a table of estimated parameters and for each offer your guess for a reasonable standard deviation for that parameter across different units (as a fraction of the total range for parameter; call is “Assumed Stdev[Params]”). Use the cover story you discussed in assignment 1 to justify those standard deviations. Then reformulate the equation for “Normalized Estimated Parameters” to draw those values for different units based on a normal distribution around the scenario mean and with the given standard deviation. For example: 

Normalized Estimated Parameters[Firms,Params]=  

Base Normalized Estimated Parameters[Firms,Params]+Random Normal(0,Assumed Stdev[Params]) 

You can now generate synthetic data for the multi-unit version of the model. Do this for 10 units (e.g. Firms: (f1-f10)) and for each scenario under step 3. 

 

Presentation 

For your class presentation share graphs for (deterministic) simulations corresponding to the distinct modes of behavior you have identified, as well as the synthetic data you have generated. Build your graphs in python and include 2-3 key variables all on the same graph so each simulation could be summarized in one graph for steps 3 and 4. For step 5 include in each graph the trajectories of each variable across all units.  Share any process insights and questions, and explain why you are focusing on the subset of parameter sets you used for synthetic data generation.  
