% Gema Correa Fernandez

% -------------------------------------------------------------------------

function j=intep0d2(f,a,b,n,c,d,m,type)
    % Metodo de NC P0 o del prismo en dim 2 
    intervx=a :(b-a)/(n-1) :b ;
    intervy=c :(b-a)/(m-1) :d ;
    j=0 ;
    for ii=1 :length(intervx)-1
        for jj=1 :length(intervy)-1
            xa=intervx(ii) ;
            xb=intervx(ii+1) ;
            ya=intervy(jj) ;
            yb=intervy(jj+1) ;
        if type=='max' 
            fb=max([f(xa,ya),f(xa,yb),f(xb,ya),f(xb,yb)]) ; 
        elseif type=='min' 
            fb=min([f(xa,ya),f(xa,yb),f(xb,ya),f(xb,yb)]) ; 
        elseif type=='tra' 
            fb=(f(xa,ya)+f(xa,yb)+f(xb,ya)+f(xb,yb))/4 ; 
        end
        
        j=j+fb*(xb-xa)*(yb-ya) ;
    end
end