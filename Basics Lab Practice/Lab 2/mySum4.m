function sum = mySum4(num_1, num_2, num_3, num_4)
%mySum4 Sums four numbers
%   input arguments: num_1, num_2, num_3, num_4
%   return value: sum

sum = mySum2(mySum2(num_1,num_2),mySum2(num_3,num_4));
end