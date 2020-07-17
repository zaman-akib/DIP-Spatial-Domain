clc,
close all;
clear all;
I = imread('Dip1.png');
figure, imshow(I);
SE = strel('rectangle',[4 8]);
J = imerode(I,SE);
%J = imerode(J,SE);
figure, imshow(J);