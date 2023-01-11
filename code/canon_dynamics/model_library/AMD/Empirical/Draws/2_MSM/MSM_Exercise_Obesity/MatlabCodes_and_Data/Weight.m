function S_hat=Weight(Teta)

global  L r

%% simulatin based on the optimum points in the first optimization
    
Sim_moments=SimulatedMoments(L,Teta,r);
AveSim_moments=sum(Sim_moments,2)/L;

%% S_hat, equation (4)

for l=1:L
    V(:,:,l)=(Sim_moments(:,l)-AveSim_moments)*(Sim_moments(:,l)-AveSim_moments)';
end

S_hat = sum(V,3)/L ;  % Sigma: covariance matrix

end
