function [ Q ] = dividedDifference( x, y )

n = length(x);
Q = zeros(n, n); % Initialize Q
Q(:, 1) = y; % all rows, first column of Q equals y

for i = 2:n
    for   j = 2:i
     Q(i, j) = ( Q(i, j-1)- Q(i-1, j-1))/ (x(i) - (x(i-j+1)));
    end
end

end