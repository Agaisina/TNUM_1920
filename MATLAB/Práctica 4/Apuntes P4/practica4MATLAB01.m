% Gema Correa Fernandez

% -------------------------------------------------------------------------

%%  1 Metodos de Newton-Cotes

%% 1.1 Integracion en 1D : Formulas de NC de orden 0, 1 y 2

clear all 
close all
clc
format long


disp('Primer caso : int(x^2,0,2)') 
valex1=2^3/3 
metmax1=intep0(@func1tp4,0,2,100,'max') 
metmax1-valex1 
disp('Error absoluto') 
abs(metmax1-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metmax1-valex1 )/metmax1) % error relativo

metmin1=intep0(@func1tp4,0,2,100,'min') 
metmin1-valex1 
disp('Error absoluto') 
abs(metmin1-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metmin1-valex1 )/metmin1) % error relativo

mettra1=intep0(@func1tp4,0,2,100,'tra') 
mettra1-valex1 
disp('Error absoluto') 
abs(mettra1-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((mettra1-valex1 )/mettra1) % error relativo

metsim1=intep2(@func1tp4,0,2,100)
disp('En este caso el metodo deberia ser exacto (salvo errores numericas)') 
metsim1-valex1 
disp('Error absoluto') 
abs(metsim1-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metsim1-valex1 )/metsim1) % error relativo


metmax1p=intep0(@func1tp4,0,2,10000,'max') 
metmax1p-valex1 
disp('Error absoluto') 
abs(metmax1p-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metmax1p-valex1 )/metmax1p) % error relativo

metmin1p=intep0(@func1tp4,0,2,10000,'min') 
metmin1p-valex1 
disp('Error absoluto') 
abs(metmin1p-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metmin1p-valex1 )/metmin1p) % error relativo

mettra1p=intep0(@func1tp4,0,2,10000,'tra') 
mettra1p-valex1 
disp('Error absoluto') 
abs(mettra1p-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((mettra1p-valex1 )/mettra1p) % error relativo

metsim1p=intep2(@func1tp4,0,2,10000) 
disp('Se amplian los errores')
metsim1p-valex1
disp('Error absoluto') 
abs(metsim1p-valex1) % error absoluto 
disp('Error relativo') 
100 * abs((metsim1p-valex1 )/metsim1p) % error relativo


disp('')
disp('Segundo caso : int(x^2,2,0) y int(x^3,-2,2)') 
intep0(@func1tp4,2,0,10000,'tra') 
intep0(@func2tp4,-2,2,10000,'tra')


disp('')
disp('Tercer caso : int(exp(x),0,1)')
valex2=exp(1)-1 
metmax2=intep0(@func3tp4,0,1,100,'max') 
metmax2-valex2 
disp('Error absoluto') 
abs(metmax2-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metmax2-valex2 )/metmax2) % error relativo

metmin2=intep0(@func3tp4,0,1,100,'min') 
metmin2-valex2 
disp('Error absoluto') 
abs(metmin2-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metmin2-valex2 )/metmin2) % error relativo

mettra2=intep0(@func3tp4,0,1,100,'tra') 
mettra2-valex2 
disp('Error absoluto') 
abs(mettra2-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((mettra2-valex2 )/mettra2) % error relativo

metsim2=intep2(@func3tp4,0,1,100) 
metsim2-valex2
disp('Error absoluto') 
abs(metsim2-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metsim2-valex2 )/mettra2) % error relativo


metmax2p=intep0(@func3tp4,0,1,10000,'max') 
metmax2p-valex2 
disp('Error absoluto') 
abs(metmax2p-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metmax2p-valex2 )/metmax2p) % error relativo

metmin2p=intep0(@func3tp4,0,1,10000,'min') 
metmin2p-valex2 
disp('Error absoluto') 
abs(metmin2p-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metmin2p-valex2 )/metmin2p) % error relativo

mettra2p=intep0(@func3tp4,0,1,10000,'tra') 
mettra2p-valex2 
disp('Error absoluto') 
abs(mettra2p-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((mettra2p-valex2 )/mettra2p) % error relativo

metsim2p=intep2(@func3tp4,0,1,10000) 
metsim2p-valex2
disp('Error absoluto') 
abs(metsim2p-valex2) % error absoluto 
disp('Error relativo') 
100 * abs((metsim2p-valex2 )/metsim2p) % error relativo


