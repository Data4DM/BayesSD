function [X,FVAL,REASON,OUTPUT,POPULATION,SCORES] =  thermogen
%%   This is an auto generated M file to do optimization with the Genetic Algorithm and
%    Direct Search Toolbox. Use GAOPTIMSET for default GA options structure.

%%Fitness function
fitnessFunction = @Thermostat;
%%Number of Variables
nvars = 2 ;
%Linear inequality constraints
Aineq = [];
Bineq = [];
%Linear equality constraints
Aeq = [];
Beq = [];
%Bounds
LB = [1  1 ];
UB = [20  20 ];
%Nonlinear constraints
nonlconFunction = [];
%Start with default options
options = gaoptimset;
%%Modify some parameters
options = gaoptimset(options,'PopInitRange' ,[1  1 ; 20  20 ]);
options = gaoptimset(options,'PopulationSize' ,30);
options = gaoptimset(options,'StallGenLimit' ,15);
options = gaoptimset(options,'StallTimeLimit' ,Inf);
options = gaoptimset(options,'CrossoverFcn' ,{ @crossoverintermediate 1  });
options = gaoptimset(options,'MutationFcn' ,{ @mutationgaussian 1  1  });
options = gaoptimset(options,'Display' ,'off');
options = gaoptimset(options,'OutputFcns' ,{ { @gaoutputgen 2  } });
%%Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,Aineq,Bineq,Aeq,Beq,LB,UB,nonlconFunction,options);
