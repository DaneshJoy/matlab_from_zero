%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Convert RGB to Grayscale
img_gray = rgb2gray(img);
img_gray = mat2gray(img_gray);

%% Add noise to the image
img_noisy = imnoise(img_gray,'gaussian', 0, 0.005);

figure
montage({img_gray, img_noisy});

%% Remove Noise by Median filter
% img_denoised = medfilt2(img_noisy);
img_denoised = wiener2(img_noisy,[5 5]);

%% Visualize resultfigure
figure
montage({img_noisy, img_denoised})
figure
montage({img_gray, img_denoised})