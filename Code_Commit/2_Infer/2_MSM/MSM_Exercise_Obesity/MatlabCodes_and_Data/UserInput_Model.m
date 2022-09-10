%% User input for the model (exercise)

I=1000;  %Number of individuals 

FINALTIME=20; 
TIMESTEP=0.03125; 
FT=FINALTIME/TIMESTEP;

CostOfWeight=10000;
EatingFeedbackTime=0.033;

EnergyDensityOfNewWeight=3000;
FixedEnergyExpenditure=100000;
MeanInvWeight=80;    
NoiseMean=0;
%NoiseSeed=1; % rng is used in Matlab
NoiseStd=0.007;
StdevInvWeight=5;  
EIRankCrrTime=5;
