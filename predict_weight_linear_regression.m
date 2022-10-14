% Sample code for linear regression
% Predict patient weight from height

% Load patients data from matlab sample data sets
load patients;

% Height and Weight items have 100 data samples
% Split the data in 80:20 (train:validate)
x = Height(1:80);
y = Weight(1:80);

% Eqn: y = 𝜃̂0x0 + 𝜃̂1x1
% Compute weights: Find 𝜃̂ = (𝜓𝑇𝜓)^(−1)𝜓𝑇y
n = size(x);                % get the size of x
Psi = [ones(n(1,1),1), x];  % Augment i/p data - the column of ones represent bias x0
theta_hat = inv(Psi'*Psi)*Psi'*y;

% ******* Prediction *********
% use the last 20 data items for prediction
x_star = Height(80:100); 
% to confirm the size of x_star
x_star_size = size(x_star);
n_star = x_star_size(1,1);
% augment oos i/p data
Psi_star = [ones(n_star,1) x_star];

% predict using the weights(theta_hat) computed above
y_star_hat = Psi_star*theta_hat; 
plot(x, y, '.', x_star, y_star_hat, '.')
xlabel('Height (in)')
ylabel('Weight (lbs)')
legend({'orginal data','prediction'},'Location','southwest')





