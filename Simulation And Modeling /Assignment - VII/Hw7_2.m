clear all

x = [805 825 845 865 885 905 925 945 965 985];
y = [0.710 0.763 0.907 1.336 2.169 1.598 0.916 0.672 0.615 0.606];

range = 805: 990;

cubic_result = cubicSpline(x,y, range);

plot(x,y,'o')
hold on
plot(range, cubic_result)
xlabel('X')
ylabel('Y')
title('Cubic Interpolation')
legend('data', 'Cubic Spline Result')

x_900 = cubicSpline(x, y,900);
% The y value when x is 900 = 1.8204