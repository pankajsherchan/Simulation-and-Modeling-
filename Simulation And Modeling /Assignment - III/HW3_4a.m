clear all

format long
V = xlsread('HW3.xlsx', 'A2:A16');
P = xlsread('HW3.xlsx', 'B2:B16');

plot (V, P, 'o');
xlabel('V')
ylabel('P')
title('Data')