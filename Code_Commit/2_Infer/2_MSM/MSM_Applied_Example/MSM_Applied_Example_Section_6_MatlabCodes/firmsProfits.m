function Profit=firmsProfits(Teta, Output_Noise_ON, ns, r, DataGen)

global C FT

Depreciation_Time=Teta(1);
Investment_Fraction=Teta(2);
Reference_Return=Teta(4);
MeanResource=Teta(5);
StdevResource=Teta(6);

%% to use different seed noises between data generatiion setep and simulation steps
if DataGen==1
    SD=100+r;
else
    SD=2000+r;
end

%% Profit
rng(SD)
Rnd=randn(C(4), ns);
Initial_Resource = MeanResource + StdevResource * Rnd;

% @ INITIAL TIME:
Resource=Initial_Resource;
Depreciation= Resource / Depreciation_Time;

Normalized_Resources = Resource / C(6) ; % C(6)=Reference_Resources
Return_on_Resources = Reference_Return*(1 - (Normalized_Resources - 1) .^ 2);

Output = Resource .* Return_on_Resources .* (1 + Output_Noise_ON(:,:,1));
Investment = Investment_Fraction * Output;

% @ OTHER TIMES:
Profit(C(4),ns,C(2))=0;
for t=2:FT
    Resource = Investment*C(1) - Depreciation*C(1) + Resource;
    Depreciation= Resource/ Depreciation_Time;
    
    Normalized_Resources = Resource / C(6) ; % C(6)=Reference_Resources
    Return_on_Resources = Reference_Return*(1 - (Normalized_Resources - 1) .^ 2);
    
    Output = Resource .* Return_on_Resources .* (1 + Output_Noise_ON(:,:,t));
    Investment = Investment_Fraction * Output;
    
    if rem((t), 1/C(1))==0
        Profit(:,:,t*C(1))=Output-Investment;  % to save Prf at time step of one
    else
    end
end
end