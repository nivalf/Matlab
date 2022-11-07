function [vol,mass] = SphereVM(radius, density)
%SphereVM Computes the volume and mass of a sphere
% input arguments: radius, density
% return value: vol, mass

vol = SphereVol(radius);
mass = density * vol;

end