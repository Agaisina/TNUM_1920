% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.3. Derivacion

% Calcular una aproximación, con una formula de Taylor centrada, del vector
% gradiente de F = exp(x^2 * cos(y) * sin(z)) en el punto (1,2,3).

% Para realizar este ejercicio nos hemos basado en el Ejercicio realizado 
% en la practica 3 de MATLAB, haciendo uso de los ficheros 'migradtl.m' 
% donde se calcula el vector gradiente de la funcion definida en 'mifunc.m' 

% 1. Borramos y limpiamos todo de ejecuciones anteriores
clear all
close all
clc

% 2. Calcular el gradiente de mifunc en el (1,2,3) usando migradtl
disp(['Gradiente aproximado con migradtl (1,2,3)'])
grad_migradtl = migradtl(1,2,3)
