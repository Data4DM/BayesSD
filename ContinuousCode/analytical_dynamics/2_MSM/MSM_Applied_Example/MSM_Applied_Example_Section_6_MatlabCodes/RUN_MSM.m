clear all
clc
tic

global r EmpMoments W_inv

run('UserInput_MSM')
run('UserInput_Model')

for r=1:NR
    %% Empirical moments
    EmpMoments=EmpiricalMoments(TrueTeta,r);
    
    %% First optimization based on initial W (W_1)
    W_inv=W1(EmpMoments);   W_1=W_inv; % Save W_1
    
    opt_param=Teta0;
    run('Optimization')
    MSM_EstimatedParam_1st=opt_param; ObjFn_1=err;
    
    %% Approximation of optimal W based on optimized parameters in the first optimization
    S_hat=Weight(MSM_EstimatedParam_1st); % equation (4)
    % To fix the numerical instability in inverting the S_hat, we add a small positive number(epsilon) to its diagonal.
    S_hat=S_hat+diag(diag(S_hat))*0.01;
    
    FLAG_NumOfMomVsNumOfTeta=NumOfMomWarningFlag(MSM_EstimatedParam_1st,S_hat); % to make sure p>d
    
    W_inv=inv(S_hat);   W_2=W_inv;  % Save W_2
    FLAG_MomCovError=SingularityWarningFlag(); % double check the invertibility of S
    
    %% optimization based optimal W
    
    run('Optimization')
    MSM_EstimatedParam_2nd=opt_param;  ObjFn_2=err;
    
    %% Confidence Intervals
    Q = EstimatedVar(opt_param, W_inv);  % Equation (7)
    FLAG_TetaCovError=SingularityWarningFlag(); %check the inverse component in Qs
    
    ConfLvl = 0.80;
    MSM_ConfIntervals_80=ConfInt(opt_param, ConfLvl, Q);
    
    ConfLvl = 0.95;
    MSM_ConfIntervals_95=ConfInt(opt_param, ConfLvl, Q);
    
    %% J-test
    [MSM_J, Chi_sq_x, MSM_J_test_Result, FLAG_Validity] =J_test(opt_param, W_inv, .99, r);  % Equation (8)
    
    %% Display summary and save the run
    display(MSM_EstimatedParam_2nd); display(MSM_ConfIntervals_95);
    
    toc
    beep
    str = sprintf('**** REPORT: Run %d Ends! ****', r); disp(str);
    save(['Final_Results_Run_' num2str(r) '.mat']);
end