clear all;
% 3a 
F(1) = 500;

for i = 1: 30
    F(i+1) = (2/3) * F(i)
end

disp('The concentration of Cipro in the patient blood at the end of day for first thirty days are: ');
disp(F(2: end) )

plot(F)
xlabel('Number of Days')
ylabel('Concentration of Cipro ')

grid on;
hold on;

% 3b 

Q(1) = 500;

for i = 1: 30
    Q(i+1) = (2/3) * Q(i) + 500
end

disp('The concentration of Cipro in the patient blood at the end of day for first thirty days are: ');
disp(Q(2: end) )

plot(Q)
legend('Cipro Concentration with only a single dose', 'Cipro Concentration with additional dose every day')



