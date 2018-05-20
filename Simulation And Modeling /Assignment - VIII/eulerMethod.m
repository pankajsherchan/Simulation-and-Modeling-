function [ y ] = eulerMethod(t,y0, h, A, K )
y = zeros(1, length(t))
y(1) = y0;
for i = 1: length(t) - 1
    y(i+1) = y(i) + h * K * (A - y(i));

end
