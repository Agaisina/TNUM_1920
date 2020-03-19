% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% 1.2 Integracion en 2d : Formulas de NC de orden 0, 1

clear all
close all
clc
format long

disp('')
disp('int(x^2+y^2,0,2)')
valex3=2/3 

metmax3=intep0d2(@func4tp4,0,1,100,0,1,100,'max')
metmax3-valex3 
disp('Error absoluto') 
abs(metmax3-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((metmax3-valex3 )/metmax3) % error relativo

metmin3=intep0d2(@func4tp4,0,1,100,0,1,100,'min') 
metmin3-valex3 
disp('Error absoluto') 
abs(metmin3-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((metmin3-valex3 )/metmin3) % error relativo

mettra3=intep0d2(@func4tp4,0,1,100,0,1,100,'tra') 
mettra3-valex3 
disp('Error absoluto') 
abs(mettra3-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((mettra3-valex3 )/mettra3) % error relativo

metmax3p=intep0d2(@func4tp4,0,1,500,0,1,500,'max') 
metmax3p-valex3 
disp('Error absoluto') 
abs(metmax3p-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((metmax3p-valex3 )/metmax3p) % error relativo

metmin3p=intep0d2(@func4tp4,0,1,500,0,1,500,'min')
metmax3p-valex3 
disp('Error absoluto') 
abs(metmin3p-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((metmin3p-valex3 )/metmin3p) % error relativo

mettra3p=intep0d2(@func4tp4,0,1,500,0,1,500,'tra') 
mettra3p-valex3
disp('Error absoluto') 
abs(mettra3p-valex3) % error absoluto 
disp('Error relativo') 
100 * abs((mettra3p-valex3 )/mettra3p) % error relativo

