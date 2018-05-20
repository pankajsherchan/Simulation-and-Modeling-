function [f]=ExponentialModel(x0,x)
%x0 must be an array of size 2 corresponding to a and b
f = x0(1)*exp(x0(2)*x); % y = ae^(bx)
end  