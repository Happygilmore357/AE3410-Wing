function theta = findTheta(M, delta, gamma)
% Find wave angle for an oblique shock
% No idea what it does, but it works

n = 0;  % Weak wave, make 1 for strong wave
mu = asind(1/M);                 
c = tand(mu)^2;
a = ((gamma-1)/2+(gamma+1)*c/2)*tand(delta);
b = ((gamma+1)/2+(gamma+3)*c/2)*tand(delta);
d = sqrt(4*(1-3*a*b)^3/((27*a^2*c+9*a*b-2)^2)-1);
theta = atand((b+9*a*c)/(2*(1-3*a*b))-(d*(27*a^2*c+9*a*b-2))/(6*a*(1-3*a*b))*tand(n*pi/3+1/3*atand(1/d)));
end