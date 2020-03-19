% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% b) Crear una funcion migradex(x,y,z) que devuelve el gradiente exacto de
%     mifunc en el punto (x,y,z)

function [grad]=migradex(x,y,z)
   grad(1) = -2*x*exp(-x^2); % derivada parcial respecto x
   grad(2) = -(1/10)*sin((1/10)*y); % derivada parcial respecto y
   grad(3) = -cos(z); % derivada parcial respecto z
end

%x= -2 :.5 :2 ;
%y= 0 :.5 :2*pi;
%z= -2 :.5 :2 ;



