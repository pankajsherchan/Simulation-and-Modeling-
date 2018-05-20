clear all
x0 = [2/3 -4/3];
tspan = [0 5];

figure 
[t x] = ode45('problem', tspan, x0(:));
plot(t,x(:,1))
title('Position')
xlabel('t')
ylabel('y')
title('RK4')

figure (2)

plot(t,x(:,2))
title('Velocity')
xlabel('t') 
ylabel('dy/dt')
title('RK4')



