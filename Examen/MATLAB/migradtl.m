% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.3. Derivacion

% Crear una funcion migradtl(x, y, z) script que permite calcular el 
% gradiente aproximado de mifunc en el punto (x,y,z) usando una 
% proximacion de Taylor centrada con una perturbacion de 10^(-6).

function [grad]=migradtl(x,y,z)
    epsi=1e-6;
    
    format long 
    
    zpx = mifunc(x+epsi,y,z) ;
    zmx = mifunc(x-epsi,y,z) ;
    grad(1)=(zpx-zmx) / (2*epsi) ;
    
    zpy=mifunc(x,y+epsi,z) ; 
    zmy=mifunc(x,y-epsi,z) ; 
    grad(2)=(zpy-zmy)/(2*epsi) ;
    
    zpz=mifunc(x,y,z+epsi) ; 
    zmz=mifunc(x,y,z-epsi) ; 
    grad(3)=(zpz-zmz)/(2*epsi) ;
end 