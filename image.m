clear;
close all;
figure;
im1=double(imread('cameraman.tif'));
im2=double(imread('trees.tif'));
im2=im2(1:256,1:256);
new_im1=(im1.*im2)./(im1+im2); %parallel resistance formula
subplot(121);imshow(uint8(new_im1));
new_im2=(im1.*im2)./abs((im1-im2));
subplot(122);imshow(uint8(new_im2));
figure;
new_im3=medfilt2(new_im2,[3 3]);
subplot(221);imshow(uint8(new_im3));
title('medfilt figure');
subplot(222);imshow(uint8(im2));
title('original figure');

se1=strel('disk',3);
im_erode=imerode(im2,se1);
subplot(223);imshow(uint8(im_erode));
title('erode figure');
B=[0 1 0
   1 1 1
   0 1 0];
im_erode_dilate=imdilate(im_erode,B);
im_erode_dilate=imdilate(im_erode_dilate,B);
subplot(224);imshow(uint8(im_erode_dilate));
title('dilate figure');


