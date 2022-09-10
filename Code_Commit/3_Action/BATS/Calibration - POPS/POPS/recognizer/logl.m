function X=logl(x)
% logl(A) returns the matrix whose elements are
%         given by log(max(1.0E-10, aij), where aij are 
%         the elements of matrix A.
[rA cA]=size(x);
for i=1:rA
    for j=1:cA
         X(i,j)=log(max(1.0E-10, x(i,j)));
    end
end
