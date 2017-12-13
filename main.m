clc; clear;
mInf = 2.3;  % Maccchaaa Number
pInf = 4.7;  % Freestream static pressure
gamma = 1.4; % Gamma
alpha = -30;  % Angle of attack
beta = 5;    % Geometric parameter of the diamond airfoil
b = 10;      % 1/2 Chord length

%Calculate the pressures at each station

pressures = findPressures(mInf, pInf, alpha, beta, gamma)

%Find lift and drag per unit span

[lift, drag] = findLiftDrag(pressures, alpha, beta, b)

ld = lift/drag
