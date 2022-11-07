% Program to compute factorial

N = input('Input the number to compute factorial:');
F = 1; % initialization

while N>0
    F = F*N;
    N = N-1;
end

disp('Factorial:')
disp(F)