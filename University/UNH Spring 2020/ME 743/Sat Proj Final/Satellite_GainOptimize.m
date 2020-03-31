close all
clear all
clc

options                         =   optimoptions('fmincon');
options.MaxFunctionEvaluations  =	7500;
options.Display                 =	'iter';
options.OptimalityTolerance     =	1e-4;
options.Algorithm               =	'interior-point';

% Initial Guess 
I1 = 100; 
I2 = 100; 
I3 = 1000;

K = ones(3,3);
U0 = [1 1 1; 0 0 0; .1 .1 .1]; %ones(3,3); %[11000; 11000];

fun = @CostFunction;
tic()

U = fmincon(fun,U0,[],[],[],[],[zeros(3,3)],[ones(3,3)*250],[],options);
toc()

sim('Satellite_Control.slx')
save('PID_SatelliteV2');

function [Cost] = CostFunction(inputs)

    assignin('base', 'K', inputs)
    
    init_cond = [4, -3, 5];
    
    I1 = 100;
    I2 = 100;
    I3 = 1000;
    
    Effort = sim('Satellite_Control.slx')
    
    Cost = (Effort.M1_e(end)) + (Effort.M2_e(end))...+
        + (Effort.M3_e(end)) + max(Effort.tout);
end


