% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% 1.2 Derivacion en dim 2 :

clear all
close all
clc
x=-2 :.5 :2 ;
y=0 :.5 :2*pi ; 
[xgrid,ygrid]=meshgrid(x,y) ;
for i=1 :length(x)
for j=1 :length(y) 
    z(j,i)=func2([xgrid(j,i),ygrid(j,i)]) ; 
    grex=func2g([xgrid(j,i),ygrid(j,i)]) ; 
    hsex=func2h([xgrid(j,i),ygrid(j,i)]) ; 
    gradx(j,i)=grex(1) ; 
    grady(j,i)=grex(2) ; 
    hessxx(j,i)=hsex(1) ; 
    hessxy(j,i)=hsex(2) ; 
    hessyx(j,i)=hsex(3) ; 
    hessyy(j,i)=hsex(4) ;
end
end

figure(1)
clf
hold on 
surface(xgrid,ygrid,z) 
contour(xgrid,ygrid,z) 
view([45,45]) 
quiver(x,y,gradx,grady)
title('Gradiente exacto')

disp('Calculo del gradiente mediante una aproximacion de taylor centrada') 
epsi=1e-6
for i=1 :length(x)
for j=1 :length(y) 
    zpx=func2([xgrid(j,i)+epsi,ygrid(j,i)]) ; 
    zmx=func2([xgrid(j,i)-epsi,ygrid(j,i)]) ; 
    gradtx(j,i)=(zpx-zmx)/(2*epsi) ; 
    zpy=func2([xgrid(j,i),ygrid(j,i)+epsi]) ; 
    zmy=func2([xgrid(j,i),ygrid(j,i)-epsi]) ; 
    gradty(j,i)=(zpy-zmy)/(2*epsi) ;
end
end

figure(2)
clf 
hold on
surface(xgrid, ygrid,z)
contour(xgrid,ygrid,z)
view([45,45])
quiver(x,y,gradx,grady)
title('Gradiente aprox.')

disp(['Errores aboslutos en el gradiente : '])
norm(gradx-gradtx,2) 
norm(grady-gradty,2)
disp(['Error relativo : '])
error = 100 * 0.5 * ( (norm(gradx-gradtx,2) / norm(gradx,2)) + (norm(grady-gradty,2) / norm(grady,2)) )

disp('Calculo de la hessiana mediante una aproximacion de taylor centrada')

for i=1 :length(x)
for j=1 :length(y)
    zpr=func2([xgrid(j,i),ygrid(j,i)]) ; 
    zpx=func2([xgrid(j,i)+epsi,ygrid(j,i)]) ; 
    zmx=func2([xgrid(j,i)-epsi,ygrid(j,i)]) ; 
    hstxx(j,i)=(zpx+zmx-2*zpr)/(epsi)^2 ; 
    zpr=func2([xgrid(j,i),ygrid(j,i)]) ; 
    zpx=func2([xgrid(j,i),ygrid(j,i)+epsi]) ; 
    zmx=func2([xgrid(j,i),ygrid(j,i)-epsi]) ; 
    hstyy(j,i)=(zpx+zmx-2*zpr)/(epsi)^2 ; 
    zpx1=func2([xgrid(j,i)+epsi,ygrid(j,i)+epsi]) ; 
    zmx1=func2([xgrid(j,i)-epsi,ygrid(j,i)+epsi]) ; 
    zpx2=func2([xgrid(j,i)+epsi,ygrid(j,i)-epsi]) ; 
    zmx2=func2([xgrid(j,i)-epsi,ygrid(j,i)-epsi]) ; 
    hstyx(j,i)=(((zpx1-zmx1)/(2*epsi))-((zpx2-zmx2)/(2*epsi)))/(2*epsi) ; 
    hstxy(j,i)=(((zpx1-zpx2)/(2*epsi))-((zmx1-zmx2)/(2*epsi)))/(2*epsi) ; 
end
end

disp(['Errores en la Hessiana : ']) 
norm(hessxx-hstxx,2) 
norm(hessyy-hstyy,2) 
norm(hessxy-hstxy,2) 
norm(hessyx-hstyx,2)
disp(['Error relativo : '])
error = 100 * 0.25 * ((norm(hessxx-hstxx,2) / norm(hessxx,2)) + ...
                      (norm(hessyy-hstyy,2) / norm(hessyy,2)) + ...
                      (norm(hessxy-hstxy,2)) + ...
                      (norm(hessxy-hstxy,2))) % sin normalizar
