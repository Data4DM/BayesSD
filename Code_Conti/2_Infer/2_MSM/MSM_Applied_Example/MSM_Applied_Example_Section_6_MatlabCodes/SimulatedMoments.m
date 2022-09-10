function [SimMoments,AllSimMoments]=SimulatedMoments(Teta, N, r)
 
SimulatedProfit=FirmExample(Teta, N, r, 0);
AllSimMoments=MomentSelection(SimulatedProfit, N);
SimMoments=sum(AllSimMoments,2)/N;

end