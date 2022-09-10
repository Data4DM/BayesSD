%% User input for the MSM

global NS L 

%% Inputs for simulation

NS = 10;  %Number of simulations
L = 400; %Number of simulations to estimate W 

%%
%How many times do you want to run all the estimation steps? For each run you obtain estimated parameters and respective confidence itervals.');
%If you need to solve the problem once and obtain estimated parameters, confidence intervals and J-test results, set this value as one. 
%(see the last part of ‘Step 5: Interpretation and Making Inference’ for the use of a larger number of runs).
NR = 1;

%% Optimization Initiation 
[Tolerance, opt_method, instances, lb, ub, Teta0]=OptimizationInitiation();