function [Q,D] = EstimatedVar(opt_param, W_inv)

global NS 

Teta=opt_param;
d=size(Teta,1);   % number of parameters
eps = 0.001;

%% Estimate the sensitivity of the moments to small changes of unknown parameter values

[AveSim_moments,PS]=ChangeParameters(d,Teta,eps);
D=Delta(AveSim_moments, PS, d);

%% Equation (7) 
Q = (1+1/NS) .* inv(D' * W_inv * D);

end