clc; clear all; close all; 

%white patch algorithm
%get a white patch from the original image
white = imread('C:\Users\Asus\Documents\Applied Physics 186\act 6\w2.jpg')
white2 = im2double(white);
wR = white2(:,:,1);
wG = white2(:,:,2);
wB = white2(:,:,3);
%obtain the average of the RGB channels of the white patch
wRave = mean2(wR);
wGave = mean2(wG);
wBave = mean2(wB); 

%original image 
I = imread('C:\Users\Asus\Documents\Applied Physics 186\act 6\faded4.jpg')
img = im2double(I);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

%divide the RGB channels of the original image by the corresponding
%averages of the white patch
Rwb = (R/wRave);
Gwb = (G/wGave);
Bwb = (B/wBave); 

%overlay the normalized channels into one matrix
img_rest(:,:,1) = Rwb/max(Rwb(:));
img_rest(:,:,2) = Gwb/max(Rwb(:));
img_rest(:,:,3) = Bwb/max(Rwb(:));

imwrite(img_rest,'C:\Users\Asus\Documents\Applied Physics 186\act 6\res4_wp.jpg' );

