f=imread('akib.jpeg'); 
figure, imshow(f); 
figure, imshow(f); 
f = f(:,:,1); h=imhist(f); 
i_hist=h(1:10:256); 
horizontal=1:10:256; 
bar(horizontal,i_hist); 
axis([0 255 0 15000]); 
set(gca,'xtick',0:50:255); 
set(gca,'ytick',0:2000:15000);