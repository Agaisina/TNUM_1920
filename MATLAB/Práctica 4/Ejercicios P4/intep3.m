% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% Ejercicios

% a) Crear un script que permite aproximar la integral de una funcion en
% dimension 1 (es decir, del estilo : ?f(x)dx) mediante una formula de 
% Newton-Cotes de orden 3 (teneis que utilizar el resultado encontrado en 
% el ejercicio b) del TP4 de MAPLE)

function j=intep3(f,a,b)
    % Formula de NC de orden 3 
    interv = a :(b-a)/3 :b;
    j = 0;
    %for ii=1 :length(interv)-1
    fb0 = f(interv(1)) ; 
    fb1 = f(interv(2)) ; 
    fb2 = f(interv(3)) ; 
    fb3 = f(interv(4)) ; 
        
    h = (b-a)/3; 
    j = (3*h)/8 * (fb0+3*fb1+3*fb2+fb3) ;  
end