clear all

format long
V = xlsread('HW3.xlsx', 'A2:A16');
P = xlsread('HW3.xlsx', 'B2:B16');

% calculated slope and y-intercept to model the data
slope = V(:) \ P(:);

plot (V, P, 'o');
xlabel('V')
ylabel('P')
title('Data')

figure(1)
hold on
xx = 0: 0.1: 6;
plot(xx, 85185.1 * log(xx))
legend('Data', 'Model')

figure
% should show linear relationship
plot(log(V), P, 'o');
xlabel('log(V)')
ylabel('P')
title('Transformed Data (P vs lnV)')
grid on

