%% In the name of GOD
clear; clc; close all

%% Multi-variable equation
syms x y;
solve(x^2-4*y, y)

%% Multi-variable Multi-equation
myAns = solve(x^2-4*y==-7, y+x==3);
myAns.x
myAns.y

% Returns empty if there is no answer or infinit answers
myAns2 = solve(x+y==0, x+y==1);
myAns.x
myAns.y

%% Moadele Daraje 2 Standard
syms a b c x
solve(a*x^2 + b*x + c)

%% roots vs poly
roots([1 0 -4]) % Coeffitients of: x^2 + 0*x - 4 == 0
poly([2 -2 5+2i]) % Inverse of roots: find equation coeffitients with the given roots

