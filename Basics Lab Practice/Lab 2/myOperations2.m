function [sum, difference, product, ratio] = myOperations2(num_1,num_2)
%myOperations2 performs addition, subtraction, multiplication  and division
%   input arguments: num_1, num_2
%   return value: sum, difference, product, ratio

sum = mySum2(num_1, num_2);
difference = myDiff2(num_1, num_2);
product = myMult2(num_1, num_2);
ratio = myDiv2(num_1, num_2);
end