clear all

lowerEnd = 0; upperEnd = 120;

%defining the constants here
S = 1000;
E = 3.0 * 10^7;
I = 625;
q = 100; 
L = 120;


y0 = 0; yn = 0;
n = 20;
h = (upperEnd - lowerEnd) / n;
P = 0;
Q = - S / (E*I);
x = lowerEnd:h:upperEnd;
f = (q/(2*E*I)) * (x.^2 - x * L);

%initialize
A = zeros(n-1, n-1);
b = zeros(n-1, 1);
y = zeros(n-1, 1);

b(1) = h^2 * f(2) - (1- h/2 * P) * y0;
b(n - 1) = h^2 * f(n) - (1+ h/2 * P) * yn;

for i = 2: n-2
    b(i) = h^2 * f(i+1); 
end

for i = 1: n-1
    A(i, i) = - 2 + h^2 * Q;
end

for i = 1: n-2
    A(i, i+1) = 1 + h/2 * P; 
end

for i = 2:n-1
   A(i, i-1) =  1 - h/2 * P; 
end

y = inv(A) * b;

% add BCs
soln = zeros(n+1, 1);
soln(1) = y0;
soln(end) = yn;

soln(2:n) = y;

plot(x, soln, 'o')

hold on
plot(x, soln);
xlabel('x')
ylabel('y(x) Deflection of the beam')
legend('point value', 'line')
xticks([x])


