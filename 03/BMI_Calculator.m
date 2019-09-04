%% In the name of GOD
clear; clc; close all

%% Get inputs from user
% Method 1
% height = input('Enter your Height (in Centimers): ');
% weight = input('Enter your Weight (in Kilograms): ');

% Method 2
opts = struct('WindowStyle','modal', 'Interpreter','tex');
answer = inputdlg({'\fontsize{18} Enter your Height (in Centimers): ',...
    '\fontsize{18} Enter your weight (in Kilograms): '}, 'BMI Calculator',...
    [1,100], {'100', '50'}, opts);
height = str2double(answer{1});
weight = str2double(answer{2});

%% Calculate BMI
bmi = BMI(height, weight);

%% Report to the user

if bmi < 18.5
    message = sprintf('You are Underweight, Your BMI: %.2f', bmi);
    warndlg(message, 'Report')
elseif bmi >=18.5 && bmi <=25
    helpdlg('You are Normal', 'Report')
elseif bmi >25 && bmi <=30
    warndlg('You are Overweight!', 'Report')
else
    errordlg('You are Fat!', 'Report')
end