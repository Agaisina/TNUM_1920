% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1. Comandos Matlab para la interpolación
% 1.1 Interpolación en 1D

clear all
close all
clc
x=[-1 5 8 10];
y=[0 6 2 5];
k=1;

figure(k)
clf
plot(x,y,'o')
title('puntos de interpolacion')
k=k+1;

figure(k)
clf
hold on
plot(x,y,'r')
title('puntos de interpolacion')

xint=-1:.1:10
yint=interp1(x,y,xint)
yint2=interp1(x,y,xint,'lineal')
norm(yint-yint-2,2)
k=k+1;

figure(k)
clf
plot(xint,yint,'o')
title('puntos interpolados')

k=k+1
figure(k)
clf
hold on
plot(xint,yint,'go')
plot(xint,yint,'r')
plot(x,y,'s')
title('Interpolacion lineal')

yint3 = interp1(x,y,xint,'nearest')
k=k+1
figure(k)
clf
hold on
plot(xint,yint3,'go')
plot(xint,yint3,'r')
plot(x,y,'s')
title('Interpolacion PWC')

yint3 = interp1(x,y,xint,'cubit')
k=k+1
figure(k)
clf
hold on
plot(xint,yint3,'go')
plot(xint,yint3,'r')
plot(x,y,'s')
title('Interpolacion cubit (Hermite)')

yint3 = interp1(x,y,xint,'spline')
k=k+1;
figure(k)
clf
hold on
plot(xint,yint3,'go')
plot(xint,yint3,'r')
plot(x,y,'s')
title('Interpolacion cubit (Spline)')

yint3 = spline(x,y,xint)
k=k+1;
figure(k)
clf
hold on
plot(xint,yint3,'go')
plot(xint,yint3,'r')
plot(x,y,'s')
title('Interpolacion cubit (Spline - funcion spline)')

yint3 = pchip(x,y,xint)
k=k+1;
figure(k)
clf
hold on
plot(xint,yint3,'go')
plot(xint,yint3,'r')
plot(x,y,'s')
title('Interpolacion cubit (Spline - funcion pchip)')

