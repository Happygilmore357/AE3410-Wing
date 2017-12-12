function [p02p01] = findp02p01(m1, m2, p2p1, gamma)

p02p01 = (findpp0(m1, gamma)/(findpp0(m2, gamma)))*p2p1;

end

