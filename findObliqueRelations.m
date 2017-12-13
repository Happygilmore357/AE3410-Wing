function [m2, p2p1] = findObliqueRelations(m1, delta, gamma)
% Find key relationships across oblique shock

theta = findTheta(m1, delta, gamma); % Wave angle
p2p1 = findp2p1(m1, theta, gamma);   % p2/p1
m1n = m1*sind(theta);                % m1 normal
m2 = findm2(m1, theta, gamma);       % m2
m2n = m2*sind(theta-delta);          % m2 normal
p02p01 = findp02p01(m1n, m2n, p2p1, gamma); % p02/p01

end

