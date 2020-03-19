% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.1 Comandos basicos

% Crear una funcion que toma como parametro un numero entero x que devuelve
% 1 si es x es un primo, 2 si x es par (salvo 2) y 0 en los demas casos.
% Por ejemplo: script(7)=1, script(9)=0 y script(8)=2

% Para realizar este ejercicio hemos hecho uso del fichero 'script.m'

% 1. Borramos y limpiamos todo de ejecuciones anteriores
clear all
close all
clc

% 2. Realizamos algunos ejemplos
disp(['script(7) debe de dar 1, porque es primo'])
script(7)

disp(' ')
disp(['script(9) debe de dar 0, porque esta en todo lo demas'])
script(9)

disp(' ')
disp(['script(8) debe de dar 2, porque es par'])
script(8)

disp(' ')
disp(['script(0) debe de dar 0, porque esta en todo lo demas, no considerado par'])
script(0)

disp(' ')
disp(['script(0) debe de dar 1, porque es primo'])
script(19)

disp(' ')
disp(['script(2) debe de dar 1, porque es primo'])
script(2)
