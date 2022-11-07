%Script to set the step time, step values, saturation value
% and run the model 'my_model1'

clear;
use_predefined_inputs = input('Use predefined values for model parameters? (Else you can enter custom values) Y/N :','s');

%Predefined values
step_time = 5;
step_low_value = 0;
step_high_value = 1;
lower_sat = -1;
upper_sat = 1;

if(use_predefined_inputs == 'N' || use_predefined_inputs == 'n')
    step_time = input('Enter time step-change occurs (eg. 5): ');
    step_low_value = input('Enter step low value (eg. 0): ');
    step_high_value = input('Enter step high value (eg. 1): ');
    lower_sat = input('Enter lower saturation value (eg. -0.5): ');
    upper_sat = input('Enter upper saturation value (eg. 0.5): ');
else
    disp('Using Predefined values.');
end

sim('my_model1')    % run the model

% plot the data from the scope
plot(ScopeData(:,1), ScopeData(:,2));
xlabel('Time');
ylabel('y')
title('Scope data log')
