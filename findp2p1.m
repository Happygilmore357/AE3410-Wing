function p2p1 = findp2p1(m1, theta, gamma)
% Find p2/p1 across an oblique shock

p2p1 = ((2*gamma*(m1^2)*((sind(theta))^2)) - gamma + 1)/(gamma+1);

end

