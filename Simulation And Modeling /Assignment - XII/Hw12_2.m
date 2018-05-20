clear all

n = 13;
d(1) = 15;

for i = 2:n
    d(i) = d(i-1) + 10;
end

occurences = [11 35 42 61 108 193 240 207 150 85 44 21 3];
p = occurences / sum(occurences);

%fix the ticks
dnew = d + 5;
xticks = d;

bar(dnew,p, 1)
set(gca, 'xTick', [d 150])
xlabel('Times between arrivals')
ylabel('Number of Occurences')

cum_p = cumsum(p); 
figure 
bar(dnew, cum_p, 1) 
xlabel('Times between arrivals')
ylabel('Number of Occurences') 
set(gca, 'xTick', [d 150])

figure 
plot(dnew, cum_p , 'o')
xlabel('Times between arrivals')
ylabel('Number of Occurences') 
set(gca, 'xTick', [d 150])

%S = cubicSpline(dnew,cum_p)
S = spline(dnew, cum_p);
ppval(S, 1200);

inverseS = spline(cum_p, dnew);

tableXVal = zeros(1, 100);
tableArrivalVal = zeros(1, 100);
for i = 1: 100
    between_a = rand;
    tableXVal(i) = between_a;
    
    between_b = ppval(inverseS, between_a);    
    tableArrivalVal(i) = between_b;

    
    between(i) = between_a + (between_b - between_a) * rand;  
end


T = table(tableXVal', tableArrivalVal');
[ harTime, maxHar, waitTime,maxWait,idleTime ] = modelFor2(n, between)








