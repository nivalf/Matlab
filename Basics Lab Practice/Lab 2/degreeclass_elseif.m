% Program to display the class of a degree according to a grade input. 

grade=input('Enter grade (integer value between 0 and 100): '); 
if grade > 70 
    disp('1st');  
elseif grade > 60
    disp('2:1');  
elseif grade > 50 
    disp('2:2');  
elseif grade > 40 
    disp('3rd') 
else 
    disp('Fail'); 
end 