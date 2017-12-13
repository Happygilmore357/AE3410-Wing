function [pp0] = findpp0(m, gamma)
% Find p/p0 in isentropic flow

pp0 = (1+(gamma-1)/2*m^2)^(-gamma/(gamma-1));

end

