clear all 

x = [5*10^-3 10*10^-3 20 *10^-3 30*10^-3 40*10^-3 50*10^-3 60*10^-3 70*10^-3 80*10^-3 90*10^-3 100*10^-3];
y = [0 19*10^-5 57*10^-5 94*10^-5 134*10^-5 173*10^-5 216*10^-5 256*10^-5 297*10^-5 343*10^-5 390*10^-5];
plot(x, y, 'o')


x0 =[1 1];

%gets the required function from model file
result = lsqcurvefit(@(x0, x) LinearModel(x0, x) , x0, x, y) %parameter
plot(x, y, 'o') %plot the data
hold on
syms xx 

%slope -> result(1)
% yintercept -> result(2)
fplot(result(1)*xx + result(2))

xlabel('x')
ylabel('y')
legend('data', 'lsqcurvefit for y = ax + b')

xlim ([0 0.15])
ylim([0 0.005])

fittedValues = result(1)*x + result(2);
residuals = y - fittedValues;
figure
plot(residuals, 'o')
title('Residuals')
%Compute the SSR
SSR1 = sum((y - fittedValues).^2)
%Compute the max absolute value residual
Abs_dev = max(abs(residuals))

