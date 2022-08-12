function x=linear(y)
% LINEAR	Check if linear
% LINEAR(Y) checks if all data points in vector Y
% falls within a band around 
% Returns :
% 1 for positive linear,
% 2 for negative linear,
% 0 otherwise

% Calls PFIT1

y=nrmlz(y);
% [Y,a]=pfit1(y,1,cy);

z=0;
count=0;
for j=1,size(y)
    if (y(j)==0)
        count=1;
        for i=j+1, size(y)
            if (y(i) == y(i-1))
                count = count + 1;
            end
        end
        for k=1:(size(y) - count)
            if (y(0)==0)
                z(k)=y(count+k);
            else
                z(k)=y(k);
            end
        end

    else
        z=y;
    end
end
        
[rz cz]=size(z);         
    
[Z,a]=pfit1(z,1,cz);

x=1;
for i=1:cz
	if (abs(z(i)-Z(i)))>0.05
		x=0;
	end
end
if x==1 & a(2)<0
	x=2;
end
