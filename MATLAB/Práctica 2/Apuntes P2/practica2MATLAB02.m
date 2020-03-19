% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1.2 Interpolación en 2D
% 1.2.1 Datos uniformes

clear all
close all
clc
x=-10 :5 :10;
y=-20 :5 :20;
[xx,yy] = meshgrid(y,x);

for ii=1 :length(x)
for jj=1 :length(y)
    zz(ii,jj)=cos(x(ii))+sin(y(jj));
end
end

k=1;
figure(k)
clf
hold on
surface(xx,yy,zz)
title('Original data')
view([45 45])
axis('tight')
plot3(xx,yy,zz,'oy')

xi=-10 :.5 :10;
yi=-20 :.5 :20;
[xxi,yyi] = meshgrid(yi,xi);
zzi = interp2(xx,yy,zz,xxi,yyi,'nearest');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi)
title('Nearest interpolation')
view([45 45])
axis('tight')
plot3(xx,yy,zz,'oy')

zzi = interp2(xx,yy,zz,xxi,yyi,'linear');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi)
title('Linear interpolation')
view([45 45])
axis('tight')
plot3(xx,yy,zz,'oy')

zzi = interp2(xx,yy,zz,xxi,yyi,'cubic');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi)
title('Hermit interpolation')
view([45 45])
axis('tight')
plot3(xx,yy,zz,'oy')

zzi = interp2(xx,yy,zz,xxi,yyi,'spline');
k=k+1;
figure(k)
clf
hold on
surface(xxi,yyi,zzi)
title('Spline interpolation')
view([45 45])
axis('tight')
plot3(xx,yy,zz,'oy')

