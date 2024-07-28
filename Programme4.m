clc;
clear all;
close all;

%Les paramètres du système
u0= 156.84;
v0= 117.93;
k=3.92;
alpha=195.72;
deltax=-1.6;
deltay=008;
deltaz=-3.71;
psi=18.05;
c=1;
z=1;

x=0:1:50;
y=-10;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_10=rii.*(x./rcc)+u0;
y_10=rii.*(y./rcc)+v0;

x=-10:1:10;
y=-9;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_9=rii.*(x./rcc)+u0;
y_9=rii.*(y./rcc)+v0;


x=-10:1:10;
y=-8;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_8=rii.*(x./rcc)+u0;
y_8=rii.*(y./rcc)+v0;


x=-10:1:10;
y=-7;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_7=rii.*(x./rcc)+u0;
y_7=rii.*(y./rcc)+v0;


x=-10:1:10;
y=-6;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_6=rii.*(x./rcc)+u0;
y_6=rii.*(y./rcc)+v0;


x=-10:1:10;
y=-5;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_5=rii.*(x./rcc)+u0;
y_5=rii.*(y./rcc)+v0;

x=-10:1:10;
y=-4;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_4=rii.*(x./rcc)+u0;
y_4=rii.*(y./rcc)+v0;

x=-10:1:10;
y=-3;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_3=rii.*(x./rcc)+u0;
y_3=rii.*(y./rcc)+v0;


x=-10:1:10;
y=-2;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_2=rii.*(x./rcc)+u0;
y_2=rii.*(y./rcc)+v0;

x=-10:1:10;
y=-1;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x_1=rii.*(x./rcc)+u0;
y_1=rii.*(y./rcc)+v0;

x=-10:1:10;
y=0;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x0=rii.*(x./rcc)+u0;
y0=rii.*(y./rcc)+v0;

x=-10:1:10;
y=1;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x1=rii.*(x./rcc)+u0;
y1=rii.*(y./rcc)+v0;

x=0:1:20;
xt2=x;
y=2;
yt2=y;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x2=rii.*(x./rcc)+u0;
y2=rii.*(y./rcc)+v0;

x=-10:1:10;
xt22=x;
y=2;
yt22=y;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x22=rii.*(x./rcc)+u0;
y22=rii.*(y./rcc)+v0;


x=-10:1:10;
y=3;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x3=rii.*(x./rcc)+u0;
y3=rii.*(y./rcc)+v0;

x=-10:1:10;
y=4;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x4=rii.*(x./rcc)+u0;
y4=rii.*(y./rcc)+v0;


x=-10:1:10;
y=5;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x5=rii.*(x./rcc)+u0;
y5=rii.*(y./rcc)+v0;

x=-10:1:10;
y=6;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x6=rii.*(x./rcc)+u0;
y6=rii.*(y./rcc)+v0;

x=-10:1:10;
y=7;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x7=rii.*(x./rcc)+u0;
y7=rii.*(y./rcc)+v0;

x=-10:1:10;
y=8;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x8=rii.*(x./rcc)+u0;
y8=rii.*(y./rcc)+v0;

x=-10:1:10;
y=9;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x9=rii.*(x./rcc)+u0;
y9=rii.*(y./rcc)+v0;

x=-10:1:10;
y=10;
rcc=(x.^2 + y.^2).^(0.5);
rii=alpha*rcc+ ((k*(k-2)*(z.^2 + rcc.^2)).^(0.5) - z*(k-1))./(z.^2-k*(k-2)*rcc.^2);
x10=rii.*(x./rcc)+u0;
y10=rii.*(y./rcc)+v0;

dx=[x_10,x_9,x_8,x_7,x_6,x_5,x_4,x_3,x_2,x_1,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10];
dy=[y_10,y_9,y_8,y_7,y_6,y_5,y_4,y_3,y_2,y_1,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10];
pH=[dx;dy];
sz=10;

figure;
subplot(1,4,1);  
scatter(xt2,yt2,sz,'LineWidth',0.001);
ylabel('y');
xlabel ('x');
title('Original points');

subplot(1,4,2);  
scatter(x2,y2,sz,'LineWidth',0.001);
title('Image points');
ylabel('y');
xlabel ('x');

subplot(1,4,3);  
scatter(xt22,yt22,sz,'LineWidth',0.001);
ylabel('y');
xlabel ('x');
title('Original points');

subplot(1,4,4);  
scatter(x22,y22,sz,'LineWidth',0.001);
title('Image points');
ylabel('y');
xlabel ('x');

