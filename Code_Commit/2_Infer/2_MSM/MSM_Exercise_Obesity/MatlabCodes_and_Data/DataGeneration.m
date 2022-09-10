function [X1,X2,X3,X4,X5]=DataGeneration(Teta, ns, s, r)
% s=1 and r=1 is used in actual data generation (saved in Excel file). Then s=2 in simulated data generation.

IndivRandEIFactor=PinkNoise(ns, s, r);
[X1,X2,X3,X4,X5]=Exercise(Teta, IndivRandEIFactor, ns, s, r);

end