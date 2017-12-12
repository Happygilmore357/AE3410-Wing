function [pp0] = findpp0(m, gamma)

pp0 = (1+(gamma-1)/2*m^2)^(-gamma/(gamma-1))

end

