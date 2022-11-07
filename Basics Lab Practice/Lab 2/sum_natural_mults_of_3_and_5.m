% Program to sum all natural numbers below 1000
% that are multiples of 3 or 5 

% ******** Method 1 ************

multiples_of_3 = 3 : 3 : 999;
multiples_of_5 = 5 : 5 : 999;
multiples_of_3_and_5 = 15 : 15 : 999;

% Subtract multiples of 3 and 5, from the sum so as to remove repetition
total_1 = sum(multiples_of_3) + sum(multiples_of_5) - sum(multiples_of_3_and_5);

% ******** Method 2 ************

total_2 = 0; %initialization

for k = 0:999
    if(mod(k,3)==0 || mod(k,5)==0 )
        total_2 = total_2 + k;
    end
end

% ******** Method 3 ************

a = 0:999;
total_3 = sum(a(mod(a,3)==0 | mod(a,5)==0));

%Displaying outputs

disp('Sum of all natural numbers below 1000 that are multiples of 3 or 5:')
disp('Method 1:')
disp(total_1)
disp('Method 2:')
disp(total_2)
disp('Method 3:')
disp(total_3)
