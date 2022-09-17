


function y1 = changeSize(y, N)

ly = length(y);

x = 0 : ly-1;

x1 = linspace(0, ly-1, N);

y1 = interp1(x,y,x1);