%P_M_Equation_Solver Script
clc; clear variables;
gamma = 1.4;
nu_val = 0;
M = 1000000;
%Put nu to solve for Nu and mach to solve for Mach Numnber
Var = 'nu';
PM = P_M_Equation_Solver(gamma, nu_val, M, Var);
%disp(PM)

%{
PM = zeros(2500,2);
n = 1;
for M = 1:0.02:50
    pm = P_M_Equation_Solver(gamma, nu_val, M,Var);
    %disp(pm)
    
PM(n,2) = pm;
PM(n,1) = M;
n = n+1;
end
%}