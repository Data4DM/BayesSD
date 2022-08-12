function fitness = Model_02(x);

%%Simulation Setup
FinalTime = 100;
CurrentTime = 0;
dt = 0.25;

ReportCounter = 1;
ReportInt = 1;
Output_1 = zeros(1,400);
Output_2 = zeros(1,400);
Output_3 = zeros(1,400);

%% Initilialization of the model parameters
AcqTime1 = x(1);
AcqTime2 = x(2);
Loss = 10;

Stock = x(5);
SupLine1 = x(6); %AcqTime1*Loss;
SupLine2 = x(7); %AcqTime2*Loss;
DesStock = x(4);
StockAdjTime = x(3);


%% Model run
while CurrentTime < FinalTime

    StockAdj = (DesStock-Stock)/StockAdjTime;
    
    Control = Loss + StockAdj;
    Acq1 = SupLine1/AcqTime1;
    SupLine1 = SupLine1 + (Control - Acq1)*dt;
    
    Acq2 = SupLine2/AcqTime2;
    SupLine2 = SupLine2 + (Acq1 - Acq2)*dt;
    
    Stock = Stock + (Acq2 - Loss)*dt; 
    
    Output_1 (1, ReportCounter)= Stock;
    Output_2 (1, ReportCounter)= SupLine1;
    Output_3 (1, ReportCounter)= SupLine2;

    CurrentTime = CurrentTime + dt;
    ReportCounter = ReportCounter + 1;
end


%k = 1:1:400;
%plot(k,Output_2(1, k));

[a,b,fitness2] = testhy(Output_1 , id('nexgr'), 0);

fitness = -1*fitness2;





