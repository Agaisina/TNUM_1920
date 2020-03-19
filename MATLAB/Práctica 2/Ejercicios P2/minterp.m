% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% Programar una funcion sol = minterp(x, y, t, met), donde x representa 
%  los puntos de mediciones, y los datos y t los puntos de inteprolacion, 
%  que devuelve en funcion de la cadena met.

function [sol]=minterp(x,y,t,met)

    % Comprobamos que la longitud de x e y es la misma
    if length(x) ~= length(y)
        error('La dimension de X e Y debe ser igual')
    
    % Si la dimension es la misma
    else
        % Si met=?linear? : sol son los datos obtenidos por interpolacion 
        % lineal (con la formula vista en clase) de (x, y) en los puntos 
        % de interpolacion t.
        % Tenemos que ver en que intervalo est y aplicar la formula de la
        % pagina 8 del capitulo 2.
        if isequal(met,'linear') 
            sol = 0;
            for i=2:length(x)
                for j=1:length(t)
                    if ((t(j)>=x(i-1))&&(t(j)<=x(i)))
                        sol(j) = y(i-1) + (t(j)-x(i-1))*((y(i)-y(i-1))/(x(i)-x(i-1)));
                    end
                end
            end 

        % Si met=?lagrange? : sol son los datos obtenidos por interpolacion 
        % de polinomios de lagrange (con la formula vista en clase) de (x, y) 
        % en los puntos de interpolacion t.
        % No hace falta saber el intervalo en el que esta, aplicar la 
        % formula de la pagina 11 del capitulo 2 (es un doble FOR con un
        % IF), evaluar P en el punto t
        elseif isequal(met,'lagrange') 
            L = ones(length(x),length(t));
            sol = 0;
            for i=1:length(x)
                for j=1:length(x)
                    if (i ~= j)
                        L(i,:) = L(i,:).*(t-x(j))/(x(i)-x(j));
                    end
                end
                sol = sol + y(i)*L(i,:);
            end
        end
    end

end
