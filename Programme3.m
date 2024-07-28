%Ce programme permet d'inserer une marque en utilisant le technique 
%basée sur le Bit le Moins Significatif
clc;
close all;
clear all;
I=imread('imag\im1.png'); 
II=imread('imaget\images20.jpg'); 
III=imread('imaget\images23.jpg'); 
IIII=imread('imaget\images2.jpg');
I5=imread('imaget\images19.png');

% Convertir l'image en couleue en niveau de gris
II=rgb2gray(II);  
III=rgb2gray(III);  
IIII=rgb2gray(IIII);
I5=rgb2gray(I5);

[M,N]=size(I);
[MM,NN]=size(II);
[MMM,NNN]=size(III);
[MMMM,NNNN]=size(IIII);
[M5,N5]=size(I5);

W1=imread('qr.jpg');

RedimTatouage=imresize(W1, [M,N]);
RedimTatouage1=imresize(W1, [MM,NN]);
RedimTatouage2=imresize(W1, [MMM,NNN]);
RedimTatouage3=imresize(W1, [MMMM,NNNN]);
RedimTatouage4=imresize(W1, [M5,N5]);

RedimTatouageBinaire=im2bw(RedimTatouage);
RedimTatouageBinaire1=im2bw(RedimTatouage1);
RedimTatouageBinaire2=im2bw(RedimTatouage2);
RedimTatouageBinaire3=im2bw(RedimTatouage3);
RedimTatouageBinaire4=im2bw(RedimTatouage4);

% Inserer l'image binaire
ImageTatouee=bitset(I, 1, RedimTatouageBinaire);
ImageTatouee1=bitset(II, 1, RedimTatouageBinaire1);
ImageTatouee2=bitset(III, 1, RedimTatouageBinaire2);
ImageTatouee3=bitset(IIII, 1, RedimTatouageBinaire3);
ImageTatouee4=bitset(I5, 1, RedimTatouageBinaire4);

psnr1=psnr(I, ImageTatouee);
ssim1=ssim(I, ImageTatouee);
nc1=NC(I, ImageTatouee);

psnr2=psnr(II, ImageTatouee1);
ssim2=ssim(II, ImageTatouee1);
nc2=NC(II, ImageTatouee1);

psnr3=psnr(III, ImageTatouee2);
ssim3=ssim(III, ImageTatouee2);
nc3=NC(III, ImageTatouee2);

psnr4=psnr(IIII, ImageTatouee3);
ssim4=ssim(IIII, ImageTatouee3);
nc4=NC(IIII, ImageTatouee3);

psnr5=psnr(I5, ImageTatouee4);
ssim5=ssim(I5, ImageTatouee4);
nc5=NC(I5, ImageTatouee4);

formatSpec = 'Image 1 \n \n PSNR = %4.3f\n SSIM = %4.3f\n NC = %4.3f\n\n';
fprintf(formatSpec,psnr1,ssim1,nc1);

formatSpec = 'Image 2 \n \n PSNR = %4.3f\n SSIM = %4.3f\n NC = %4.3f\n\n';
fprintf(formatSpec,psnr2,ssim2,nc2);

formatSpec = 'Image 3 \n \n PSNR = %4.3f\n SSIM = %4.3f\n NC = %4.3f\n\n';
fprintf(formatSpec,psnr3,ssim3,nc3);

formatSpec = 'Image 4 \n \n PSNR = %4.3f\n SSIM = %4.3f\n NC = %4.3f\n\n';
fprintf(formatSpec,psnr4,ssim4,nc4);

formatSpec = 'Image 5 : PSNR= %4.3f; SSIM= %4.3f; NC= %4.3f\n';
fprintf(formatSpec,psnr5,ssim5,nc5);
M0='PSNR';
M1='NC';
M2='SSIM';
position =  [2 20; 2 100; 2 180];
value1 = [round(psnr1,2) round(nc1,2) round(ssim1,2)];
value2 = [round(psnr2,2) round(nc2,2) round(ssim2,2)];
value3 = [round(psnr3,2) round(nc3,2) round(ssim3,2)];
value4 = [round(psnr4,2) round(nc4,2) round(ssim4,2)];
value5 = [round(psnr5,2) round(nc5,2) round(ssim5,2)];

% Affichage pour un cas 
figure(1);
subplot(1,3,1);
imshow(IIII); %II III IIII I5
title('Original image 1');
subplot(1,3,2);
imshow(W1);
title('Watermark');
subplot(1,3,3);    % ImageTatouee1 2 4 
%ImageTatouee = insertText(ImageTatouee,position,value1,AnchorPoint="LeftBottom");%Affichage avec les metries
imshow(ImageTatouee3); 

%imshow(ImageTatouee); 
title('Image watermarked');

% Affichage de toutes les images

figure(2);
subplot(5,3,1);
imshow(I); 
title('Original image 1');
subplot(5,3,2);
imshow(W1);
title('Watermark');
subplot(5,3,3);
%ImageTatouee = insertText(ImageTatouee,position,value2,AnchorPoint="LeftBottom");
imshow(ImageTatouee);   
title('Image watermarked');

subplot(5,3,4);
imshow(II);
title('Original image 2');
subplot(5,3,5);
imshow(W1);
title('Watermark');
subplot(5,3,6);
%ImageTatouee1 = insertText(ImageTatouee1,position,value2,AnchorPoint="LeftBottom");
imshow(ImageTatouee1);
title('Image watermarked');

subplot(5,3,7);
imshow(III);
title('Original image 3');
subplot(5,3,8);
imshow(W1);
title('Watermark');
subplot(5,3,9);
%ImageTatouee2 = insertText(ImageTatouee2,position,value3,AnchorPoint="LeftBottom");
imshow(ImageTatouee2);
title('Image watermarked');

subplot(5,3,10);
imshow(IIII);
title('Original image 4');
subplot(5,3,11);
imshow(W1);
title('Watermark');
subplot(5,3,12);
%ImageTatouee3 = insertText(ImageTatouee3,position,value4,AnchorPoint="LeftBottom");
imshow(ImageTatouee3);
title('Image watermarked');

subplot(5,3,13);
imshow(I5);
title('Original image 4');
subplot(5,3,14);
imshow(W1);
title('Watermark');
subplot(5,3,15);
%ImageTatouee4 = insertText(ImageTatouee4,position,value5,AnchorPoint="LeftBottom");
imshow(ImageTatouee4);
title('Image watermarked');
%}




