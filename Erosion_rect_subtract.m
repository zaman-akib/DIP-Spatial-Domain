clc,
close all;
clear all;
I = imread('Dip1.png');
figure, imshow(I);
SE = strel('rectangle',[4 4]);
J = imerode(I,SE);
figure, imshow(J);
K = I - J;
figure, imshow(K);