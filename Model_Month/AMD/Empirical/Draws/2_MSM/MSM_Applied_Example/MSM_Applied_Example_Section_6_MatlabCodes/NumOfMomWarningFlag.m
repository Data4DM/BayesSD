function FLAG=NumOfMomWarningFlag(Teta,Moments)

P=size(Moments,1);
d=size(Teta,2);

if P<d
    FLAG=2; % Error, P should be >= d
elseif P==d
    FLAG=1;
else
    FLAG=0;  
end

end