%%
clear all; close all; clc;

run('Satellite_GainOptimize.m')
%%
close all;
load('PID_SatelliteV2.mat');
% sim('Satellite_Control.slx')

figure(1)
subplot(3,1,1)
plot(ans.w1(:,1), ans.w1(:,2))
ylabel('\omega_{1} [rad/s]')
title('Satellite Body Rates'); grid on;

subplot(3,1,2)
plot(ans.w2(:,1), ans.w2(:,2))
ylabel('\omega_{2} [rad/s]'); grid on;

subplot(3,1,3)
plot(ans.w3(:,1), ans.w3(:,2))
ylabel('\omega_{3} [rad/s]'); xlabel('Time [s]'); grid on;

figure(2)
plot(ans.TotalE(:,1), ans.TotalE(:,2))
grid on; title('Total Effort vs. Time')
xlabel('Time [s]'); ylabel('Effort [Nm]');

figure(3)
subplot(3,1,1)
plot(ans.M1(:,1), ans.M1(:,2))
ylabel('M_{x} [Nm]')
title('Satellite Body Rates'); grid on;

subplot(3,1,2)
plot(ans.M2(:,1), ans.M2(:,2))
ylabel('M_{y} [Nm]'); grid on;

subplot(3,1,3)
plot(ans.M3(:,1), ans.M3(:,2))
ylabel('M_{z} [Nm]'); xlabel('Time [s]'); grid on;

totalEffort = abs(ans.Effort(end))
totalTime = max(ans.tout)

%% 
% sim('GuessAndCheck.slx');

% totalEffort = abs(ans.Effort(end))
% totalTime = max(ans.tout)
% tE = abs(ans.M1_e(end)) + abs(ans.M2_e(end))...+
%         + abs(ans.M3_e(end))

