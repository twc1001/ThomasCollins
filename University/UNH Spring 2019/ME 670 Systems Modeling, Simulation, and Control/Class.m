%% In class example 

%Mx''+Bx'+Kx = f(t)
%X(s)/F(s) = 1 / (Ms^2 +Bs +K)
%x'=[0 1 ; -K/M -B/M ] + [ 0 ; 1/M]u
%y = [0 1; 0 1]x
clear all; close all; 
M=1;
B=1;
K=10;
num=[1];
den=[M,B,K];

G_1=tf(num,den);
step(G_1);


num2=[1,0];
den2=den;

G_2=tf(num2,den2)
step(G_2)
grid

A=[0,1;-K/M,-B/M];
BB=[0;1/M];
C=[1,0;0,1];
D=[0,0]';
sys=ss(A,BB,C,D)

ss2tf %Given state space gives you transferfunction
tf2ss %Once transferfunction gives you state space