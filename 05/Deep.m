clear all; clc
[file,path] = uigetfile({'*.jpg'; '*.png'});
im = imread(fullfile(path,file));
net = alexnet;   % Load the neural network
image(im);                   % Show the picture
im = imresize(im,[227 227]); % Resize the picture for alexnet
label = classify(net,im);    % Classify the picture
title(char(label));          % Show the class label