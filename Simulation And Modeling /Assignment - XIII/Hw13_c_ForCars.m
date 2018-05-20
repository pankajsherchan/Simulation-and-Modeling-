clear all


A = [40 60; 50 50];
b = [2400; 2500];
f = [3000; 2000];
lb = [0 0];


x = linprog(-f,A,b,[],[],lb,[])

% finding the lower and uppwer bound for number of cars
%upper bound
for c2 = 3000:5:10000
    f = [c2;2000];
    
    x_uper = linprog(-f,A,b,[],[],lb,[]);
    
    if x_uper ~= x      
        disp(c2);
        break  
    end 
end 

%lower bound
for c1 = 3000: -1: 1000
    f = [c1; 2000];
    
    x_lower = linprog(-f,A,b,[],[],lb,[]);
    
    if x_lower ~= x  
        disp(c1);
        return 
    end 
end 

disp("There is no upper bound coefficient for cars. It will go whatever value you go up to, which in our case is" + " " +  c2) 
disp("The min coefficient for cars" + " " + c1)

