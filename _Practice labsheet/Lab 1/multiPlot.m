x=[0,1,2,3,4,5,6]; 
y1=[0,1,2,3,4,5,6]; 
y2=[0,1,4,9,16,25,36]; 
y3=[0,1,8,27,64,125,216]; 

plot(x,y1,'-bo');
hold on
plot(x,y2,'-gx');
plot(x,y3,'-r*')
grid on

title('Multi Plots')
xlabel('X')
ylabel('Y')

hold off