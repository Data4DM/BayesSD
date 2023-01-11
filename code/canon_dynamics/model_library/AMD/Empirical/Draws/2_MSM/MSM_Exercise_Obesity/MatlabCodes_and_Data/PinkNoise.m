function IndivRandEIFactor=PinkNoise(ns, s, r)

% EIRankCrrTime=Teta(4);
% Equations for Pink Noise from the Vensim model are replicated here.
run('UserInput_Model')

rng(s+r); % similar with Noise Seed in Vensim
RN1=NoiseMean+NoiseStd*randn(I,ns,1);

rng(1000+s+r); 
RN2=NoiseMean+NoiseStd*randn(I,ns,FT);
EIRandomFactorGenerator=NoiseMean+(((2-(TIMESTEP/EIRankCrrTime))/(TIMESTEP/EIRankCrrTime))^0.5) *RN2;

% @ initial time
IndivRandEIFactor=RN1;
ChangeInPinkNoise=(EIRandomFactorGenerator(:,:,1)-IndivRandEIFactor)/EIRankCrrTime;
%@ Other times
for t=1:FT-1
    %% Noise
    IndivRandEIFactor(:,:,t+1)=ChangeInPinkNoise.*TIMESTEP +IndivRandEIFactor(:,:,t);
    ChangeInPinkNoise=(EIRandomFactorGenerator(:,:,t+1)-IndivRandEIFactor(:,:,t+1))/EIRankCrrTime;
end
end