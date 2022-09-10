function MSM_Function=MSM_Obj_Fn(Teta)

global r EmpMoments K W_inv

%% Simulated Moments, equation (2) 
SimMoments=SimulatedMoments(Teta, K, r);

%% Objective Function
ErrMoments=(EmpMoments - SimMoments);
MSM_Function=ErrMoments' * W_inv * ErrMoments;   % Equation 3 with W_1, Equation 5 with W_2

end