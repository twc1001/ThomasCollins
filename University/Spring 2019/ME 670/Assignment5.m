clear all; close all; 
%% Problem #1 %Undamped System
%Ogata B-3-13

%System
J=2;  %Inertia of spinning disk
k=2;  %Spring constant 
b=0;  %Damper constant [Changes per system dynamic] 

K=1; 
w_n=1;
squiggle=0; %Squiggle [Changes per systemd dynamic]

num=1; %Second order transfer function numberator 
den=[1/w_n,2*squiggle/w_n,1]; %Second order transfer function denomenator 

sys_tf=tf(num,den);
sys_ss=ss(sys_tf);

figure
hold on
timespan=0:0.1:30;
output=ones(1,301);
lsim(sys_ss,output,timespan,[-1,0]);
grid;
title('Undamped System')
xlabel('Time(s)');
ylabel('Amplitude');
legend('b=0, J=2, k=2','location','southeast')
hold off 

%% Problem #1 %Critically Damped System

%System
J=2;  %Inertia of spinning disk
k=2;  %Spring constant 
b=4;  %Damper constant [Changes per system dynamic] 

K=1;
w_n=1;
squiggle=1; %Squiggle [Changes per systemd dynamic]

num=1; %Second order transfer function numberator 
den=[1/w_n,2*squiggle/w_n,1]; %Second order transfer function denomenator 

sys_tf=tf(num,den);
sys_ss=ss(sys_tf);

figure
hold on
timespan=0:0.1:30;
output=ones(1,301);
lsim(sys_ss,output,timespan,[-1,0]);
grid;
title('Critically Damped System')
xlabel('Time(s)');
ylabel('Amplitude');
ylim([-0.4,1.2])
legend('b=4, J=2, k=2','location','southeast')
hold off 

%% Problem #1 %Overdamped System

%System
J=2;  %Inertia of spinning disk
k=2;  %Spring constant 
b=8;  %Damper constant [Changes per system dynamic] 

K=1;
w_n=1;
squiggle=2; %Squiggle [Changes per systemd dynamic]

num=1; %Second order transfer function numberator 
den=[1/w_n,2*squiggle/w_n,1]; %Second order transfer function denomenator 

sys_tf=tf(num,den);
sys_ss=ss(sys_tf);

figure
hold on
timespan=0:0.1:30;
output=ones(1,301);
lsim(sys_ss,output,timespan,[-1,0]);
grid;
title('Overdamped System')
xlabel('Time(s)');
ylabel('Amplitude');
ylim([-0.2,1.2])
legend('b=8, J=2, k=2','location','southeast')
hold off 

%% Problem #1 %underdamped System

%System
J=2;  %Inertia of spinning disk
k=2;  %Spring constant 
b=2;  %Damper constant [Changes per system dynamic] 

K=1;
w_n=1;
squiggle=.5; %Squiggle [Changes per systemd dynamic]

num=1; %Second order transfer function numberator 
den=[1/w_n,2*squiggle/w_n,1]; %Second order transfer function denomenator 

sys_tf=tf(num,den);
sys_ss=ss(sys_tf);

figure
hold on
timespan=0:0.1:30;
output=ones(1,301);
lsim(sys_ss,output,timespan,[-1,0]);
grid;
title('Underdamped System')
xlabel('Time(s)');
ylabel('Amplitude');
legend('b=2, J=2, k=2','location','southeast')
hold off 
