function [Tolerance, opt_method, instances, lb, ub, Teta0]=OptimizationInitiation()

Tolerance=1e-8;

display('To find global optimum points, two solvers are available here: GlobalSearch or MultiStart solvers.');
display('These solvers automatically generate random start points within bounds. If you choose MultiStart solver, you will be asked to enter the number of starts.');
display('If you would like to use the GlobalSearch solver, please enter GS');
display('If you would like to use the MultiStart solver, please enter MS');
opt_method = input('Solver: GS or MS? = ', 's');

if strcmp(opt_method,'MS')
    display('Please enter the number of instances for MultiStart solver (e.g.: 10). Note: The higher this number, the more chance to find the global optimum, and the more caclulation time.');
    instances = input('Number of instances = '); 
else
    instances = 1; %this is not effective in GS
end

%% Parameters bounds, used by the optimization solver
% Lower and upper bounds:
lb = [0 0 0];
ub = [1 1 .1];

% Teta0, initial points for the optimization solver
Teta0 = [.5 .5 .1]';  %[OverFeed  StarvFeed  EI_ExtraTrend]

end