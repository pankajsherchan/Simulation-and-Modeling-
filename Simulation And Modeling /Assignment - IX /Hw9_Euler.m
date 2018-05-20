clear all

xvector = [2/3 -4/3];

x1(1) = 2/3;
x2(1) = -4/3;


h = 0.01;

t = 1: h: 5;
for i = 1: length(t) - 1  
    x1(i+1) = x1(i) + h * x2(i);
    x2(i+1) = x2(i) + h * (-64 * x1(i));
end

plot(t,x1)
title('Position')
xlabel('t')
ylabel('y')
title('Euler')

figure (2)

plot(t,x2)
title('Velocity')
xlabel('t') 
ylabel('dy/dt')
title('Euler')
