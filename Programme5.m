clear all;
clc;

%I = imread('imag/im1.png');

%I = imread('imaget\images1.jpg');
%I = imread('imaget\images2.jpg');
%I = imread('imaget\images3.jpg');
%I = imread('imaget\images17.jpg');
%I = imread('imaget\images19.png');
%I = imread('imaget\images20.jpg');
I = imread('imaget\images23.jpg');

% Conversion en niveau de gris si necéssaire
I=rgb2gray(I);


I = imresize(I,[256 256]);
[h,w,~] = size(I);
points = detectHarrisFeatures(I);
strongest = selectStrongest(points,10);
[height,width,~] = size(points);



% les coordonnées des points d'interet 
point_coord=strongest.Location;
point_coord_arrond=floor(point_coord);
points1 = detectHarrisFeatures(I, 'MinQuality', 0.001);
numPoints =200;
points_uniform = selectUniform(points1,numPoints,size(I));


% les coordonnées des points d'interet de la distrution uniforme
point_coord2=points_uniform.Location;
point_coord2_arrond=floor(point_coord2);



%Les paramètres du système
u0= 156.84;
v0= 117.93;
k=3.92;
alpha=195.72;
deltax=-1.6;
deltay=008;
deltaz=-3.71;
psi=18.05;
c=1; % variation de c


P= point_coord2_arrond;
[n,m,~] = size(P);
j = 1;
for i = 1:n  
          xx=P(i,j);
          yy=P(i,j+1);
          rcc=(xx.^2 + yy.^2).^(0.5);
          z = xx*yy+1 ;
          rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
          %g=ri*(x./rc)+u0, ri*(y./rc)+v0;
          Q(i,j)=rii*(xx./rcc)+u0;
          Q(i,j+1)=rii*(yy./rcc)+v0;           
end 

proj1=points_uniform;
proj.Location=Q;
%Qq=floor(Q);
proj1.Location=Q;


% Affichage des points 
r =35000;
xc = 25000;
yc = 25000;
theta = linspace(0,2*pi);
x0 = r*cos(theta) + xc;
y0 = r*sin(theta) + yc;


an1=0;
R=15000;

figure;
subplot(1,4,1);
imshow(I);
title('Original image');

subplot(1,4,2);
imshow(I);
hold on
plot(points_uniform);
hold off
title('Detection of interest points');

subplot(1,4,3);
plot(points_uniform);
title('Selection of interest points');

subplot(1,4,4);
%plot(x1,y1, 'bo', 'MarkerSize', 10, 'DisplayName', 'z1');
plot(x0,y0);
text(xc,yc, ' n0', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
title('Hypercatadioptric projection');
%plot(points_uniform);
x1=xc+R;
y1=yc;

R1=10000;
x11=x1 + R1 * cos(pi\3);
y11=y1 + R1 * sin(pi\3);
x12=x1 + R1 * cos(pi\3);
y12=y1 - R1 * sin(pi\3);


x2 = xc - R * cos(pi\3);
y2 = yc + R * sin(pi\3);
x21= x2 - R1 * cos(pi\3);
y21= y2 + R1 * sin(pi\3);
x22= x2 - R1 * cos(pi\3);
y22= y2 - R1 * sin(pi\3);


x3 = xc - R * cos(pi\3);
y3 = yc - R * sin(pi\3);
x31= x3 - R1 * cos(pi\3);
y31= y3 - R1 * sin(pi\3);
x32= x3 + R1 * cos(pi\3);
y32= y3 - R1 * sin(pi\3);



hold on
plot(proj1);
plot(xc,yc, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
plot(x1,y1, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x1,y1, ' n1', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x2,y2, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x2,y2, ' n2', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x3,y3, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x3,y3, ' n3', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x11,y11, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x11,y11, ' n4', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x12,y12, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x12,y12, ' n5', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x21,y21, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x21,y21, ' n6', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x22,y22, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x22,y22, ' n7', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x31,y31, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x31,y31, ' n8', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
plot(x32,y32, 'bo', 'MarkerSize', 5, 'DisplayName', 'z1');
text(x32,y32, ' n9', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
hold off

