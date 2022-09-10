function x=const(y)

% CONST		Check if constant

% CONST(Y) checks if all data points in vector Y
% falls within a +/- 5% and around its mean
% Returns 
% 0 for no constant behavior
% 1 for min and max both equal to zero
% 2 for min and max both equal to nonzero
% 3 for constant within band

[ry cy]=size(y);
m=mean(y);
upperl=m*1.05;
lowerl=m*0.95;
range=max(y)-min(y);
flag=0;
x=0;
if range==0 & m==0
	x=1;
elseif range==0 & m~=0
	x=2;
else 
	for i=1:cy
		if y(i)<lowerl | y(i)>upperl
			flag=1;
		end
	end
end
if range~=0 & flag==0
	x=3;
end

