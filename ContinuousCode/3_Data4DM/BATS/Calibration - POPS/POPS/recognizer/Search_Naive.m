function time = Search_Naive(precision);

%%Initialization
x_low = 1;
x_high = 21;
y_low = 1;
y_high = 21;

x_inc = precision;
y_inc = precision;
obj_best = 10000;

tic
x_current = x_low;
while x_current < x_high + precision
    y_current = y_low;
    while y_current < y_high + precision
        % disp([x_current, y_current]);
        obj_current = Model_01(x_current, y_current);
        if obj_current < obj_best
            obj_best = obj_current;
            x_best = x_current;
            y_best = y_current;
        end
        y_current = y_current + y_inc;
    end
    
    x_current = x_current + x_inc;
end

disp([x_best, y_best, obj_best]);
time = toc;

%[X , Y, OBJ, T] = [x_best, y_best, obj_best, time];
