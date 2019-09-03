%% In the name of GOD
clear; clc; close all

%% Solve equation with imaginary roots
syms x
eq1 = x^2+4;
myAns1 = solve(eq1)

% Wait for the user to press a key
disp('Press any key to continue...')
pause

%% Using double or vpa to convert symbolic answer to numeric
eq2 = x^3 - 5*x^2 + 2*x - 2;
myAns2 = solve(eq2);
vpa(myAns2, 2)
ezplot(eq2)

%% Solve equation using root function
syms x;
eq3 = x^2-4;
myAns3 = root(eq3); % The answer is always symbolic
vpa(myAns3, 2)


