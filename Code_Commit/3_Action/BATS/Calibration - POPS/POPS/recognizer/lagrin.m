function sum=lagrin(x,y,x0)
% LAGRIN (X,Y,X0). Lagrangian Interpolation
%	 Returns the interpolated value of X0
% 	 for the data points given as X versus Y arrays.

n=length(x);
sum=0;
for i=1:n;
	prod=y(i);
	for j=1:n
		if i~=j
			prod=prod*(x0-x(j))/(x(i)-x(j));
		end
	end
sum=sum+prod;
end