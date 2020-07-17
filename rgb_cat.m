x=imread('C:\Users\NETWORK Lab\Pictures\car.jpg');
figure,imshow(x)

r=x(:,:,1);
g=x(:,:,2);
b=x(:,:,3);

%figure,imhist(r)
%figure,imhist(g)
%figure,imhist(b)

rgb = cat(3,r,g,b);
figure,imshow(rgb)

rr=histeq(r);
figure,imhist(rr)
gg=histeq(g);
figure,imhist(gg)
bb=histeq(b);
figure,imhist(bb)

rgb2 = cat(3,rr,gg,bb);
figure,imshow(rgb2)