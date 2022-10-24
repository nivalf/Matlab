% Polyfit for polynomial regression

no_data_points = 100;
X = 6 * rand(no_data_points, 1) - 3;
y = (0.5 * X.*X) + X + 2 + rand(no_data_points, 1);
plot(X,y, '.')
model_coefficients = polyfit(X, y,2);
y1 = polyval(model_coefficients,X);
model_coefficients
hold on
plot(X,y1, '.')
xlabel('X');
ylabel('y');
legend({'Data points','Prediction'})