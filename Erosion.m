clc,
close all;
clear all;
I = imread('Dip1.png');
figure, imshow(I);
SE = strel('square',5);
J = imerode(I,SE);
figure, imshow(J);