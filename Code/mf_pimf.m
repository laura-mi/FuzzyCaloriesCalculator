%Add membership functions for bmi variable
calories_fis = addmf(calories_fis, 'input', 1, 'Underweight', 'pimf', [13 13 17.5 18.5]);
calories_fis = addmf(calories_fis, 'input', 1, 'Normal', 'pimf', [18 19 23 25]);
calories_fis = addmf(calories_fis, 'input', 1, 'Overweight', 'pimf', [24 26.5 28 30]);
calories_fis = addmf(calories_fis, 'input', 1, 'Obese', 'pimf', [28 35 50 50]);

%Add membership functions for activity variable
calories_fis = addmf(calories_fis, 'input', 2, 'Sedentary', 'pimf', [0 0 1 1.5]);
calories_fis = addmf(calories_fis, 'input', 2, 'Light', 'pimf', [1 2 2.5 3.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Moderate', 'pimf', [3 4 5 5.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'Active', 'pimf', [5 6 7 7.2]);
calories_fis = addmf(calories_fis, 'input', 2, 'VeryActive', 'pimf', [7.1 8 10 10]);

%Add membership functions for age
calories_fis = addmf(calories_fis, 'input', 3, 'Young', 'pimf', [18 20 30 40]);
calories_fis = addmf(calories_fis, 'input', 3, 'MiddleAge', 'pimf', [35 40 50 65]);
calories_fis = addmf(calories_fis, 'input', 3, 'Old', 'pimf', [60 85 120 120]);

%Add membership functions for output variable
calories_fis = addmf(calories_fis, 'output', 1, 'VeryLow', 'pimf', [1000 1100 1300 1700]);
calories_fis = addmf(calories_fis, 'output', 1, 'Low', 'pimf', [1600 1850 1950 2000]);
calories_fis = addmf(calories_fis, 'output', 1, 'Medium', 'pimf', [1800 2050 2150 2200]);
calories_fis = addmf(calories_fis, 'output', 1, 'High', 'pimf', [2150 2300 2500 2700]);
calories_fis = addmf(calories_fis, 'output', 1, 'VeryHigh', 'pimf', [2600 2750 3000 3000]);