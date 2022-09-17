function S_hat=Weight(Teta)

global  L r

%% simulatin based on the optimum points in the first optimization

[~,AllSimMoments_L]=SimulatedMoments(Teta,L,r);
AveSimMoments_L=SimulatedMoments(Teta,L,r+10000);


%% S_hat, equation (4)
for s=1:L
    V(:,:,s)=(AllSimMoments_L(:, s)-AveSimMoments_L)*(AllSimMoments_L(:, s)-AveSimMoments_L)';
end

S_hat = sum(V,3)/L ;  % Sigma: covariance matrix

end