clear all

x = 0:2*pi;
y = cos(2*x);

intervals_toBeTested = [2, 1, 0.99999, 0.5, 0.1 ]; % some interval value to be tested
approx_error = zeros(1, length(intervals_toBeTested));

i = 1;
for interval = intervals_toBeTested
    nodal_points = [0: interval: 2*pi];
    pp = spline(x,y);
    yy = ppval(pp, nodal_points); %predicted value

    %actual value 
    actual_value = cos(2 * nodal_points);

    approx_error(i) = sum(abs(yy - actual_value));
    i = i+1;
end

disp(approx_error);
%error is less than 10^(-4) when the each interval value differ by 0.99999
%therefore total number of nodal points used = 7
total_nodalPoints = length([0:0.99999: 2*pi])

%Thus,there are 6 intervals and 7 data points that results the
%approximation to 10^(-4)

