clear all
clc
tic

global EmpMoments r W_inv

run('UserInput_MSM')
run('UserInput_Model')

for r=1:NR
    %% Capturing moments from Data in Excel file
    % DATA is generated based on these true values: % OverFeed=0.2; StarvFeed=0.5; EI_ExtraTrend=0.002;
    DATA = xlsread('MSM_Exercise_Data');
    X1=DATA(:,1); X2=DATA(:,2); X3=DATA(:,3); X4=DATA(:,4); X5=DATA(:,5);
    
    EmpMoments=[MomentSelection(X1) MomentSelection(X2) MomentSelection(X3) MomentSelection(X4) MomentSelection(X5)]';
    
    %% Calculate W
    W_inv=W1(EmpMoments);
    W_1=W_inv;  % Save W_1
    opt_param=Teta0; % Initial points for the optimization solver
    
    %% first optimization based on W1
    
    run('Optimization')
    EstimatedParam_1th=opt_param;
    
    %% Calculate W
    [S_hat]=Weight(opt_param); % Equation (4)
    % To fix the numerical instability in inverting the S_hat, we add a small positive number(epsilon) to its diagonal.
    S_hat=S_hat+diag(diag(S_hat))*0.01;
    
    FLAG_NumOfMomVsNumOfTeta=NumOfMomWarningFlag(opt_param,S_hat); % To make sure there are more moments than unknown paramenters.
    
    W_inv=inv(S_hat);
    FLAG_MomCovError=SingularityWarningFlag(); % double check the invertibility of W_star
    W_2=W_inv; % Save W_2
    
    %% Second optimization based on W_2
    
    run('Optimization')
    EstimatedParam_2th=opt_param;
    
    %% Confidence Intervals
    Q = EstimatedVar(opt_param, W_inv);
    FLAG_TetaCovError=SingularityWarningFlag(); %check the inverse component in Q
    
    ConfLvl=0.80;
    ConfIntervals_80=ConfInt(opt_param, ConfLvl, Q);
    
    ConfLvl=0.95;
    ConfIntervals_95=ConfInt(opt_param, ConfLvl, Q);
    
    %% J-test
    [J, Chi_sq_x, J_test_Result, FLAG_Validity] =J_test(opt_param, W_inv, .99, r);
    
    %% Display summary and save the run
    display(opt_param); display(ConfIntervals_95);
    
    beep
    toc
    %% Save the results of each run
    save(['Final_Results_Run_' num2str(r) '.mat']);
end
