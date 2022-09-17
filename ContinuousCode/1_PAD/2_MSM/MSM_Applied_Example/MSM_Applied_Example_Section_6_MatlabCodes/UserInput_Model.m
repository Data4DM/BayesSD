%% User input for the model (Firms' profits)

global C FT

%% Model constants
C=[0.03125, 10, 0, 200, 0, 1000, 0.5];
FT=C(2)/C(1);            % Final time   

% C(1);                  % Time step in Vensim
% C(2);                  % Final time in Vensim
% C(3);                  % empty, not used in the model
% C(4);                  % Number of firms, (I)
% C(5);                  % empty, not used in the model
% C(6);                  % Reference_Resources in the model, see figure 4
% C(7);                  % Corelation time in Pink Noise

%% True values of parameters (used in generating empirical data)
TrueTeta=[5, 0.8, 0.1, 1.5, 200, 20];

% ActTeta(1): Depreciation_Time
% ActTeta(2): Investment_Fraction
% ActTeta(3): Output_Noise_Standard_Deviation_s
% ActTeta(4): Reference_Return
% ActTeta(5): MeanResource
% ActTeta(6): StdevResource