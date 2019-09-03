% camera = webcam; % Connect to the camera
net = alexnet;   % Load the neural network

im = imread('peppers.jpg');       % Take a picture
image(im);                   % Show the picture
im = imresize(im,[227 227]); % Resize the picture for alexnet
label = classify(net,im);    % Classify the picture
title(char(label));          % Show the class label