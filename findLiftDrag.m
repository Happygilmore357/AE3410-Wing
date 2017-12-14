function [lift, drag] = findLiftDrag(pressures, alpha, beta, b)
% Find lift and drag per unit span given the pressures at each station

% Reorganize pressure array into variables
% Probably a better way to do this
tempPres = num2cell(pressures);
%[p_1, p_2, p_3, p_4] = deal(pressures(1,4))
p_1 = pressures(1);
p_2 = pressures(2);
p_3 = pressures(3);
p_4 = pressures(4);
%Calculate the length of each wing section (hypotenuse)
bcosb = b/cosd(beta);

% Calculate lift and drag by multiplying pressures by vertical and
% horizontal components of each wing section
lift = (p_4-p_1)*(bcosb*cosd(beta-alpha))+(p_3-p_2)*(bcosb*cosd(alpha+beta));
drag = (p_1-p_4)*(bcosb*sind(beta-alpha))+(p_3-p_2)*(bcosb*sind(alpha+beta));

end

