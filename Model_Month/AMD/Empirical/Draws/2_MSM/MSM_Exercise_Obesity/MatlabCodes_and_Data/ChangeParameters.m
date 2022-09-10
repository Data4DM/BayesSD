function [AveSim_moments,PS]=ChangeParameters(d,Teta,eps)

global NS r 

%% Shift parameters one eps up and down
for i=1:d
    for j=1:2*d
        if fix((j+1)/2)==i
            PS(i,j)=Teta(i)*(1+ (rem(j,2)*2-1) * eps);
            PS(i,j)=Teta(i)*(1+ (rem(j,2)*2-1) * eps);
        else
            PS(i,j)=Teta(i);
        end
    end
end

for i=1:2*d
    Sim_moments=SimulatedMoments(NS,PS(:,i),r);  
    AveSim_moments(:,i)=sum(Sim_moments,2)/NS;
end
end