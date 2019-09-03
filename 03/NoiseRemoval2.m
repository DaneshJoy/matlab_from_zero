%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Convert RGB to Grayscale
img_gray = rgb2gray(img);
img_gray = mat2gray(img_gray);

%% Add noise to the image
img_noisy = imnoise(img_gray,'gaussian', 0, 0.001);

figure
montage({img_gray, img_noisy});
title('Original image / Noisy image')

%% Remove Noise by Wiener filter
img_denoised = wiener2(img_noisy,[5 5]);

%% Visualize result
figure
montage({img_noisy, img_denoised})
title('Noisy image / Denoised image')
figure
montage({img_gray, img_denoised})
title('Original image / Denoised image')