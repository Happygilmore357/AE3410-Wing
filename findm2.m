
function [m2]=findm2(m1, theta, gamma)

m2=(((1+((gamma-1)/2)*m1^2)/(gamma*(m1^2)*(sind(theta)^2)-((gamma-1)/2)))+(((m1^2)*(cosd(theta)^2))/(1+((gamma-1)/2)*(m1^2)*(sind(theta)^2))))^(1/2);
end