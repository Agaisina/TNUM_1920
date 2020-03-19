% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% Edo1.m

% EDO de dimensión 1 simple con resolución con codigo propio
clear all
close all
f=@(t,u) cos(t*u)*sin(t) ;      % Función de la ED
t0=2;                           % Tiempo inicial
tf=50;                          % Tiempo final
solu(1)=1;                      % Solucion inicial
dt=0.01;                        % Paso de tiempo
tline=t0:dt:tf;                 % Los tiempos que simulamos

for i=2:length(tline)
    solu(i)=solu(i-1)+dt*f(t0+dt*(i-1),solu(i-1));
end

figure(1)
clf
plot(tline,solu,'linewidth',2)
grid on
axis tight
title('Solution')
xlabel('Time (s)')
ylabel('u(t)')

% EDO con el resolvedor de Matlab
[t,y] = ode45(f, [2 50], 1);

figure(2)
clf
plot(t,y,'linewidth',2)
grid on
axis tight
title('Solution')
xlabel('Time (s)')
ylabel('u(t)')

% EDO de dimensión 1 acopladas
clear all

f=@(u,v,t) -0.1*v*u+0.1*u; % Función de la ED
g=@(u,v,t) +0.1*u*v-0.5*v;

t0=0;               % Tiempo inicial
tf=100;             % Tiempo final
solu(1)=0.5;        % Solucion inicial
solv(1)=0.7;        % Solucion inicial
dt=0.01;            % Paso de tiempo
tline=t0:dt:tf;     % Los tiempos que simulamos

for i=2:length(tline)
    solu(i)=solu(i-1)+dt*f(solu(i-1),solv(i-1),t0+dt*(i-1));
    solv(i)=solv(i-1)+dt*g(solu(i-1),solv(i-1),t0+dt*(i-1));
end

figure(3)
clf
hold on
plot(tline,solu,'b','linewidth',2)
plot(tline,solv,'r','linewidth',2)
grid on
axis tight
title('Solution')
xlabel('Time (s)')
ylabel('Density')

h=@(t,u) [-0.1*u(1)*u(2)+0.1*u(1);+0.1*u(1)*u(2)-0.5*u(2)];

[t,y] = ode45(h,[0 100],[0.5; 0.7]);
figure(4)
clf
hold on
plot(t,y(:,1),'b','linewidth',2)
plot(t,y(:,2),'r','linewidth',2)
grid on
axis tight
title('Solution')
xlabel('Time (s)')
ylabel('Density')
legend('Subs.','Bact.')
legend('Subs.','Bact.')