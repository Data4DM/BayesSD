function ConfIntervals=ConfInt(P, ConfLvl, Q)

ConfFactor=norminv(1-(1-ConfLvl)/2) ;    

ConfDown = P -  ConfFactor * (sqrt(diag(Q)));
ConfUp   = P +  ConfFactor * (sqrt(diag(Q)));

ConfIntervals=[ConfDown , ConfUp];
end    