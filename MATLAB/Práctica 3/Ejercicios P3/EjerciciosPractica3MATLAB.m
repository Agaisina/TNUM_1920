% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% d) Crear un script que calcule el gradiente de mifunc en los puntos 
%    (0,0,0) y (-2,1,3) usando migradex y migradtl

clear all
close all

disp(['Gradiente exacto con migradex (0,0,0)'])
grad_migradex = migradex(0,0,0)
disp(['Gradiente aproximado con migradtl (0,0,0)'])
grad_migradtl = migradtl(0,0,0)

disp(['Error relativo del gradiente exacto con migradex (0,0,0)'])
error_rel = 100 * ( norm(migradex(0,0,0)-migradtl(0,0,0),2) / norm(migradex(0,0,0),2) )
disp(['Error absoluto del gradiente aproximado con migradtl (0,0,0)'])
error_abs = norm(migradex(0,0,0)-migradtl(0,0,0),2) % error absoluto

%eerror = 100 * 0.5 * ( (norm(migradex(0,0,0) - migradtl(0,0,0),2) )
% / norm(gradx,2)) + (norm(grady-gradty,2) / norm(grady,2)) )

clear all
close all

disp(['Gradiente exacto con migradex (-2,1,3)'])
grad_migradex = migradex(-2,1,3)
disp(['Gradiente aproximado con migradtl (-2,1,3)'])
grad_migradtl = migradtl(-2,1,3)

disp(['Error relativo del gradiente exacto con migradex (-2,1,3)'])
error_rel = 100 * ( norm(migradex(-2,1,3)-migradtl(-2,1,3),2) / norm(migradex(-2,1,3),2) )
disp(['Error absoluto del gradiente aproximado con migradtl (-2,1,3)'])
error_abs = norm(migradex(-2,1,3)-migradtl(-2,1,3),2) % error absoluto