function [theta, p2p1, m1n, m2, m2n, p02p01] = findObliqueRelations(m1, delta, gamma)

theta = findTheta(m1, delta, gamma)
p2p1 = findp2p1(m1, theta, gamma);
m1n = m1*sind(theta)
m2 = findm2(m1, theta, gamma)
m2n = m2*sind(theta-delta)
p02p01 = findp02p01(m1n, m2n, p2p1, gamma)

end

