function y=nrmlz(f,mx)
% NRMLZ(f,mx)
%	normalizes values of f by dividing each point
%	by the maximum of absolute values of all points
%	irrespective of the value of mx.
% NRMLZ(f)
%	normalizes values of f such that min->0, max->1



if nargin==1
   mx=1;
   mn=0;
   y=(f-min(f))/(max(f)-min(f)).*(mx-mn)+mn;
else
   y=f/max(abs(f));
end
