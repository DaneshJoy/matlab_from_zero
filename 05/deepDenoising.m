%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('hands1.jpg');

%% Convert RGB to Grayscale
if ndims(img) == 3 % if image was rgb
    img = rgb2gray(img);
    img = mat2gray(img);
end

%% Add noise to the image
img_noisy = imnoise(img,'gaussian', 0, 0.001);

%% Denoising by Wiener filter
img_denoised_1 = wiener2(img_noisy,[5 5]);

%% Denoising by Deep Learning
net = denoisingNetwork('DnCNN');
img_denoised_2 = denoiseImage(img_noisy, net);

%% Visualize result
figure
montage({img, img_noisy, ...
    img_denoised_1, img_denoised_2}, 'Size', [2 2]);
text(0,0,'Original image')
text(512,0,'Noisy image')
text(0,384,'Denoised by Wiener')
text(512,384,'Denoised by DeepLearning')