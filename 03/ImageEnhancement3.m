%% In the Name of GOD
clear; clc; close all

% ------------Adaptive Histogram Equalization

%% Read Image
img = imread('CT.png');

%% Convert RGB to Grayscale
img_gray = rgb2gray(img);
img_gray = mat2gray(img_gray);

%% Histogram Equalization

tic

figure
h1 = imhist(img_gray); % Get Image Histogram

img_enhanced = adapthisteq(img_gray); % Only works with Grayscale images
montage({img_gray, img_enhanced});
title('Original (left) / Enhanced (right)')

h2 = imhist(img_enhanced);

toc

figure
subplot(121)
bar(h1)
title('Histogram of original image')
axis off
subplot(122)
bar(h2)
title('Histogram of enhanced image')
axis off


