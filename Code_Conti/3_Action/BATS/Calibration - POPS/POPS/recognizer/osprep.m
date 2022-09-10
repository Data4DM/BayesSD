function [Y,coef2]=osprep(y)

% [Y,SLOPE]=osprep(y) preprocesses for oscillation
% calculates autocorrelation function of input y and returns the 
% values until the first peak as the first row of Y.
% The second row of Y is the autocorrelation function of the detrended data.
% SLOPE is the slope of the trend.

yn=nrmlz(y);
ly=length(y);

MIN_SLOPE = 0.2;
MIN_PERIOD = ly/1.5 ;

% Direct evaluation of the autocorrelation function

acy=autocf(nrmlz(y));
%     figure
%     plot(acy)
acfpeak=fpeak(acy);


if acfpeak < MIN_PERIOD
    Y1=changeSize(acy(1:acfpeak),ly);
    Y1 = nrmlz(Y1);

else
    Y1=zeros(size(y));
end


% autocorrelation function after removal of trend

[ylf,coefs]=pfit1(yn,1,ly);
coef2=coefs(2); 

if abs(coef2) > MIN_SLOPE
    acy=autocf(nrmlz(yn-ylf));
    acfpeak=fpeak(acy);
    
    
    if acfpeak < MIN_PERIOD
        Y2=changeSize(acy(1:acfpeak),ly);	
        Y2 = nrmlz(Y2);
    else
        Y2=zeros(size(y));

    end
else
    Y2=zeros(1,ly);
end

Y=[Y1;Y2];

