%Add membership functions for bmi variable
calories_fis = addmf(calories_fis, 'input', 1, 'Underweight', 'trapmf', [13 13 17.5 18.5]);
calories_fis = addmf(calories_fis, 'input', 1, 'Normal', 'trapmf', [18 19 23 25]);
calories_fis = addmf(calories_fis, 'input', 1, 'Overweight', 'trapmf', [24 26.5 28 30]);
calories_fis = addmf(calories_fis, 'input', 1, 'Obese', 'trapmf', [28 35 50 50]);

%Add membership functions for activity variable
calories_fis = addmf(calories_fis, 'input', 2, 'Sedentary', 'trapmf', [0 0 1 1.5]);
calories_fis = addmf(calories_fis, 'input', 2, 'Light', 'trapmf', [1 2 2.5 3.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Moderate', 'trapmf', [3 4 5 5.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Active', 'trapmf', [5 6 7 7.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'VeryActive', 'trapmf', [7.1 8 10 10]);

%Add membership functions for age
calories_fis = addmf(calories_fis, 'input', 3, 'Young', 'trapmf', [18 20 30 40]);
calories_fis = addmf(calories_fis, 'input', 3, 'MiddleAge', 'trapmf', [35 40 50 65]);
calories_fis = addmf(calories_fis, 'input', 3, 'Old', 'trapmf', [60 85 120 120]);

%Add membership functions for output variable
calories_fis = addmf(calories_fis, 'output', 1, 'VeryLow', 'trapmf', [1000 1100 1300 1700]);
calories_fis = addmf(calories_fis, 'output', 1, 'Low', 'trapmf', [1600 1850 1950 2000]);
calories_fis = addmf(calories_fis, 'output', 1, 'Medium', 'trapmf', [1800 2050 2150 2200]);
calories_fis = addmf(calories_fis, 'output', 1, 'High', 'trapmf', [2150 2300 2500 2700]);
calories_fis = addmf(calories_fis, 'output', 1, 'VeryHigh', 'trapmf', [2600 2750 3000 3000]);