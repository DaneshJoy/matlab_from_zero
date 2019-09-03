%% In the name of GOD
clear; clc; close all

%% Creating signals
x = 0:0.01:2*pi;
y1 = sin(x);
y2 = sin(x+1);
y3 = sin(x-1);

%% Multi-Plot Method 1

plot(x, y1)
hold on % One time for all plots in current session
plot(x, y2, '--b')
plot(x, y3)

title('Y')
axis tight
legend('Y1', 'Y2', 'Y3')

%% Multi-Plot Method 2

figure
plot(x, y1, '--r', x, y2, x, y3, ':b') % No need to "hold on"
axis tight
title('Y')