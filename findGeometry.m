function [output] = findGeometry(config)
% Calculate wing geometry

global half_Chord;

spanLength = 38833.3/(config(1,2)*half_Chord);
chordLength = 2*half_Chord;

aspectRatio = spanLength/chordLength;
lift = config(1,2)*spanLength/half_Chord;
output = [config(1,1:3), aspectRatio, lift, chordLength, spanLength];

end

