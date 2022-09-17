function [J, Chi_sq_x, J_test_Result, Flag_validity] =J_test(opt_param, W, Prob, r)

global K EmpMoments 

SimMoments=SimulatedMoments(opt_param, K, r);

ErrMoments=(EmpMoments - SimMoments);
J=K/(K+1) * ErrMoments' * W * ErrMoments; % Equation (8)

%% Chi-square
p=size(EmpMoments,1);
d=size(opt_param,2);

DOF=p-d;  % Degree of freedom
Chi_sq_x=chi2inv(Prob,DOF);

if J>Chi_sq_x
    J_test_Result=['H0 is rejected at ' num2str(Prob*100) '% confidence level, so the model is NOT valid.'];
    Flag_validity=1;
else
    J_test_Result=['H0 is NOT rejected at ' num2str(Prob*100) '% confidence level, so the model is valid.'];
    Flag_validity=0;
    
end

end

