clear all; close all; 
M=1;
B=1;
K=10;

num=[1];
den=[M,B,K];

G_1=tf(num,den);
step(G_1);