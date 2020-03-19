% Gema Correa Fernandez

% -------------------------------------------------------------------------

function j=intep0(f,a,b,n,type)
    % Metodo de NC P0 o del trapecio P1
    interv=a :(b-a)/(n-1) :b ;
    j=0 ;
    for ii=1 :length(interv)-1
        if type=='max'
            fb=max(f(interv(ii)),f(interv(ii+1)) ) ;
        elseif type=='min'
            fb=min(f(interv(ii)),f(interv(ii+1)) ) ;
        elseif type=='tra'
            fb=(f(interv(ii))+f(interv(ii+1)))/2 ;
        end
        j=j+fb*(interv(ii+1)-interv(ii)) ;
    end
end