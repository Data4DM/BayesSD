function [sl,mn]=chconv(y)

% [S,M]=CHCONV(Y) Check Convergence
% Returns S and M depending on the values of mean and slope of the 
% last 10 per cent of all the data points in array Y.

ly=length(y);			
yn=nrmlz(y,1);					% Normalize with max. absolute value

nendp=fix(ly/10);				% Take last 1/10 data points
endt=(ly-nendp+1:ly);
endy=yn(endt);

f=feat(endy,1);					% Evaluate slope / curvature / mean

sl=0;
if f(1)>0.02
	sl=+1;
elseif f(1)<-0.02
	sl=-1;
end

mn=0;
if f(3)>0.02 
	mn=+1;
elseif f(3)<-0.02
	mn=-1;
end

