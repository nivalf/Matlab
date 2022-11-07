% Calculate pi using monte carlo method

% ******* Method 1 ***********

N = input('Enter N: ');
coordinates = -1 + 2*rand([N,2]);

sq_sum_coordinates = coordinates(:,1).^2 + coordinates(:,2).^2;
points_inside_circle = sum(sq_sum_coordinates<1);

AREA_OF_SQUARE = 2*2;

calculated_pi = AREA_OF_SQUARE * points_inside_circle/N;

% ******* Method 2 ***********

Nk=0; % number of points inside the circle area
for k=1:N
    x=rand(1); 
    y=rand(1); 
    if x^2+y^2<1
        Nk=Nk+1; 
    end
end
myPi=4*Nk/N;

% *********** O/P ********

disp('Pi calculated using Monte Carlo method:')
disp('method 1:')
disp(calculated_pi);
disp('method 2:')
disp(myPi)