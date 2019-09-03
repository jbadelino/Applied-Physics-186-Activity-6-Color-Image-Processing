clc; clear all; close all; 

%gray world algorithm

%load the image
I = imread('C:\Users\Asus\Documents\Applied Physics 186\act 6\faded4.jpg');
img = im2double(I);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

%obtain the average value of each color channel of the image
Rave = mean2(R);
Gave = mean2(G);
Bave = mean2(B);

%divide the RGB channels by their respective averages 
Rwb = R/Rave; 
Gwb = G/Gave;
Bwb = B/Bave; 

%overlay the normalized channels into one matrix
img_res(:,:,1) = Rwb/max(Rwb(:));
img_res(:,:,2) = Gwb/max(Rwb(:));
img_res(:,:,3) = Bwb/max(Rwb(:));

imwrite(img_res,'C:\Users\Asus\Documents\Applied Physics 186\act 6\res4_gw.jpg' );

