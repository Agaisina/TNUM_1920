% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.4. Integracion

% Usando la formula de Simpson Cerrada en 50 intervalores aproximar la
% integral. Cual es el error cometido respecto el resultado exacto.

% Para realizar este ejercicio hemos hecho uso del fichero 'mifunc1.m' en
% el cual se define la funcion cos(x) y en 'intep2.m' la formula de 
% Simpson aplicada en n subintervalos

% 1. Borramos y limpiamos todo de ejecuciones anteriores
clear all
close all
clc

% 2. Establecemos el formato a format long
format long

% 3. calculamos el valor real
disp('Valor real') 
valor_real = (sin(pi/2))-(sin(0))

% 4. Formula de Simpson Cerrada en 50 intervalores
metsim =intep2(@mifunc1,0,pi/2,50)

% 5. Calculamos el error absoluto
disp('Error absoluto') 
abs(metsim-valor_real)

% 6. Calculamos el error relativo
disp('Error relativo') 
100 * abs((metsim-valor_real)/metsim)

