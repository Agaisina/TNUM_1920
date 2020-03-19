% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 10.2. El uso del 'if'

clc
disp('Vamos a ver si X es mas grande que Y') 
x=input('Valor de x : ') ;
y=input('Valor de y : ') ;
disp(['x vale ' num2str(x)])
disp(['y vale ' num2str(y)])

if (x>y)
    disp(['x mas grande que y ']) 
elseif (x==y)
    disp(['x igual a y '])
else
    disp(['x mas pequeño que y ']) 
end