clear all; close all;

I1 = 100;
I2 = 100;
I3 = 1000;

%K = zeros(3,3);
K = [ 0 , 0 , 100 ; 0 , 0 , 0 ; 0 , 0 , 100 ];
%K = [ 2.9166e-06 , 6.0834e-05 , 1.0731 ; 4.6644e-06 , 8.1814e-06 , 1.0637 ; 0.3948 , 0.3948 , 0.3948 ];

n = zeros(1,540000);
tnoise = linspace(0,5400,540001)';
% noise1 = awgn(n,10,'measured');
% noise2 = awgn(n,10,'measured');
% noise3 = awgn(n,10,'measured');

SimData = sim('Satellite_Control.slx');

figure(figure('name','Effort'))
plot(tnoise(:,1), SimData.Effort(:,1))
%axis([0 3000 0 5000])
title('Plot of Effort vs Time')
xlabel('Time [seconds]')
ylabel('Applied Effort [Nm-s]')
grid on

figure(figure('name','Moment Subplots'))
subplot(3,1,1);
plot(SimData.M1(:,1), SimData.M1(:,2))
%axis([0 3000 -20000 20000])
title('Plot of M1 vs Time')
xlabel('Time [seconds]')
ylabel('Applied Moment [Nm]')
grid on

subplot(3,1,2); 
plot(SimData.M2(:,1), SimData.M2(:,2))
%axis([0 3000 -20000 20000])
title('Plot of M2 vs Time')
xlabel('Time [seconds]')
ylabel('Applied Moment [Nm]')
grid on

subplot(3,1,3); 
plot(SimData.M3(:,1), SimData.M3(:,2))
%axis([0 3000 -5 0])
title('Plot of M3 vs Time')
xlabel('Time [seconds]')
ylabel('Applied Moment [Nm]')
grid on

figure(figure('name','Omega Subplots'))
subplot(3,1,1);
plot(SimData.W1(:,1), SimData.W1(:,2))
%axis([0 3000 -5 5])
title('Plot of \omega1 vs Time')
xlabel('Time [seconds]')
ylabel('Angular Velocity [rad/s]')
grid on

subplot(3,1,2); 
plot(SimData.W2(:,1), SimData.W2(:,2))
%axis([0 3000 -5 5])


title('Plot of \omega2 vs Time')
xlabel('Time [seconds]')
ylabel('Angular Velocity [rad/s]')
grid on


subplot(3,1,3); 
plot(SimData.W3(:,1), SimData.W3(:,2))
%axis([0 3000 0 5])
title('Plot of \omega3 vs Time')
xlabel('Time [seconds]')
ylabel('Angular Velocity [rad/s]')
grid on
% 
% figure()
% plot(tnoise,noise)

