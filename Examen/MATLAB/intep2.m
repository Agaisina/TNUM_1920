% Gema Correa Fernandez 
% EXAMEN TIPO B

% -------------------------------------------------------------------------

%% 2.4. Integracion

% Formula de NC de orden 2 : Simpson cerrado 

function j=intep2(f,a,b,n)
    format long
    
    interv=a :(b-a)/(n-1) :b ;
    j=0 ;
    
    for ii=1 :length(interv)-1
        fb0=f(interv(ii)) ; 
        fb1=f((interv(ii)+interv(ii+1))/2) ; 
        fb2=f(interv(ii+1)) ; 
        h=((interv(ii+1)-interv(ii))/2) ; 
        j=j+(h/3)*(fb0+4*fb1+fb2) ;
    end
end