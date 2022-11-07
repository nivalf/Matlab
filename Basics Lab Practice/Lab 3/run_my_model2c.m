%Script to set the step time, step values, saturation value
% and run the model 'my_model2'

clear;

%Predefined values
step_time = 0;
step_low_value = 0;
step_high_value = 1;
lower_sat = -1;
upper_sat = 1;
k = 1;  % gain

my_input_data = timeseries([zeros(100,1); ones(500,1); zeros(400,1)],(linspace(0,10,1000))');
plot(my_input_data);
hold on;

for b = [1,2,4]   % value of b in transfer function
    sim('my_model2b')    % run the model
    plot(simout);
end

hold off;
grid on;

axis 'padded';
legend('input','b=1','b=2','b=4','Location','northeast');
xlabel('Time (s)');
ylabel('Model Output')
title('Results from model2b')
