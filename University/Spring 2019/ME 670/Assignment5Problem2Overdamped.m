clear all; close all;
%Overdamped 
M=2;
J=2;
k=2;
b=8;

tfinal=15;
dt=.1;
timespan=linspace(1,tfinal,tfinal/dt);


%Run simulation 
sim('Problem2')

%Figure 
figure
plot(timespan,x)
grid on
title('Overdamped System')
xlabel('Time(Sec)')
ylabel('Position')
legend('b=8, J=2, k=2','location','southeast')