function ys = smoothM (y,N)
m = length(y);
for i=1:m
    if i==1 | i==m
        ys(i) = y(i);
    elseif (i - N) < 0 & (i + N) > m
        sum = 0;
        for j=1:m
            sum = sum + y(j);
        end
        ys(i) = sum / m;
    elseif (i - N) < 0 & (i + N) < m
        sum1 = 0;
        for j=1:i
            sum1 = sum1 + y(j);
        end
        sum2 = 0;
        for k=(i + 1):(i + N)
            sum2 = sum2 + y (k);
        end
        ys(i) = (sum1 / (i) + sum2 / N) / 2;
    elseif (i - N) > 0 & (i + N) > m
        sum1 = 0;
        for j=(i + 1):m
            sum1 = sum1 + y(j);
        end
        sum2 = 0;
        for k=(i-N+1):i
            sum2 = sum2 + y(k);
        end
        ys(i) = (sum1 / (m - i) + sum2 / N) / 2;
    else
        sum = 0;
        for j=(i - N + 1):(i + N)
            sum = sum + y(j);
        end
        ys(i) = sum / (2 * N);
    end
end
        