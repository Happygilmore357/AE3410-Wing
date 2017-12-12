function [lift, drag] = findLiftDrag(pressures, alpha, beta, b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
tempPres = num2cell(pressures);
[p1, p2, p3, p4] = deal(tempPres{:});
bcosb = b/cosd(beta);

lift = (p4-p1)*(bcosb*cosd(beta-alpha))+(p3-p2)*(bcosb*cosd(alpha+beta));
drag = (p1-p4)*(bcosb*sind(beta-alpha))+(p3-p2)*(bcosb*sind(alpha+beta));

end
