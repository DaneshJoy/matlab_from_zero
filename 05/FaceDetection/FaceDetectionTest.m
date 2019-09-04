%% In the name of GOD
clear; clc; close all

%% Load image
[file,path] = uigetfile({'*.jpg'; '*.png'});
img = imread(fullfile(path, file));

%% Face detection
detector = vision.CascadeObjectDetector();
% detector.ClassificationModel = 'EyePairBig';
% detector.MinSize = [20 40];
bboxes = detector(img);
% bboxes = step(detector, img) % For verions before 2016b

%% Visualize
showBoxesOnImage(img, bboxes, "annot")

