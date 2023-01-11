function f=datin(f)
% datin(f) :
% Consructs data set with n values by picking points from the plot.
% Initial plot is the f vector; if f is scalar, a new plot is 
% constructed with f number of points.
% To smooth, pick from the left of the vertical axis. The smoothing parameter is proportional to the heigth 
% To exit, pick from the below of the horizontal axis

% Check if f is scalar
if size(f)==[1 1]
   n=f;
   m=n-1;
   f=(0:1/m:1);				% set initial signal (ramp)
else
   n=length(f);
end

% Mouse input loop
y=0;   
while y>-.01	
%  f=(f-min(f))./(max(f)-min(f));		
  plot(f);axis([0 n 0 max(f)]);
  [x y]=ginput(1);
  if ((x>=0) & (x<=n) & (y>=0) & (y<=1))
     xi=ceil(x);
     f(xi)=y;
%     f=(f-min(f))./(max(f)-min(f));
  end
  if x<-n/10			
     f=ssf(f,abs(y)*n/10); 		% smooth prop. to y-coord.
  end
end;


