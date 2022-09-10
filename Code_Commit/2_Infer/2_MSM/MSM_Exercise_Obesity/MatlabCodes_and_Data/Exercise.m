function [X1,X2,X3,X4,X5]=Exercise(Teta, IndivRandEIFactor, ns, s, r)

%% Vensim model is replicated here.
OverFeed=Teta(1);
StarvFeed=Teta(2);
EI_ExtraTrend=Teta(3);

run('UserInput_Model')

%% Initial values
rng(10000+s+r); % similar with Noise Seed in Vensim. s changes in each iteration of simulation, r changes in each time the problem is solved.
RN2=MeanInvWeight+StdevInvWeight*randn(I,ns);
Weight=RN2;

DelayedEIBalance=1;
DS=EatingFeedbackTime*DelayedEIBalance;

%% Simulation
for t=2:FT
    Z1= (DelayedEIBalance>1) .* (DelayedEIBalance-1)* StarvFeed;
    Z2= (DelayedEIBalance<=1) .* (DelayedEIBalance-1)* OverFeed;
    EIBalanceFeedback=Z1+Z2;
    
    EnergyExpenditure=FixedEnergyExpenditure+CostOfWeight*Weight;
    
    FluctuationInEI=(1+IndivRandEIFactor(:,:,t)+EIBalanceFeedback+EI_ExtraTrend);
    EnergyIntake=max(FixedEnergyExpenditure,EnergyExpenditure.*FluctuationInEI);
    
    % delaued EI Balance
    in=EnergyExpenditure./EnergyIntake;
    DelayedEIBalance=DS./EatingFeedbackTime;
    DS=in.*TIMESTEP - DelayedEIBalance.*TIMESTEP + DS;
    
    EnergyBalance=EnergyIntake-EnergyExpenditure;
    WeightChange=EnergyBalance./EnergyDensityOfNewWeight;
    
    Weight=WeightChange.*TIMESTEP + Weight;
    
    %% Save weights at time step of one
    if rem(t,1/TIMESTEP)==0
        W(:,:,t*TIMESTEP)=Weight;
    end
end

X1=W(:,:,1);
X2=W(:,:,5);
X3=W(:,:,10);
X4=W(:,:,15);
X5=W(:,:,20);
end