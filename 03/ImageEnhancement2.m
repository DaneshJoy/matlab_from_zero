%% In the Name of GOD
clear; clc; close all

% ------------ Histogram Equalization

%% Read Image
img = imread('face1.jpg');

%% Histogram Equalization

tic

figure
h1 = imhist(img); % Get Image Histogram

img_enhanced = histeq(img); % Works with both RGB and Grayscale images
montage({img, img_enhanced});
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


