% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% a) Crear una funcion mifunc(x,y,z)=exp(?x2)+cos(y/10)?sin(z)

function [F]=mifunc(x,y,z)
    F = exp(-x^2)+cos(y/10)-sin(z);
end