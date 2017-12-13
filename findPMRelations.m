function [m2, p2p1] = findPMRelations(m1, delta, gamma)
%Find outgoing mach number and pressure ratio for a PM Fan

[m1, nu1, mu1] = flowprandtlmeyer(gamma, m1, 'mach');
[m2, nu2, mu2] = flowprandtlmeyer(gamma, nu1 + delta , 'nu');

% Cancel p/p0 ratios to get p2/p1
p2p1 = findpp0(m2, gamma)/findpp0(m1, gamma);

end

