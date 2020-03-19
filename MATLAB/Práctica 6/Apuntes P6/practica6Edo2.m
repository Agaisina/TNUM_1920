% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% Edo2.m

clear all
close all

% Creation del tiempo fisico
h=0.001; %paso de tiempo
I=0:h:9;

%%%%%% Definicion de las condiciones iniciales
xs(1)=1; %% corresponde a la soluicon en el tiempo 0
xs(2)=1;

%%%%% Iteration de Taylor orden 2
for n=3:length(I)
    xs(n)=2*xs(n-1)-xs(n-2)+h^2*((4*I(n)^2-3)*... 
          exp(-I(n)^2)+xs(n-1));
end

%%%%% Metodo de resolucion mediante sistema de
%%%%% ecuacion de orden 1
xs1(1)=1;  %% esta variable es la solucion de mi sistema
xs2(1)=0;

%%%% Metodo de Taylor orden 1
for n=2:length(I)
     xs1(n)=xs1(n-1)+h*(xs2(n-1));
     xs2(n)=xs2(n-1)+h*(xs1(n-1)+((4*I(n)^2-3)*exp(-I(n)^2)));
end

%%%%% Solucion exacta:
for n=1:length(I)
    xe(n)=exp(-I(n)^2);
end

%%%% calcular el error
for n=1:length(I)
    errxs(n)=abs(xs(n)-xe(n));
    errxs1(n)=abs(xs1(n)-xe(n));
end

disp(['error medio metodo T2:' num2str(mean(errxs))])
disp(['error medio metodo ST1:' num2str(mean(errxs1))])

figure(1)
clf
hold on
plot(I,xs,'b')
plot(I,xs1,'g')
plot(I,xe,'r')
legend('T2','ST1','Ex.')
xlabel('Time')
ylabel('Solution')

figure(2)
clf
hold on
plot(I,errxs,'b')
plot(I,errxs1,'g')
legend('T2','ST1')
xlabel('Time')
ylabel('Error')