% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% Ejercicios TP4

disp('Ejercicio TP4') 

format long

disp('Valor real') 
valor_real = (exp(1)-exp(0))

metsim = intep3(@functp3,0,1) 
disp('En este caso el metodo deberia ser exacto (salvo errores numericas)') 
metsim - valor_real

disp('Error absoluto') 
abs(metsim-valor_real)

disp('Error relativo') 
100 * abs((metsim-valor_real)/metsim)
