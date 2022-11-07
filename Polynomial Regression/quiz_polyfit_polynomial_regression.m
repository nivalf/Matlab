% Polyfit for polynomial regression

Quiz_data_excel_sheet = readtable('Quiz_data_excel_sheet_2022.csv.xlsx');
X = Quiz_data_excel_sheet.X;
y = Quiz_data_excel_sheet.Y;

plot(X,y, '.')
model_coefficients = polyfit(X, y, 4);
y1 = polyval(model_coefficients,X);
model_coefficients
hold on
plot(X,y1, '.')
xlabel('X');
ylabel('y');
legend({'Data points','Prediction'})