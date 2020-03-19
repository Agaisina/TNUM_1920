% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 10.4. El uso del 'while'
clc
disp('Vamos a ver cual es el primer numero entero mas grande o igual que sqrt(99)') 
NMG=1 ;
while(NMG<sqrt(100))
    NMG=NMG+1 ;
end
resp=[' sqrt(100) vale ' num2str( sqrt(100))...
' y el primer numero entero mas grande o igual es ' num2str(NMG)] ;
disp(resp)
