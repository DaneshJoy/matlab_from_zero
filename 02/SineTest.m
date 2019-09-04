%% In The Name of GOD
clear; clc

%%
f = input('What Frequency (Hz)?: ');
f = abs(f);

%% Create Sine Signal
Fs = 10000; % Hz
t = 0:1/Fs:1;
% f = 100; %Hz
y = sin(2*pi*f*t);

%% Plot Signal
% plot(t(1:500), y(1:500),...
%     '--bo', 'LineWidth',2,...
%     'MarkerSize', 10,...
%     'MarkerFaceColor', 'g',...
%     'MarkerEdgeColor', 'm')

plot(t(1:500), y(1:500),'--b')

title(['Sine Signal / Frequency: ', num2str(f)])
xlabel('Time (s)')
ylabel('Amplitude (V)')

