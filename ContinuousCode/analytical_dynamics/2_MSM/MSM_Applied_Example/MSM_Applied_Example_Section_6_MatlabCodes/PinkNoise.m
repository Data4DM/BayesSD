function Output_Noise_ON=PinkNoise(Teta, ns, r, DataGen)

global C FT

Output_Noise_Standard_Deviation_s=Teta(3);
Ouput_Noise_Correlation_Time_f=	C(7);
Mean_m=0;

%% to use different seed noise for generating Firms at the first step and all other steps
if DataGen==1
    SD=1+r;
else
    SD=1000+r;
end

%% Pink Noise
rng(SD)
Initial_Output_Noise_ON0 =  Mean_m + Output_Noise_Standard_Deviation_s * randn(C(4), ns, 1);

rng(SD+100)
White_Noise_WN = Mean_m + (((Output_Noise_Standard_Deviation_s^2) * (2-(C(1)/Ouput_Noise_Correlation_Time_f))...
    /(C(1)/Ouput_Noise_Correlation_Time_f))^0.5)*(randn(C(4), ns, FT)) ;

% @ INITIAL TIMES:
Output_Noise_ON= Initial_Output_Noise_ON0;
Change_in_Output_Noise_DON = (White_Noise_WN(:,:,1) - Output_Noise_ON)/ Ouput_Noise_Correlation_Time_f;

% @ OTHER TIMES:
for t=1:FT-1
    Output_Noise_ON(:,:,t+1) = Change_in_Output_Noise_DON*C(1) + Output_Noise_ON(:,:,t);
    Change_in_Output_Noise_DON = (White_Noise_WN(:,:,t+1) - Output_Noise_ON(:,:,t+1))/ Ouput_Noise_Correlation_Time_f;
end

end