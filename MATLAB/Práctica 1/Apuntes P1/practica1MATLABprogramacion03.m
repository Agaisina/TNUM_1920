% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 10.3. El uso del 'for'

clc
disp('Vamos a calcular la raiz de los diez priemros numeros enteros y lso guardamos en una lista')
lr=[] ; % la lista es vacia
for i=1 :1 :10
    lr(i)=sqrt(i) ;
    disp(['la raiz de ' num2str(i) ' es ' num2str(lr(i))])
end