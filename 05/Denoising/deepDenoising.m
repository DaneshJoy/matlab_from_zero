%% In the Name of GOD
clear; clc; close all

%% Read Image
img = imread('cameraman.tif');

%% Convert RGB to Grayscale
if ndims(img) == 3
    img = rgb2gray(img);
    img = mat2gray(img);
end

%% Add noise to the image
img_noisy = imnoise(img,'gaussian', 0, 0.01);


%% Remove Noise by Wiener filter
img_denoised_1 = wiener2(img_noisy,[5 5]);

%% Remove Noise by a Deep Learning model
model = denoisingNetwork('DnCNN');
img_denoised_2 = denoiseImage(img_noisy, model);

%% Visualize result
figure
montage({img, img_noisy, img_denoised_1, img_denoised_2},...
    'Size', [2 2])
text(1, 10, 'Original Image')
text(384, 10, 'Noisy Image')
text(1, 394, 'Denoised Image (Wiener filter)')
text(384, 394, 'Denoised Image (Deep Learning)')

