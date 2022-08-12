function Profit=FirmExample(Teta, N, r, DataGen)

%DataGen=0 for generating empirical moments
%DataGen=1 for generating simulated moments

Output_Noise_ON=PinkNoise(Teta, N, r, DataGen);  % N=Number of simulation
Profit=firmsProfits(Teta, Output_Noise_ON, N, r, DataGen);

end

