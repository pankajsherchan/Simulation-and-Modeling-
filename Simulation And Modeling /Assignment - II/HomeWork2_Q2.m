% intial owe amount = 500
% monthly charge = 1.5%
% 50 paid each month

clear all;
C(1) = 500;

i = 1;
while C(i) > 0
    C(i+1) = 1.015 * C(i) - 50;
    i = i+1;
end

plot(C);
xlabel('Number of months')
ylabel('Amount remained to be paid')
grid on;

disp('Total number of months before the owe amount is paid off is: ')
disp(i - 1); % we need to subtract one here because matlab array starts at 1 and our actual implementation should start at 0.