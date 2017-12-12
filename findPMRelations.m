function [m2, p2p1] = findPMRelations(m1, delta, gamma)

[m1, nu1, mu1] = flowprandtlmeyer(1.4, m1, 'mach')
[m2, nu2, mu2] = flowprandtlmeyer(1.4, nu1 + delta , 'nu')
p2p1 = findpp0(m2, gamma)/findpp0(m1, gamma)

end

