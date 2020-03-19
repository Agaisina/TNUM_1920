% Gema Correa Fernandez

% -------------------------------------------------------------------------

% 10. Programacion

% 10.1. Creacion de script con algunos comandos utiles

clc % borrar lineas comandos
disp('Hola')
x=10 ;
disp(['x vale ' num2str(x)])
x=x+1 ;
disp(['Y ahorra x vale ' num2str(x)])
disp([])
tic
a=input('Entrar el valor de a : ') ;
atime=ceil(toc) ;
disp(['a vale ' num2str(a) ' y has tardado ' num2str(atime) ' segundos en responder']) 
tic
pause(.5) % para descansar un rato el programa
toc
AA=[ 1 2 3 ...
4 5 6 7 8] % para hacer en dos lineas
disp('Escritura en el DD') % escritura en disco duro
fid = fopen(['results.txt'],'w') ;
fprintf(fid,'Vector AA : \n') ;
fprintf(fid,'%0.12f \n',AA') ;
fclose(fid) ;
disp('Lectura en el DD')
fid = fopen(['results.txt'],'r') ; % vamos a leer
text = fgets(fid) % va linea por linea
AAR(1) = str2num(fgets(fid))
AAR(2) = str2num(fgets(fid))
afin = fscanf(fid, '%g') % leer todo el fichero hasta el final
AAR=[AAR afin']
fclose(fid) ;
pause % se apaga MATLAB hasta pulsar ENTER