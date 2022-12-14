function W_1=W1(ActMoments)

M=size(ActMoments,1);

W_1(M,M)=0;
for m=1:M
    for m1=1:M
        if m==m1;
            W_1(m,m1)=1./(ActMoments(m)).^2;  
        else
        end
    end
end