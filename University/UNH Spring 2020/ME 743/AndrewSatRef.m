close all
clear all

options                         =   optimoptions('fmincon');
options.MaxFunctionEvaluations  =	7500;
options.Display                 =	'iter';
options.OptimalityTolerance     =	0.00001;
options.Algorithm               =	'interior-point';

U0 = [0; 0]; %[11000; 11000];

fun = @CostFunction;
tic()
U = fmincon(fun,U0,[],[],[],[],[ones(2,1)],[ones(2,1)*1000000],[],options);
toc()

function Cost = CostFunction(Inputs)
    Ua = Inputs(1,1);
    Ub = Inputs(2,1);
    
    Cost_A = 1.75*Ua + 20*sqrt(Ua);
    Cost_B = 1.50*Ub + 30*sqrt(Ub);
    
    P = 10 - (1/2000)*(Ub+Ua-10000);
    
    Prof_A = P*(Ua) - (Cost_A);
    Prof_B = P*(Ub) - (Cost_B);
    
    Cost = abs(Prof_A-Prof_B) - (Prof_A+Prof_B);
end