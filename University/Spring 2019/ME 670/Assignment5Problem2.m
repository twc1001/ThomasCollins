clear all; close all;
%Undamped 
J=2;
k=2;
b=0;

% %Critically Damped 
% J=2;
% k=2;
% b=4;
% 
% %Overdamped 
% J=2;
% k=2;
% b=8;
% 
% %Underdamped 
% J=2;
% k=2;
% b=8;

%Run simulation 
sim('Problem2')

%Figure 
figure
plot(tout,theta)
grid on
xlabel('Time(Sec)')
ylabel('Position')

