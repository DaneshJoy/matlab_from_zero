%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Add noise to the image
img_noisy = imnoise(img,'gaussian', 0, 0.001);

%% Get RGB Channels
imgR = img_noisy(:,:,1);
imgG = img_noisy(:,:,2);
imgB = img_noisy(:,:,3);

%% Remove Noise by Wiener filter
img_denoised_1R = wiener2(imgR,[5 5]);
img_denoised_1G = wiener2(imgG,[5 5]);
img_denoised_1B = wiener2(imgB,[5 5]);

%% Remove Noise by a Deep Learning model
model = denoisingNetwork('DnCNN');
img_denoised_2R = denoiseImage(imgR, model);
img_denoised_2G = denoiseImage(imgG, model);
img_denoised_2B = denoiseImage(imgB, model);

%% Combine RGB channels to make an image
img_denoised_1 = cat(3, img_denoised_1R, img_denoised_1G, img_denoised_1B);
img_denoised_2 = cat(3, img_denoised_2R, img_denoised_2G, img_denoised_2B);

%% Visualize result
figure
montage({img, img_noisy, img_denoised_1, img_denoised_2},...
    'Size', [2 2])
text(1, 10, 'Original Image')
text(512, 10, 'Noisy Image')
text(1, 394, 'Denoised Image (Wiener filter)')
text(512, 394, 'Denoised Image (Deep Learning)')

