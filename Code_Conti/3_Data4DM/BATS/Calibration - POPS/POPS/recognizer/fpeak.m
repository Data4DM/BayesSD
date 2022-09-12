function p=fpeak(y)
% FPEAK		First peak
%
% fpeak(y) finds the first peak in the signal y
% 

d = sign(diff(y));


pos = 0;
p=length(d);
i = 1;
peak_found = 0;

while peak_found == 0 & i <= length(d)
    
if pos & d(i) <= 0
    p = i;
    peak_found = 1;
end
if d(i) > 0
    pos = 1;
end
i = i + 1;
end


    
    