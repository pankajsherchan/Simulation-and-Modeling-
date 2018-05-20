clear all; 
format long
n = 100000; % number of experiments

a = 0; 
b = 2;

M = 6; % the maximum value 
A = (b-a) * M; % area of the rectangle

syms x
lowerGraph = x^2;
upperGraph = 6-x;
counter = 0;
for i = 1:n
    x = a+(b-a)*rand(1); %generates the random number between a and b 
    y = 0+(M-0)*rand(1); % generates the random number between 0 and 9
    
    if ((y <= 6-x) && (y >= x^2))
        counter = counter + 1;
    end
    
end

area = A * counter / n

