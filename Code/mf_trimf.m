%Add membership functions for bmi variable
calories_fis = addmf(calories_fis, 'input', 1, 'Underweight', 'trimf', [13 16 18.5]);
calories_fis = addmf(calories_fis, 'input', 1, 'Normal', 'trimf', [18 23 25]);
calories_fis = addmf(calories_fis, 'input', 1, 'Overweight', 'trimf', [24 27 30]);
calories_fis = addmf(calories_fis, 'input', 1, 'Obese', 'trimf', [28 40 50]);

%Add membership functions for activity variable
calories_fis = addmf(calories_fis, 'input', 2, 'Sedentary', 'trimf', [0 1 1.5]);
calories_fis = addmf(calories_fis, 'input', 2, 'Light', 'trimf', [1 2.2 3.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Moderate', 'trimf', [3 4 5.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Active', 'trimf', [5 6.5 7.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'VeryActive', 'trimf', [7.1 9 10]);

%Add membership functions for age
calories_fis = addmf(calories_fis, 'input', 3, 'Young', 'trimf', [18 25 40]);
calories_fis = addmf(calories_fis, 'input', 3, 'MiddleAge', 'trimf', [35 50 65]);
calories_fis = addmf(calories_fis, 'input', 3, 'Old', 'trimf', [60 95 120]);

%Add membership functions for output variable
calories_fis = addmf(calories_fis, 'output', 1, 'VeryLow', 'trimf', [1000 1500 1700]);
calories_fis = addmf(calories_fis, 'output', 1, 'Low', 'trimf', [1600 1850 2000]);
calories_fis = addmf(calories_fis, 'output', 1, 'Medium', 'trimf', [1800 2000 2200]);
calories_fis = addmf(calories_fis, 'output', 1, 'High', 'trimf', [2150 2500 2700]);
calories_fis = addmf(calories_fis, 'output', 1, 'VeryHigh', 'trimf', [2600 2800 3000]);
