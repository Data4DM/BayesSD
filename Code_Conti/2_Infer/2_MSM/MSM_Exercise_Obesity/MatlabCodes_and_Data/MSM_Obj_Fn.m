function ErrorTerm_FirstStep=MSM_Obj_Fn(Teta)

global  NS EmpMoments r W_inv 

Sim_moments=SimulatedMoments(NS,Teta,r);
AveSim_moments=sum(Sim_moments,2)/NS;

%% MSM error:
Err = EmpMoments - AveSim_moments; 
ErrorTerm_FirstStep=Err' * W_inv * Err;   % Equation 3 with W_1, Equation 5 with W_2
end