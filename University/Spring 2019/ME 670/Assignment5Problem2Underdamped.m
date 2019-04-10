clear all; close all;
%Underdamped 
M=2;
J=2;
k=2;
b=2;

tfinal=15;
dt=.1;
timespan=linspace(1,tfinal,tfinal/dt);


%Run simulation 
sim('Problem2')

%Figure 
figure
plot(timespan,x)
grid on
title('Underdamped System')
xlabel('Time(Sec)')
ylabel('Position')
legend('b=8, J=2, k=2','location','southeast')