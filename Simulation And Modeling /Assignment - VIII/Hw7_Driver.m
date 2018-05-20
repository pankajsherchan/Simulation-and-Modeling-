clear all
syms tt 

t0 = 0; % initial time
y0 = 98.6;  % initial temperature 

A = 68;
K = 0.13353;

h = 0.01;
t = t0:h:10;
y = eulerMethod(t,y0, h, A, K);

figure(1) 
plot(t, y);
xlabel('Time')
ylabel('Temperature')
title('Euler')

grid on;

figure (2)
y(1) = 98.6;
tspan = 0:10;
f = @(t,y) (0.13353 * (68- y));

[t1, y1] = ode45( f, tspan, y(1));

plot(t1, y1)
xlabel('Time')
ylabel('Temperature')
title('RK4 Method')

grid on;



%1)b) 
% From both the graph of Euler and RK4, it is clear that the temperature drops 
% to 80 after 7 hours (time units).
% Therefore the patient died at 3:23 pm

