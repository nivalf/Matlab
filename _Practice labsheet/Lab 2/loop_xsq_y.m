% Program to demonstrate for loop
% x is assigned an array of 1 - 10
% y is the squared array of x
% Plot x,y

x = 1:10;
y = zeros(10); % preallocating for speed

for k = x
    y(k) = k^2;
end

plot(x,y);
title('Plot of squares of integers 1 to 10')
xlabel('x')
ylabel('y')


% Solution without using loop
u = 1:10;
v = u.^2;
%plot(u,v);