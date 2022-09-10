function [Q,D] = EstimatedVar(opt_param, W_inv)

global K

Teta=opt_param;
d=size(Teta,2);   % number of parameters
eps = 0.001;

%% Estimate the sensitivity of the moments to small changes of unknown parameter values

[AveSimMoments,PS]=ChangeParameters(d,Teta,eps);
D=Delta(AveSimMoments, PS, d);

Q = (1+1/K) .* inv(D' * W_inv * D);

end