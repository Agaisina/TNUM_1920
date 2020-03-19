% Gema Correa Fernandez

% -------------------------------------------------------------------------

% Obs. : vamos a crear una funcion de function de R en R?2 (x)-> (sum(x), norm(x,2)) 
function [J,N]=mifunc2(x)
    N=norm(x,2);
    J=sum(x);
end

% Nota : Se tiene que ir al workspace : [J,N]=mifunc2(1)