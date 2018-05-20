[Num, Txt, Raw]= xlsread('HW4');
V = Num (:,1);
P = Num (:,2);

plot(V, P, 'o')
xlabel('V')
ylabel('P')

x0 =[1 1];
result = lsqcurvefit(@(x0, V) LogarithmicModel(x0, V) , x0, log(V), log(P)) %parameter
%result(1) -> slope
%result(2) -> yintercept


figure(1)
hold on
xx = 2: 0.1: 6; % adjusted the xx values according to V
plot(xx, 2.8306 * xx.^ (7.7268))
legend('Data', 'Model')


figure 
plot(log(V),log(P), 'o')
xlabel('log(V)')
ylabel('log(P)')
title('Transformed Data (log(V), log(P))')
grid on




