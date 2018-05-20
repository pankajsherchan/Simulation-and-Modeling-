clear all; 
format long
n = 100; % number of steps
N = 50;  % number of times the random walk is simulated

x(1) = 0;
y(1) = 0;

a = 0; 
b = 2 * pi;

% ploting one of the simulation
for i = 1:n    
    theta = a+(b-a)*rand(1); %random theta between 0 & 2 pi    
    x(i+1) = x(i) + cos(theta);
    y(i+1) = y(i) + sin(theta);    
end

plot(x,y, 'o')
xlabel('Distance in X axis')
ylabel('Distance in Y axis')
title('Random Walk Simulation')

% calculating the average distance walked
finalDistanceArray = zeros(1, N);

for j = 1: N  
  for i = 1:n    
    theta = a+(b-a)*rand(1); %random theta between 0 & 2 pi
    
    x(i+1) = x(i) + cos(theta);
    y(i+1) = y(i) + sin(theta);    
  end  
  finalDistanceArray(j) = distance(x(1), x(end), y(1), y(end)) ;  
end

AverageDistanceWalk = sum(finalDistanceArray) / N

