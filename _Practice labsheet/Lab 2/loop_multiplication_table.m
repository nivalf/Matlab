% Program to create a multiplication table for the products of all integers from 1 to 10

table = zeros([10,10]); % initialization

for m = 1:10
    for n = 1:10
        table(m,n) = m*n;
    end
end

disp(table);