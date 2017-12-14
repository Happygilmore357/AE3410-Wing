function [pressures] = findPressures(mInf, pInf, alpha, beta, gamma)
%Find all 4 pressures acting on the wing

% Calculate the turn angles for all of the shocks (1,2,3,4)
deltas = [beta-alpha, 2*beta, alpha+beta, 2*beta];

deltas = abs(deltas);

% Use oblique shock and PM Fan relations to find mach numbers and pressure
% ratios at all stations
[m_1, p2p1_1] = findObliqueRelations(mInf, deltas(1), gamma);
[m_2, p2p1_2] = findPMRelations(m_1, deltas(2), gamma);
[m_3, p2p1_3] = findObliqueRelations(mInf, deltas(3), gamma);
[m_4, p2p1_4] = findPMRelations(m_3, deltas(4), gamma);

% Calculate pressures with pressure ratios

p_1 = p2p1_1*pInf;
p_2 = p2p1_2*p_1;
p_3 = p2p1_3*pInf;
p_3;
p2p1_4;
p_4 = p2p1_4*p_3

pressures = [p_1, p_2, p_3, p_4];

end

