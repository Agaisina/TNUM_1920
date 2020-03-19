% Gema Correa Fernandez

% -------------------------------------------------------------------------

clear all
close all
clc

%% Datos

x = [-10 -3 0 2 5 10];
y = [-5 0 1 5 2 5];
t = -10 :.1 :10;

%% Interpolacion Lineal

% Codigo propio
int_lin_propio = minterp(x,y,t,'linear');

% Codigo MATLAB
% https://es.mathworks.com/help/matlab/ref/interp1.html
int_lin_matlab = interp1(x,y,t,'linear');

disp(['La longitud de la interpolacion programada (' num2str(length(int_lin_propio)) ...
    ') es la misma que la de MATLAB (' num2str(length(int_lin_matlab)) ')'])

subplot(2,1,1); 
plot(t,int_lin_propio,'b*')
title('Intepolacion Lineal programada')
subplot(2,1,2); 
plot(t,int_lin_matlab,'b*')
title('Intepolacion Lineal MATLAB')

%% Interpolacion Lagrange

% Codigo propio
int_lag_propio = minterp(x,y,t,'lagrange');

% Codigo MATLAB
% ...

disp(['La longitud de la interpolacion programada (' num2str(length(int_lag_propio)) ')'])

plot(t,int_lag_propio,'b*')
title('Intepolacion Lagrange programada')

%% Para visualizarlas juntas

clear all
close all
clc

x = [-10 -3 0 2 5 10];
y = [-5 0 1 5 2 5];
t = -10 :.1 :10;

int_lin_propio = minterp(x,y,t,'linear');
int_lag_propio = minterp(x,y,t,'lagrange');

plot(t,int_lin_propio)
hold on 
plot(t,int_lag_propio)

legend('Lineal','Lagrange')

hold off
