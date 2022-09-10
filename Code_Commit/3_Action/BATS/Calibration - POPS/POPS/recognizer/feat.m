function Y=feat(X,t)
% FEAT(X,t) extracts features from t segments obtained from
% the sample vectors given as the rows of vector X.
% The features are based on 1st and 2nd order polynomial curve
% fitting on each segment.
% Returns matrix with columns as the observation vectors.
% The resulting matrix is 3 by (t * no of rows).
% feature 1 : slope of linear fit
%         2 : curvature at the beginning of the segment
%	      3 : curvature at the middle of the segment 
%
% Calls PFIT1


[rX cX]=size(X);
Y=[];

for i=1:rX
    f=X(i,:);						% Take the row
    n=length(f);
    sbeg=1;
    for segleft=t:-1:1
       lseg=round(n/segleft);
       send=sbeg+lseg-1;
       rmid=0.5*(lseg-1)/(cX-1);			% segment mid point for curvature feature

%      brx(segleft)=send;bry(segleft)=f(send);	

       r=f(sbeg:send);
       [w1,p1]=pfit1(r,1,cX);				% 1st order approximation

%      g1(sbeg:send)=w1;				% can be used to check 1st order points

       v(1)=p1(2);					% 1st feature : slope 
       [w2,p2]=pfit1(r,2,cX);				% 2nd order approximation
	
%      g2(sbeg:send)=w2;				% can be used to check 2nd order points

       a1=p2(2);
       a2=p2(3);

       par=a1^2+4*a1*a2*rmid+4*a2^2*rmid^2;
       v(2)=2*a2/((1+par)^1.5);				% 2nd feature : curvature at mid-point

       v(3)=mean(r);					% 3rd feature : segment mean

       Y=[Y v'];
       n=n-lseg;
       sbeg=sbeg+lseg;
   end

%	plot(f);hold on;plot(g1,'r');plot(g2,'b')	% use to plot approximated functions
%	plot(brx,bry,'o')
%	hold off

end
