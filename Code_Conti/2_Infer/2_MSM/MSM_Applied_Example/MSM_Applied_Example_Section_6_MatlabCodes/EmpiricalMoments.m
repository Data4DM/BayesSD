function EmpMoments=EmpiricalMoments(TrueTeta,r)

Profit=FirmExample(TrueTeta, 1, r, 1);
% FirmExample(Teta, N, r, DataGen):
% N: number of simulation is used as 1.
% DataGen=1 : It's a flag to declare that empirical moments are generated.

%% Moments selection
EmpMoments=MomentSelection(Profit, 1);

end