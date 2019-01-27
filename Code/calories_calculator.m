%Create a FIS
calories_fis = newfis('caloriescalculator','mamdani','min','max','min','max','centroid');

%Add input variables
calories_fis = addvar(calories_fis, 'input', 'bmi', [13 50]);
calories_fis = addvar(calories_fis, 'input', 'activity', [0 10]);
calories_fis = addvar(calories_fis, 'input', 'age', [18 120]);

%Add output variable
calories_fis = addvar(calories_fis, 'output', 'calories', [1000 3000]);

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

rulelist = [ ...
1 1 1 3 1 1; 1 2 1 3 1 1; 1 3 1 4 1 1; 1 4 1 4 1 1; 1 5 1 5 1 1;...
2 1 1 2 1 1; 2 2 1 3 1 1; 2 3 1 4 1 1; 2 4 1 4 1 1; 2 5 1 5 1 1;...
3 1 1 2 1 1; 3 2 1 3 1 1; 3 3 1 3 1 1; 3 4 1 4 1 1; 3 5 1 5 1 1;...
4 1 1 2 1 1; 4 2 1 2 1 1; 4 3 1 2 1 1; 4 4 1 3 1 1; 4 5 1 3 1 1;...

1 1 2 2 1 1; 1 2 2 3 1 1; 1 3 2 3 1 1; 1 4 2 3 1 1; 1 5 2 4 1 1;...
2 1 2 1 1 1; 2 2 2 2 1 1; 2 3 2 2 1 1; 2 4 2 3 1 1; 2 5 2 4 1 1;...
3 1 2 1 1 1; 3 2 2 1 1 1; 3 3 2 2 1 1; 3 4 2 3 1 1; 3 5 2 4 1 1;...
4 1 2 1 1 1; 4 2 2 1 1 1; 4 3 2 2 1 1; 4 4 2 2 1 1; 4 5 2 3 2 1;...

1 1 3 1 1 1; 1 2 3 2 1 1; 1 3 3 2 1 1; 1 4 3 2 1 1; 1 5 3 3 1 1;...
2 1 3 1 1 1; 2 2 3 2 1 1; 2 3 3 2 1 1; 2 4 3 3 1 1; 2 5 3 3 1 1;...
3 1 3 1 1 1; 3 2 3 1 1 1; 3 3 3 1 1 1; 3 4 3 2 1 1; 3 5 3 3 1 1;...
4 1 3 1 1 1; 4 2 3 2 1 1; 4 3 3 2 1 1; 4 4 3 2 1 1; 4 5 3 2 2 1];

calories_fis = addrule(calories_fis, rulelist);
showrule(calories_fis)

%Plot the membership functions
subplot(2,2,1); plotmf(calories_fis,'input', 1)
subplot(2,2,2); plotmf(calories_fis,'input', 2)
subplot(2,2,3); plotmf(calories_fis,'input', 3)
subplot(2,2,4); plotmf(calories_fis,'output', 1) 

%Plot the 2D sufaces
subplot(3,1,1);
gensurf(calories_fis,[1],1)
subplot(3,1,2);
gensurf(calories_fis,[2],1)
subplot(3,1,3);
gensurf(calories_fis,[3],1)

%Plot the 3D surfaces
subplot(2,2,1);
gensurf(calories_fis,[1 2],1)
subplot(2,2,2);
gensurf(calories_fis,[1 3],1)
subplot(2,2,3);
gensurf(calories_fis,[2 3],1)

%Evaluate the FIS
input_data = [...
13.6 0 18;...
26.7 1 60;...
46.3 2 65;...
17.6 3 35;...
27.3 4 40;...
19 4.5 45;...
18.4 5 60;...
24.4 7 65;...
29.1 8 22;...
30.5 7 30;...
28.1 3 100;...
15.6 2 18;...
22.2 1 60;...
27.3 3 100
30.5 3 35;...
28.1 4 40;...
15.6 4.5 45;...
22.2 4 60;...
16.6 7 65;...
20.3 8 22;...
17.6 10 30;...
];

y = evalfis(input_data,calories_fis);