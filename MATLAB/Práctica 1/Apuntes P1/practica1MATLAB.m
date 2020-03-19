% TP 1 MATLAB - INTRODUCCION
% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 1. Operaciones basicas

2+5
7-2
3*8
2/5
3^2
10^(-5)
1e-5
sqrt(4)
4^(0.5)
pi % debe ser minuscula, sensible a mayusculas y minusculas
cos(pi)
sin(pi/2)
tan(pi)
exp(0)
log(1)
inv(3)
abs(-1)
sign(-10)
round(0.4) % redondeo a lo mas cercano
round(0.7)
ceil(0.4) % redondeo a lo mas alto
floor(0.4) % redonde a lo mas bajo
factorial(10)

% -------------------------------------------------------------------------

% 2. Formato de escritura

2+5; % con ; no muestra la salida
2+5,
2+5,7-2,3*8 % para hacer operaciones en una misma linea
format short % mostrar menos decimales
1/3
format long % mostrar mas decimales
1/3

% -------------------------------------------------------------------------

% 3. Asignacion de variables

x=5
y=10
x*y
clear x % borra x de la memoria
clear all % borra todo

% -------------------------------------------------------------------------

% 4. Vectores, matrices y sus operaciones

% 4.1. Creacion

[1 2 3 4]
[1,2,3] % vector lineal
[1;2;3] % vector columna
[1,2,3]' % transpuesta
[1,2;3,4] % matrix 2x2
M=[1,2;3,4]
V=[1,2]
MATO=ones(4,4) % genera una matriz de 1's
VECO1=ones(1,4)
VECO2=ones(4,1)
MATZ=zeros(4,4) % genera una matriz de 0's
MATD=diag([1,2,3,4])
MATV=[]

% 4.2. Vectores y listas

V2=1 :10 % lista de 1 a 10
V3=1 :0.5 :3 % lista de 1 a 3 con salto de 0.5
V4=10 :-1 :5
V5=5 :-1 :10 % ERROR: tiene que dar error --> vacio (imposible)

% 4.3. Operaciones

M*V'
det(M)
trace(M)
eig(M)
% https://www.mathworks.com/help/matlab/ref/norm.html
norm(M,2) % the maximum absolute column sum of the matriX
norm(V,1) % n = norm(v,p) returns the generalized vector p-norm
norm(V,2) % returns the Euclidean norm of vector v
M2=[0,pi/2;pi,3*pi/2]
cos(M2)
2*V2+3
M2i=M2^(-1) % matriz inversa
M2i*M2
M2i2=inv(M2)
M2i2*M2
M3=[1,2,3;4,5,6]
size(M3)
length(V)
% M3^2 % ERROR: Incorrect dimensions for raising a matrix to a power
M3.^2
cos(M3).^2+sin(M3).^2

% -------------------------------------------------------------------------

% 5. Coordenadas

M3(2,2)
M3(2,2)=55
M3(:,1) % devuelve todas las filas de la primera columna
M3(1,:) % devuelve todas las columnas de la primera fila
V3=[10;11]
M3(:,1)=V3
M3(1,1 :2)
i=2
V3(i)
V3(end) % el ultimo elemento elemento
V3(end-1)
VECA=[1,2,3]
VECB=[4,5,6]
VECC=[VECA,VECB]

% -------------------------------------------------------------------------

% 6. Polinomios

P=[-1,0,2,0,1] % a nivel de notacion el polinomio es -x^4 + 2x^2 + 1 
polyval(P,0)
polyval(P,1)
roots(P) % raices de un polinomio

% -------------------------------------------------------------------------

% 7. Numeros aleatorios con distribucion normal

rand,rand,rand % devuelve tres números aleatorios
rand(5,3) 
randperm(6) % permutaciones

% -------------------------------------------------------------------------

% 8. Condiciones

% 8.1 Tests logicos

x=1 
(x>1)
(x>=1)
(x<5)
(x<=10)
(x==1)
(x~=1) % es el distinto
isa(x,'numeric') 
y='aaa' % cadena de caracteres
isa(y,'char') 
isa(y,'logical') 
isa((y>1),'logical') 
exist x % ver si existe x (0 no existe, 1 si existe, 2 es un fichero)
exist xx

% 8.2 Operaciones

x=1
y=2 
(x==1)&(y==2) % and
(x==1)|(y>2) % or
xor((x==1),(y>2))

% -------------------------------------------------------------------------

% 9. Ouputs

% 9.1. Output textual

disp('Hola')
MESS1='El valor de x es : ' 
x=10
MESS2=[MESS1 num2str(x)] ; 
disp(MESS2)

% 9.2. Output en ficheros

diary('test.txt') % escribe todo, hasta los comentarios, crea un fichero nuevo
diary on % ponemos diary para meter las cosas en el log test.txt
1+1
MESS1='Se acabo !' ; 
disp(MESS1)
diary off

% 9.3. Output grafico

% 9.3.1. En dimension 1

dat=1 :.1 :10 ;
resdat=cos(dat);  
figure(1)
clf
plot(dat,resdat) 
grid on 
xlabel('Data') 
ylabel('Result') 
dat2=1 :.1 :10 ; 
resdat2=sin(dat2) ; 
figure(2)
clf
subplot(2,1,1)
plot(dat,resdat,'color',[1 0 0])
title('Cos')
subplot(2,1,2)
plot(dat2,resdat2,'color',[0 1 0],'linewidth',3) 
title('Sin')
figure(3)
clf
hold on
plot(dat,resdat,'color',[1 0 0]) 
plot(dat2,resdat2,'color',[0 1 0],'linewidth',3) 
legend('Cos','Sin')
saveas(gcf,'test','jpg')
close all

% 9.3.2 En dimension 2 

x=-20 :1 :20 ;
y=-30 :1 :30 ; 
[Xgrid,Ygrid]=meshgrid(x,y) ; 
A = cos(Xgrid.^2+Ygrid.^3) ; % A=rand(length(x),length(y)) ; 
surface(Xgrid, Ygrid, A)
xlabel('xdata') 
ylabel('ydata')
zlabel('result')
view(45,45)



