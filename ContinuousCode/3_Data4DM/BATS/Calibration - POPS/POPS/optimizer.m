function [X,FVAL,REASON,OUTPUT,POPULATION,SCORES] =  optimizer
%%   This is an auto generated M file to do optimization with the Genetic Algorithm and
%    Direct Search Toolbox. Use GAOPTIMSET for default GA options structure.

%%Fitness function
fitnessFunction = @fitness;
%%Number of Variables
nvars = 3 ;
%Linear inequality constraints
Aineq = [];
Bineq = [];
%Linear equality constraints
Aeq = [];
Beq = [];
%Bounds
LB = [  1 1 1];
UB = [  20 20 20];
%Nonlinear constraints
nonlconFunction = [];
%Start with default options
options = gaoptimset;
%%Modify some parameters
options = gaoptimset(options,'PopInitRange' ,[ 1 1 1;  20 20 20]);
options = gaoptimset(options,'PopulationSize' ,50);
options = gaoptimset(options,'EliteCount' ,5 );
options = gaoptimset(options,'CrossoverFraction' ,0.7);
options = gaoptimset(options,'TolFun' ,0.001);
options = gaoptimset(options,'TolCon' ,0.001);
options = gaoptimset(options,'MutationFcn' ,{  @mutationgaussian 1  0.5 });
options = gaoptimset(options,'Display' ,'off');
options = gaoptimset(options,'Vectorized' ,'on');
%%Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,Aineq,Bineq,Aeq,Beq,LB,UB,nonlconFunction,options);
