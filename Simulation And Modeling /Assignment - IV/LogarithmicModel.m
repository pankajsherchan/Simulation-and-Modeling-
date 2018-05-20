function [f]=LogarithmicModel(x0,x)
%x0 must be an array of size 2 corresponding to a and b
f = exp(log(x0(1))+ x0(2)*log(x)); % y = log(a)+ b * log(x) , b-> slope and log(a) -> y intercept
end  