function proximity = IntegFord;

load behaviourComparisionFTW;

%output = frefrun(4,:)
%hom(:,:)=0;

i = 1;
while i<15
    output2 = fresults.modifiedRuns{i};
    
    variable1 = output2(1,:);
    [a,b,c] = testhy(variable1, id('gr2da'),0);
    hom(1,i)= c;

    variable2 = output2(2,:);
    [a,b,c] = testhy(variable2, id('oscdc'),0);
    hom(2,i)= c;
    
    variable3 = output2(3,:);
    [a,b,c] = testhy(variable3, id('gr2da'),0);
    hom(3,i)= c;
    
    variable4 = output2(4,:);
    [a,b,c] = testhy(variable4, id('oscgr'),0);
    hom(4,i)= c;
        
    i = i+1;
end



proximity = hom;