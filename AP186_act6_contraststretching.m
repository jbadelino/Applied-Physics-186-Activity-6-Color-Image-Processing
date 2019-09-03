clc; clear all; close all; 

%load the image
I = imread('C:\Users\Asus\Documents\Applied Physics 186\act 6\faded8.jpg');
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

imwrite(R,'C:\Users\Asus\Documents\Applied Physics 186\act 6\R8_cs.jpg' );
imwrite(G,'C:\Users\Asus\Documents\Applied Physics 186\act 6\G8_cs.jpg' );
imwrite(B,'C:\Users\Asus\Documents\Applied Physics 186\act 6\B8_cs.jpg' );

%determine the minimum and maximum values per each channel
Rmin = min(R(:)); Rmax = max(R(:));
Gmin = min(G(:)); Gmax = max(G(:));
Bmin = min(B(:)); Bmax = max(B(:));

%contrast stretching
Rstretch = (R-Rmin).*(255./(Rmax-Rmin));
Gstretch = (G-Gmin).*(255./(Gmax-Gmin));
Bstretch = (B-Bmin).*(255./(Bmax-Bmin));

%overlay the contrast stretched image channels into one matrix
I_res(:,:,1) = Rstretch;
I_res(:,:,2) = Gstretch;
I_res(:,:,3) = Bstretch;

imwrite(I_res,'C:\Users\Asus\Documents\Applied Physics 186\act 6\res8_cs.jpg' );