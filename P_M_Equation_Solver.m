function PM = P_M_Equation_Solver(gamma, nu_val, M, Var)
%Values
A = 1.3604;
B = 0.0962;
C = -0.5127;
D = -0.6722;
E = -0.3278;
nu_inf = ((pi/2)*(sqrt(6)-1));
y = (nu_val/nu_inf)^(2/3);

switch Var
    case 'nu'
nu = ((sqrt((gamma+1)/(gamma-1)))*(atand(sqrt((((gamma-1)/(gamma+1))*((M^2)-1))))))-(atand(sqrt((M^2)-1)));
        
PM = nu;

    case 'mach'
M = (1+(A*y)+(B*(y^2))+(C*(y^3)))/(1+(D*y)+(E*y^2));

PM = M;

end
end