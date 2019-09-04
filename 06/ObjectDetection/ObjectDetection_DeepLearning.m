%% In the Name of GOD
clear; clc; close all

%% Load image
[file,path] = uigetfile({'*.jpg'; '*.png'});
img = imread(fullfile(path, file));

%% Create Deep Learning model
model = alexnet;
img = imresize(img, [227, 227]);
label = classify(model, img);

%% Visualization
imshow(img)
title(char(label));