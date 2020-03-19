% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1.3.3 Interpolación en dicmensiones superiores
% 1.3.4 Datos uniformes

clear all
close all
clc
x=-10 :10 :10;
y=-20 :10 :20;
z=-10 :10 :10;
k=-30 :20 :30;
[xg,yg,zg,kg] = ndgrid(x,y,z,k);
xi=-10 :5 :10;
yi=-20 :5 :20;
zi=-10 :5 :10;
ki=-30 :5 :30;
[xgi,ygi,zgi,kgi] = ndgrid(xi,yi,zi,ki);

for ii=1 :length(x)
for jj=1 :length(y)
for kk=1 :length(z)   
for ll=1 :length(k)
    dat(ii,jj,kk,ll) = x(ii)^2+y(jj)^2+z(kk)^2+k(ll)^2;
end
end
end
end

dati=interpn(xg,yg,zg,kg,dat,xgi,ygi,zgi,kgi,'cubic')
figure(1)
hold on
plot(x, dat(:,1,1,1),'b')
plot(xi, dati(:,1,1,1),'r')
title('Comparison fo some data')
legend('Ori.','Interp.')