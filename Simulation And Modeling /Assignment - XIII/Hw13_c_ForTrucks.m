clear all


A = [40 60; 50 50];
b = [2400; 2500];
f = [3000; 2000];
lb = [0 0];

x = linprog(-f,A,b,[],[],lb,[])

% finding the lower and uppwer bound for number of trucks
% upper bound
for c2 = 2000:5:4000
    f = [3000;c2];
    
    x_uper = linprog(-f,A,b,[],[],lb,[]);
    
    if x_uper ~= x       
        break 
    end 
end 

%lower bound
for c1 = 2000: -5: 0
    f = [3000;c1];
    
    x_lower = linprog(-f,A,b,[],[],lb,[]);
    
    if x_lower ~= x
        disp('Equal')
        disp(c1);
        break 
    end 
end 

disp("The max coefficient for trucks" + " " + c2)
disp("There is no lower bound coefficient for trucks. It will go whatever value you go up to, which in our case is" + " " +  c1) 


