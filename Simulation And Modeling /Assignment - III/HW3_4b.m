clear all
format long

V = xlsread('HW3.xlsx', 'A2:A16');
P = xlsread('HW3.xlsx', 'B2:B16');

% calculated slope and y-intercept to model the data
params1 = polyfit(log(V), log(P), 1);

plot (V, P, 'o');
xlabel('V')
ylabel('P')
title('Data')


figure(1)
hold on
xx = 2: 0.1: 6; % adjusted the xx values according to V
plot(xx, 0.8 * xx.^ (8))
legend('Data', 'Model')


figure 
plot(log(V),log(P), 'o')
xlabel('log(V)')
ylabel('log(P)')
title('Transformed Data (log(V), log(P))')
grid on


