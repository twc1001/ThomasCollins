%%MATLAB FILE%%
%Problem #6 
%Ogata B-10-3 


num1=[1,5];
den1=[1];
num2=[10];
den2=[1,3,2,0];
num3=[0,5,1];
den3=[1];

sys1=tf(num1,den1);
sys2=tf(num2,den2);
sys3=tf(num3,den3);

sys=series(sys1,sys2);
sys_ClosedLoop=feedback(sys,sys3)