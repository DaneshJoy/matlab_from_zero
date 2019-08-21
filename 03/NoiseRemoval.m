%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Convert RGB to Grayscale
img_gray = rgb2gray(img);
img_gray = mat2gray(img_gray);

%% Add noise to the image
img_noisy = imnoise(img_gray,'salt & pepper',0.02);

montage({img_gray, img_noisy});

%% Remove Noise by Median filter
img_denoised = medfilt2(img_noisy);

%% Visualize resultfigure
figure
montage({img_noisy, img_denoised})
figure
montage({img_gray, img_denoised})