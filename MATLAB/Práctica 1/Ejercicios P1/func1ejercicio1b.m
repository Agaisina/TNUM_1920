% Gema Correa Fernandez

% -------------------------------------------------------------------------

% Ejercicio 1
% a) Programar una funcion f (x, y) = cos(x) + 2sin(y)
% b) Dibujar esta funcion en [??, ?] × [?2?, 2?] con una paso de 0.1

x= -pi :0.1 :pi ;
y= (-2*pi) :0.1 :(2*pi) ; 

[Xgrid,Ygrid]=meshgrid(x,y) ; 

surface(Xgrid, Ygrid, func1(Xgrid,Ygrid))
xlabel('xdata') 
ylabel('ydata')
zlabel('result')
view(45,45)