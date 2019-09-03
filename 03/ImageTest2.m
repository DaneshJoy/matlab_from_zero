%% In the Name of GOD
clear; clc; close all

% ------------mat2gray vs im2double

%%
img = imread('pout.tif');
img_d = im2double(img);
img_m = mat2gray(img);

img2 = img*1.2;
img2_d = img_d*1.2;
img2_m = img_m*1.2;

montage({img, img2}); title('Original image --> multiplied by 1.2')
figure
montage({img, img2_d}); title('After im2double --> multiplied by 1.2')
figure
montage({img, img2_m}); title('After mat2gray --> multiplied by 1.2')