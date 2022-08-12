function r=autocf(x)
% AUTOCF Autocorrelation function

N=length(x);
xm=mean(x);
for k=1:N/2+1
	r(k)=0;
	for i=1:N-k
		r(k)=r(k)+(x(i)-xm)*(x(i+k)-xm);
	end
end
denum=0;
for i=1:N
	denum=denum+(x(i)-xm)^2;
end
	
r=r/denum;
