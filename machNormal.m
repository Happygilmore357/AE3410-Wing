function [m2] = machNormal(m1,gamma)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

m2 = ((gamma-1)*(m1^2)-2)/(2*gamma*(m1^2)-(gamma-1));

end

