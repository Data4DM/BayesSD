%% User input for the MSM

global K L 

K=10;       % Number of simulations, K in equation (2)
L=1000;     % number of simulations to estimate W, L1 & L2 in equation (4)

NR=1; %How many times do you want to run all the estimation steps?
%(e.g. if you enter 2, you solve the entire problem twice (with different 
% seed nises and for each %run you obtain estimated parameters and 
% respective confidence itervals.)
% See table 6 in the book chapter where NR is used as 100.

%% Optimization Initiation 
[Tolerance, opt_method, instances, lb, ub, Teta0]=OptimizationInitiation();