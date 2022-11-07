% Program to demonstrate the use of if else

A = input("Enter a value for A: ");

if A<0
    disp('A is less than 0');
    disp('Setting the value to 0');
    A=0;
else
    if A>100
        disp('A is greater than 100');
        disp('Setting the value to 100');
        A=100;
    else
        % do nothing
    end
end
