% Program to simulate throwing two dice and 
% display the sum of the scores too

% Author: Flavin Lee John
% Date: 5th October 2022

scores = ceil(6*rand([1,2]));

disp('Scores on the dice:');
disp(scores);
disp('Sum of scores:')
disp(sum(scores));