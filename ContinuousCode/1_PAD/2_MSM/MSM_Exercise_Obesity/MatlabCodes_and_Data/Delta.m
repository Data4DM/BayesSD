function D=Delta(AveSim_moments, PS, d)

% Sensitivity of Simumlated moments to estimated parameters
for z=1:2*d
    if rem(z,2)==0
        % for lower bounds
        AvS_L(:,fix(z/2))=AveSim_moments(:,z);
        PS_L(fix(z/2))=PS(z/2,z);
    else
        % for upper bounds
        AvS_U(:,fix(z/2+0.5))=AveSim_moments(:,z);
        PS_U(fix(z/2+0.5))=PS((z-1)/2+1,z);
    end
end

sm=size(AveSim_moments, 1);
for i=1:sm
    D(i,:)=(AvS_U(i,:)-AvS_L(i,:)) ./ (PS_U - PS_L);  % size: m*n, where
    % m is the number of moments and n is the number of parameters to estimate
end