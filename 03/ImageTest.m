%% In the Name of GOD
clear; clc; close all

% ------------Read and Visualize images

%% Read Image
img1 = imread('cameraman.tif'); % From Matlab images
img2 = imread('football.jpg'); % From Matlab images
img3 = imread('CT.png'); % From current directory

%% Visualization
subplot(131)
imshow(img1)
subplot(132)
image(img1)
axis off
subplot(133)
imagesc(img1)
axis off

figure
montage({img1, img2, img3}, 'Size', [1,3])

%% Convert to double between [0, 1]
img_g1 = im2double(img2);
img_g2 = mat2gray(img2);

montage({img_g1, img_g2})

% Another method (Works in Matlab versions before 2016)
% imshowpair(img1, img2, 'montage')


