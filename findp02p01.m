function [p02p01] = findp02p01(m1, m2, p2p1, gamma)
% Find p02/p01 across a normal shock

% p02/p01 = (p1/p01)/(p2/p02)*(p2/p1)
p02p01 = (findpp0(m1, gamma)/(findpp0(m2, gamma)))*p2p1;

end

