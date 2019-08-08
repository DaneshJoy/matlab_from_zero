%% In The Name of GOD
clear; clc

%% Create Sine Signal
x = 0:0.5*pi/2:100;
y1 = x.*sin(x);
y2 = x.*cos(x);

%% Plot Signal

plot(y1, y2,'--b')
axis square

title('Result')
xlabel('Radian')
ylabel('Amplitude')

