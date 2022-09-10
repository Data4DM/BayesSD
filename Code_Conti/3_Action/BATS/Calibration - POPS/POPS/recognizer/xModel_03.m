function fitness = Model_03(x);

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
NormBacklog = 25000;
NormCompOrders = 10000;
PercDelay = x(1);
MinDelDelay = 1;
BaseEffectiveness = 100;
Salary = 2000;
Revenue = 10;
SalesForceAdjTime = x(2);

Backlog = 8000;
PercDelDelay = 0;
SalesForce = 10;

%% Model run
while CurrentTime < FinalTime
    
    x = Backlog/NormBacklog;
    if x<0
        BacklogEffect = 0.0489;
    elseif x>4
        BacklogEffect = 1.9584;
    else
        BacklogEffect = -0.1552*x^2+1.0981*x+0.0489;
    end
    
    CompOrders = NormCompOrders*BacklogEffect;
    DelDelay = Backlog/CompOrders;
    
    if CurrentTime == 0
        PercDelDelay = DelDelay;
    end

    PercDelDelay = PercDelDelay + (DelDelay-PercDelDelay)/PercDelay*dt;
    
    x = PercDelDelay/MinDelDelay;
    if x<1
        DelayEffect = 3.4974;
    elseif x>6
        DelayEffect = 0.3664;
    else
        DelayEffect = 0.0833*x^3-0.9697*x^2+2.5798*x+1.804;
    end
    
    SFEffectiveness = BaseEffectiveness*DelayEffect;
    OrdersBooked = SalesForce*SFEffectiveness;
    Budget = OrdersBooked*Revenue;
    DesSalesForce = Budget/Salary;
    SalesForce = SalesForce + (DesSalesForce-SalesForce)/SalesForceAdjTime*dt;
    NewOrders = OrdersBooked;
    Backlog = Backlog + (NewOrders-CompOrders)*dt;
    
    
    Output_1 (1, ReportCounter)= Backlog;
    Output_2 (1, ReportCounter)= SalesForce;

    CurrentTime = CurrentTime + dt;
    ReportCounter = ReportCounter + 1;
end


%k = 1:1:400;
%plot(k,Output_2(1, k));

[a,b,fitness2] = testhy(Output_2 , id('nexgr'), 0);

fitness = -1*fitness2;





