% Examples of anonymous functions

clear;
clc;

f = @(x) sin(3*pi*x).*x.^3;
f(0.75)
fplot(f, [-5,5])
fzero(f,2.3)

g = @(x,y) (x.^4+y.^4)-4*x.^2.*y.^2;
g(0.75,0.75)
fsurf(g,[-2,2,-2,2])