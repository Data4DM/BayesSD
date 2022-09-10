function Sim_moments=SimulatedMoments(NS,Teta,r)

% Data generation
[X1,X2,X3,X4,X5]=DataGeneration(Teta, NS, 2, r);

Sim_moments=[MomentSelection(X1) MomentSelection(X2) MomentSelection(X3) MomentSelection(X4) MomentSelection(X5)]';

end