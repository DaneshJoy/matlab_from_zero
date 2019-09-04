%% In the name of GOD
clear; clc; close all

%% Get snapshot from webcam
cam = webcam();
preview(cam)
answer = questdlg('Do you want to get picture?');
if answer == "Yes"
    img = snapshot(cam);
end

clear cam

%% Face detection
detector = vision.CascadeObjectDetector();
% detector.ClassificationModel = 'EyePairBig';
% detector.MinSize = [20 40];
bboxes = detector(img);
% bboxes = step(detector, img) % For verions before 2016b

%% Visualize
showBoxesOnImage(img, bboxes, "annot")