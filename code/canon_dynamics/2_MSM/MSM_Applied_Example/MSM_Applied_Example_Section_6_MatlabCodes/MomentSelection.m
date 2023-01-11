function Moments=MomentSelection(ModelOutput, ns)

M = (mean(ModelOutput));                % First set of moments 
M2 = (mean(ModelOutput .^2))./M;        % Second set of moments 

%% Merging all moments into one vector

if ns==1 % (only in the data generation, in the first step)
    Moments=[squeeze(M);squeeze(M2)];
else
    Moments=[squeeze(M)';squeeze(M2)'];
end

end