% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.3. Derivacion

% Crear una funcion mifunc(x,y,z) = exp(x^2 * cos(y) * sin(z))

function [F]=mifunc(x,y,z)
    F = exp(x^2 * cos(y) * sin(z));
end