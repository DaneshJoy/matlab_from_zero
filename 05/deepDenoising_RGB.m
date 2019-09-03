%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Add noise to the image
img_noisy = imnoise(img,'gaussian', 0, 0.001);

%% For color images
imgR = img_noisy(:,:,1);
imgG = img_noisy(:,:,2);
imgB = img_noisy(:,:,3);

net = denoisingNetwork('dncnn');

denoisedR = denoiseImage(imgR,net);
denoisedG = denoiseImage(imgG,net);
denoisedB = denoiseImage(imgB,net);

img_denoised = cat(3,denoisedR,denoisedG,denoisedB);

%% Visualize result
figure
montage({img, img_noisy, img_denoised}, 'Size', [1 3]);
text(0,342,'Original image')
text(460,342,'Noisy image')
text(920,342,'Denoised image')