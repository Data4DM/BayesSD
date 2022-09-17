function D=Delta(AveSimMoments, PS, d)

% Sensitivity of Simumlated moments to estimated parameters
for s=1:2*d
    if rem(s, 2)==0
        % for lower bounds
        AvS2(:,fix(s/2))=AveSimMoments(:,s);
        AvS4(fix(s/2))=PS(s/2 ,s);
    else
        % for upper bounds
        AvS1(:,fix(s/2+0.5))=AveSimMoments(:, s);
        AvS3(fix(s/2+0.5))=PS((s-1)/2+1, s);
    end
end

P=size(AveSimMoments, 1);
for i=1:P
    D(i,:)=(AvS1(i,:)-AvS2(i,:)) ./ (AvS3 - AvS4);  % size: m*n, where
    % P is the number of moments and d is the number of parameters to estimate
end

end