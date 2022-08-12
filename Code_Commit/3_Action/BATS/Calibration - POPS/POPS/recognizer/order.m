function y=order(x,col)
% order(x,col)
% orders elements of row or column vector x in 
% col number of columns
[nc nr]=size(x);
if nc==1
    n=nr;
else 
    n=nc;
end
for i=1:n/col
   y(i,:)=x(col*(i-1)+1:i*col);
end