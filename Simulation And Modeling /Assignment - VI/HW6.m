clear all
data = [1790 3929000;
1800 5308000;
1810 7240000;
1820 9638000;
1830 12866000;
1840 17069000;
1850 23192000;
1860 31443000;
1870 38558000;
1880 50156000;
1890 62948000;
1900 75995000;
1910 91972000;
1920 105711000;
1930 122755000;
1940 131669000;
1950 150697000;
1960 179323000;
1970 203212000;
1980 226505000;
1990 248709873;
2000 281416000];

x=data(:,1);
y=data(:,2);
plot(x,y, 'o')
                   

hold on
n = length(x);
params = polyfit(x, y, n-1);

syms xx
y_lagrangePoly = 0;

for i = 1: n
    y_lagrangePoly = y_lagrangePoly + params(i) * xx ^ (n-i);
end

  fplot(y_lagrangePoly, [x(1) x(end)]);
hold on 


[Q] = dividedDifference(x, y);

%the absolute value of 6th divided difference is very small. so trying to
%fit the model upto 5 degree
 params2 = polyfit(x, y, 5);
y_smooth = 0;

for i = 1: 6
    y_smooth = y_smooth + params2(i) * xx ^ (6-i);
end

fplot(y_smooth, [x(1) x(end)], '--');

legend('data', 'Lagrange Interpolation Polynomial', 'Smoothed Model');

%predictions
predict1 = double(subs(y_lagrangePoly , 1921.25)) % 1.3295e+08
predict2  = double(subs(y_smooth , 1912.25)) %  9.2190e+07

predict3 = double(subs(y_lagrangePoly , 2020)) %-7.1669e+09
predict4  = double(subs(y_smooth , 2020)) % 3.5420e+08

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%PREDICTION OF March of 1921: 
 %   9.2190e+07
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%WHICH ONE IS BETTER ?
%The smooth one is better for following two reasons:
%a) The lagrangePoly is overfitted. We have passed the graph from each and every data points existed.
%b) if we compare the predict3 and predict4 value, lagrangePloy outputs a negative number which is totally out of box for a increasing
 %   ploynomial (seen in the graph)
    
