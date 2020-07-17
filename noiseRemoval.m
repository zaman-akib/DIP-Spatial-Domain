img = imread('C:\Users\NETWORK LAB\Downloads\bob.jpeg');
img = imresize(img, [500 500]);
figure, imshow(img);

r = img(:,:,1);
figure, imhist(r);
g = img(:,:,2);
figure, imhist(g);
b = img(:,:,3);
figure, imhist(b);

r = adapthisteq(r);
g = adapthisteq(g);
b = adapthisteq(b);

rgb = cat(3,r,g,b);  %enhanched
figure, imshow(rgb);

noisy_img = imnoise(rgb,'salt & pepper',0.04);
figure, imshow(noisy_img);

R = noisy_img(:,:,1);
G = noisy_img(:,:,2);
B = noisy_img(:,:,3);

R = medfilt2(R, [4 4]);
G = medfilt2(G, [4 4]);
B = medfilt2(B, [4 4]);

RGB = cat(3,R,G,B);
figure, imshow(RGB);