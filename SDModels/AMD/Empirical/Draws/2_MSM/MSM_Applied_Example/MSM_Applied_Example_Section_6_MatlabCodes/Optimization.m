display('*****************************');
display('*** REPORT: Optimization begins...');

options = optimset;
options = optimset(options,'Display', 'iter-detailed');
options = optimset(options,'TolFun', Tolerance);
options = optimset(options,'TolX', Tolerance);
%options = optimset(options,'FunValCheck', 'on');
options = optimset(options,'PlotFcns', {  @optimplotx @optimplotfunccount @optimplotfval @optimplotstepsize });
options = optimset(options,'Algorithm', 'interior-point');
options = optimset(options,'Diagnostics', 'on');

problem = createOptimProblem('fmincon','objective',@MSM_Obj_Fn,'x0',opt_param,'lb',lb,'ub',ub,'options',options);

if strcmp(opt_method,'GS')
    gs=GlobalSearch('StartPointsToRun','bounds', 'TolFun', Tolerance, 'TolX', Tolerance,'NumStageOnePoints',200,'NumTrialPoints',500);
    [opt_param,err] = run(gs,problem)
else
    display('For MultiStart solver, paraller computing can be applied to speed up search. check "Matlabpool open" syntax.:');
    %matlabpool open 2 %Suppose you have a dual-core processor, and want to use parallel computing on both cores.
    ms=MultiStart('UseParallel', 'always', 'StartPointsToRun', 'bounds', 'TolFun', Tolerance, 'TolX', Tolerance);
    [opt_param,err] = run(ms,problem,instances)
end

display('*** REPORT: Optimization ends!');
display('************************************');