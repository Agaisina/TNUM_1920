% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.2. Interpolacion

% Consideramos los datos siguientes (tiempo = [-2 1 7 9] y valor = [-1 3 0
% 2]). Calcular, para unos 100 puntos equi-espaciados en el intervalo
% [-2,9], unos valores interpolados obtenidos usando una función de
% interpolación a base de polinomios del hermite. Representar estos valores
% en un grafica.

% 1. Borramos y limpiamos todo de ejecuciones anteriores
clear all
close all
clc

% 2. Definimos las variables
tiempo = [-2 1 7 9];
valor = [-1 3 0 2];
k = 1;

% 3. Visualizamos los puntos de interpolacion
figure(k)
clf
plot(tiempo,valor,'o')
title('Puntos de interpolacion')

% 4. Calcular los 100 puntos equi-espaciados en el intervalo [-2,9]. La h 
% da 0.1100 que de longitud es 101, con 0.111 la longitud es de 100
h = ((abs(-2)+9)/100); 

% 5. Calculamos el intervalo (xint: punto donde voy a calcular el valor
% interpolado)
xint = -2 :h: 9

% 6. Calcula la interpolacion a base de polinomios del Hermite
intep = interp1(tiempo,valor,xint,'cubic')
k=k+1;
figure(k)
clf
hold on

% 7. Los represento en una gráfica
plot(xint,intep,'go')
plot(xint,intep,'r')
plot(tiempo,valor,'s')
title('Interpolacion cubic (Hermite)') 
% Como se ve no sobrepasa los valores maximos y minos de los datos
