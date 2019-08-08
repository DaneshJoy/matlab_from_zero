%% In The Name of GOD
clear; clc

%%
x = 0:0.01:100;

y = 10 * sin(x);
noise = rand(1, length(y));     % Uniform Distribution
% noise = randn(1, length(y));  % Normal Distribution

y_t = y + noise; % Yt = Signal + Noise

%% Plot Signals Together

subplot(311)
plot(y)
title('Signal')
axis tight

subplot(312)
plot(noise)
title('Noise')
axis tight

subplot(313)
plot(y_t)
title('Signal+Noise')
axis tight

suptitle('My Signals')




