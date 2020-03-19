% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.1 Comandos basicos

function [sol] = script(x)
    
    % Calculamos la lista de primos hasta la longitud n
    i = 1:x;
     
    % Si n no es natural devolvemos un mensaje de error
    if x ~= round(x)
        disp([num2str(x) ' no es un numero natural'])
     
    % Devolvemos 1 si x es un primo (el 2 tiene que dar primo)
    % rem (x, L) devuelve el resto despues de la division de numero por L, 
    % donde x es el dividendo e L es el divisor (para saber si el resto es
    % 0). Se igual a 2 porque el numero solamente es divisible por el mismo 
    % (positivo y negativo) y por la unidad (positiva y negativa)
    elseif nnz(rem(x,i)==0)==2
        disp(['script(' num2str(x) ')=1'])
        
    % Devolvemos 2 si x es par (salvo el 2)   
    elseif (mod(x,2) == 0) && (x ~= 2) && (x ~= 0)   
        disp(['script(' num2str(x) ')=2'])
    
    % Devolvemos 0 en los demas casos    
    else 
        disp(['script(' num2str(x) ')=0'])
    end 
end


