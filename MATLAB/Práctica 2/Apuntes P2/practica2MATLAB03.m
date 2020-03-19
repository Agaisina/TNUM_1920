% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1.2.2 Datos uniformes

clear all
close all
clc
x=[1 5 15 -9 -10 8 7 -8];
y=[-5 3 8 -3 10 -10 5 2];
z=[1 5 3 7 10 4 8 9];
k=1;

figure(k)
clf
hold on
plot3(x,y,z,'ok')
title('Original data')
view([45 45])
axis('tight')

xi=min(x): ((max(x)-min(x)) / 99) : max(x);
yi=min(y): ((max(y)-min(y)) / 99) : max(y);
[xxi,yyi]=meshgrid(yi,xi);

zzi = griddata(x,y,z,xxi,yyi,'nearest');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi, 'Edgecolor','none')
title('Nearest interpolation')
view([45 45])
axis('tight')
plot3(x,y,z,'ok')

zzi = griddata(x,y,z,xxi,yyi,'linear');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi, 'Edgecolor','none')
title('Linear interpolation')
view([45 45])
axis('tight')
plot3(x,y,z,'ok')

zzi = griddata(x,y,z,xxi,yyi,'cubic');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi, 'Edgecolor','none')
title('Cubic interpolation')
view([45 45])
axis('tight')
plot3(x,y,z,'ok')