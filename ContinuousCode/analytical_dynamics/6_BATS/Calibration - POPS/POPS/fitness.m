function [y] = fitness (x)

[popSize nVar] = size(x);

%Change the name of the model function depending on the experiment
i=1;
y=zeros(popSize,1);
while i<(popSize+1)
    y(i)=Model_02(x(i,:));
    i=i+1;
end

