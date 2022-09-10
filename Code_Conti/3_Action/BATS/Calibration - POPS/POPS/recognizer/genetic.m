function [X,FVAL,REASON,OUTPUT,POPULATION,SCORES] =  genetic
%%   This is an auto generated M file to do optimization with the Genetic Algorithm and
%    Direct Search Toolbox. Use GAOPTIMSET for default GA options structure.

%%Fitness function
fitnessFunction = @ELW;
%%Number of Variables
nvars = 5 ;
%Linear inequality constraints
Aineq = [];
Bineq = [];
%Linear equality constraints
Aeq = [];
Beq = [];
%Bounds
LB = [  0 1 1 1 1 ];
UB = [  1 5 10 10 10 ];
%Nonlinear constraints
nonlconFunction = [];
%Start with default options
options = gaoptimset;
%%Modify some parameters
options = gaoptimset(options,'PopInitRange' ,[  0 1 1 1 1 ;  1 5 10 10 10 ]);
options = gaoptimset(options,'StallGenLimit' ,Inf);
options = gaoptimset(options,'StallTimeLimit' ,Inf);
options = gaoptimset(options,'CrossoverFcn' ,{  @crossoverheuristic 1.2 });
options = gaoptimset(options,'MutationFcn' ,{  @mutationgaussian 1  1  });
options = gaoptimset(options,'Display' ,'iter');
options = gaoptimset(options,'OutputFcns' ,{ {  @gaoutputgen 5  } });
%%Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,Aineq,Bineq,Aeq,Beq,LB,UB,nonlconFunction,options);
