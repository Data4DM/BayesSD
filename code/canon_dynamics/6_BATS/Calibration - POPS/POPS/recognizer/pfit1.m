function [y,a]=pfit1(x,n,N)

% [y,a]=pfit1(x,n,N)
% 	fits a polynomial of order n to 
% 	the data given as vector x.
%	n=1 for linear, n=2 for quadratic
%	The independent variable ranges from 0 to (length of x)/N
%	Returns polynomial coefficient vector a, and,
%	points of fitted vector y

[cx rx]=size(x);

t=linspace(0,(rx-1)/(N-1),rx);
B(1,:)=ones(size(x));
B(2,:)=t;
for i=3:n+1
    B(i,:)=B(2,:).^(i-1);
end
a=inv(B*B')*B*x';

y=a'*B;
