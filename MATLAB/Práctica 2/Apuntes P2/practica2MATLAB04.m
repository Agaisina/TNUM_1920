% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1.3 Interpolacion en 3D
% 1.3.1 Datos uniformes

clear all
close all
clc
x=-10 :5 :10;
y=-20 :5 :20;
z=-10 :5 :5;
[xg,yg, zg] = meshgrid(y,x,z);
xi = -10 :1 :10;
yi=-20 :1 :20;
zi=-10 :1 :5;
[xgi,ygi,zgi] = meshgrid(yi,xi,zi);

for ii=1 :length(x)
for jj=1 :length(y)
for kk=1 :length(z)    
    dat(ii,jj,kk)=x(ii)^2+y(jj)^2+z(kk)^2;
end
end
end

dati=interp3(xg,yg,zg,dat,xgi,ygi,zgi,'cubic');
figure(1)
hold on
slice(xg,yg,zg,dat,[-20,0],[0,10],[-10,0]), shading flat
view([45 45])
title('Original data')
figure(2)
hold on
slice(xgi,ygi,zgi,dati,[-20,0],[0,10],[-10,0]), shading flat
view([45 45])
title('Hermit data')
