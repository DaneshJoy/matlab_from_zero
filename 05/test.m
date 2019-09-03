%% In the name of GOD
clear; clc; close all

%%
[file,path] = uigetfile({'*.jpg'; '*.png'});
img = imread(fullfile(path,file));
imshow(img)

%%
detector = vision.CascadeObjectDetector('UpperBody');
boxes = detector(img);

%%
showBoxesOnImage(img, boxes, 'rect')