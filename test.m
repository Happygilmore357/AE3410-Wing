clc; clear;
m1 = 3;
gamma = 1.4;
delta = 30;
alpha = 11;
beta = 15;
b = 10
pressures = [10, 20, 30, 40];

[lift, drag] = findLiftDrag(pressures, alpha, beta, b)

ld = lift/drag

%findObliqueRelations(m1, delta, gamma);
%findPMRelations(m1, delta, gamma);