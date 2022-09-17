function [J, Chi_sq_x, J_test_Result, Flag_validity] =J_test(opt_param, W, Prob, r)

global NS EmpMoments 

Sim_moments=SimulatedMoments(NS,opt_param,r);
AveSim_moments=sum(Sim_moments,2)/NS;

ErrMoments=(EmpMoments - AveSim_moments);
J=NS/(NS+1) * ErrMoments' * W * ErrMoments;    % Equation (8)

%% Chi-square
p=size(EmpMoments,1);
d=size(opt_param,1);

DOF=p-d;
Chi_sq_x=chi2inv(Prob,DOF);

if J>Chi_sq_x
    J_test_Result=['H0 is rejected at ' num2str(Prob*100) '% confidence level, so the model is NOT valid.'];
    Flag_validity=1;
else
    J_test_Result=['H0 is NOT rejected at ' num2str(Prob*100) '% confidence level, so the model is valid.'];
    Flag_validity=0;
    
end

end

