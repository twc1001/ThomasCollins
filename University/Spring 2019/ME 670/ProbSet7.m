%%MATLAB FILE%%
%Problem #5 
%Ogata B-10-4 

num1=[0.5,1];
den1=[1];
num2=[10];
den2=[1,2,0];

sys1=tf(num1,den1);
sys2=tf(num2,den2);

sys_combine=series(sys1,sys2);
sys=feedback(sys_combine,[1])