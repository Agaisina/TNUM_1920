% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% 1 Metodos de Taylor

%% 1.1 Derivacion en dim 1 :

clear all
close all
clc
x=0 :.1 :2*pi ; 
y=func1(x) ;

for i=1 :length(x) 
    yd(i)=func1d(x(i)) ; 
end

figure(1)
clf
hold on 
plot(x,y,'r') 
plot(x,yd,'b') 
axis tight

disp('Calculo de la derivada primera mediante una aproximacion de taylor de un solo punto')
derivt1=[] ;
eps=1e-6 ;

for i=1 :length(x) 
    yr=func1(x(i)) ; 
    ym=func1(x(i)+eps) ; 
    derivt1(i)=(ym-yr)/eps ; 
end

figure(1)
plot(x,derivt1,' :g') 
errt1=norm(derivt1-yd,2) ;
disp(['Error absoluto Taylor 1 : ', num2str(errt1)])
disp(['Error relativo Taylor 1 : ', num2str(100*errt1/norm(yd,2))])

disp('Calculo de la derivada primera mediante una aproximacion de taylor centrada') 
derivt2=[] ;
eps=1e-6 ;

for i=1 :length(x) 
    yp=func1(x(i)+eps) ; 
    ym=func1(x(i)-eps) ; 
    derivt2(i)=(yp-ym)/(2*eps) ; 
end

errt2=norm(derivt2-yd,2) ;
disp(['Error absoluto Taylor 2 : ', num2str(errt2)])
disp(['Error relativo Taylor 2 : ', num2str(100*errt2/norm(yd,2))])

for i=1 :length(x) 
    yds(i)=func1ds(x(i)) ; 
end

figure(2)
clf
hold on 
plot(x,y,'r') 
plot(x,yds,'b') 
axis tight

disp('Calculo de la derivada seguna mediante una aproximacion de taylor') 
derivts=[] ;
eps=1e-6 ;

for i=1 :length(x)
    yr=func1(x(i)) ; 
    yp=func1(x(i)+eps) ; 
    ym=func1(x(i)-eps) ; 
    derivts(i)=(yp-2*yr+ym)/(eps)^2 ; 
end

figure(2)
plot(x,derivts,' :g') 
errts=norm(derivts-yds,2) ;
disp(['Error absoluto Taylor 1 : ', num2str(errts)])
disp(['Error relativo Taylor 1 : ', num2str(100*errts/norm(yds,2))])

