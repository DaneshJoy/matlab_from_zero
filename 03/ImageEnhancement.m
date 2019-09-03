%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('baby.jpg');

%% Image Enhancement
tic % start counting

img = mat2gray(img);

img_inv = imcomplement(img); % invert image
figure
montage({img, img_inv})

img_inv2 = imreducehaze(img_inv); % reduce haze
figure
montage({img_inv, img_inv2})

img_enhanced = imcomplement(img_inv2); % invert back
figure
montage({img, img_enhanced})

toc % end counting + report

%% Write image
imwrite(img_enhanced, 'img_enhanced.png')

