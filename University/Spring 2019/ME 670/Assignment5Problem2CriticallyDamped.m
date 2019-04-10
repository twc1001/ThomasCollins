clear all; close all;
%Critically Damped 
M=2;
J=2;
k=2;
b=4;

tfinal=15;
dt=.1;
timespan=linspace(1,tfinal,tfinal/dt);


%Run simulation 
sim('Problem2')

%Figure 
figure
plot(timespan,x)
grid on
title('Critically Damped System')
xlabel('Time(Sec)')
ylabel('Position')
legend('b=4, J=2, k=2','location','southeast')