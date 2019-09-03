%% In the name of GOD
clear; clc; close all

%% Find roots by hand (Bad way)

x = -10:0.1:10;
y = x.^2 - 16; % Dasti

plot(x, y)
hold on

y2 = zeros(size(y));

plot(x, y2)

roots_index = find(y==0);
plot(x(roots_index), y(roots_index), 'ob')

fprintf('Roots are %.2f, %.2f\n', x(roots_index))

%% Find roots by Matlab (Good way 1)

syms x;
eq1 = x^2-16; % Symbolic
solve(eq1)
figure
ezplot(eq1, [-10, 10])

%% Find roots by Matlab (Good way 2)

eq2 = @(x) x^2-16; % Function_handle
solve(eq2)
figure
ezplot(eq2, [-10, 10])
