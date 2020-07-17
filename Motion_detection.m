clc;
close all;
clear all;

I = imread('scene1.jpg');
I = imresize(I,[250 250]);
I = im2double(I);
%figure,imshow(I);

J = imread('scene2.jpg');
J = imresize(J,[250 250]);
J = im2double(J);
%figure,imshow(J);

idiff = abs(I - J);
%figure, imshow(idiff);

idx = find(idiff > .1);
mask = zeros(size(idiff));
mask(idx) = 1;
%figure, imshow(mask);

K = (abs(double(I)-double(mask)));
figure, imshow(K);

subplot(2,2,1); imshow(I); title('scene 1');
subplot(2,2,2); imshow(J); title('scene 2');
subplot(2,2,3); imshow(mask); title('mask');
subplot(2,2,4); imshow(K); title('detected');