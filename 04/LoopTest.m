%% In the name of GOD
clear; clc; close all

N = input('Please enter N: ');
%% Calculate sum of numbers beween 1 and N (For loop)
mySum = 0;
for i=1:N
    mySum = mySum+i;
end
fprintf('Sum is %d\n', mySum)

%% Calculate sum of numbers beween 1 and N (While loop 1)
mySum = 0;
i = 0;
while i<=N
    mySum = mySum+i;
    i = i+1;
end
fprintf('Sum is %d\n', mySum)

%% Calculate sum of numbers beween 1 and N (While loop 2)
mySum = 0;
i = 0;
while true
    mySum = mySum+i;
    i = i+1;
    if i>N
        break
    end
end
fprintf('Sum is %d\n', mySum)
%% Importance of pre-allocation
tic
M = 4000;
A = zeros(M); % pre-allocation
for i=1:M
    for j=1:M
        A(i,j) = i*j;
    end
end
toc

