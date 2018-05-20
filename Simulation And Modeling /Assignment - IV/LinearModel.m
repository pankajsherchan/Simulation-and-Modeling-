function [f]=LinearModel(x0,x)
%x0 must be an array of size 2 corresponding to slope and intercept
f = x0(1)*x + x0(2) % y = ax+b
end  