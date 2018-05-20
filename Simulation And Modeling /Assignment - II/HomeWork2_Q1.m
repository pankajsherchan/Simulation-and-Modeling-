clear all;

T(1) = 200;


for i = 1: 5
   T(i+1) =  150 - 0.5 * T(i);
end

% Including T(1) which is actual T(0) , I have printed 6 terms here
disp(T);