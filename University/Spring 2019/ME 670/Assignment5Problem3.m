clear all; close all; 
%% Problem #3 Underdamped System

%System
J=2;  %Inertia of spinning disk
k=2;  %Spring constant 
b=2;  %Damper constant [Changes per system dynamic] 

%Matrix 
A=[0,1;-k/J,-b/J];
B=[0;k/J];
C=eye(2);
D=zeros(2,1);
x=[-1,0];
u=1;
x_dot=(A.*x)+(B.*u);

%Time
Start_Time=0;
Final_Time=30;
dt=0.1;
dx=Final_Time/dt;

for t=1:dx
    x=x_dot*dt+x;
    x_dot=(A*x)+(B*u);
    y(t)=x(1);
end 

time=linspace(0,dx*dt,dx);

figure
hold on
plot(time,y)
grid on
xlabel('Time(Sec)')
ylabel('Position')
title('Underdamped System')
legend('b=2, J=2, k=2','location','southeast')
hold off 