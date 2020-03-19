% Gema Correa Fernandez

% -------------------------------------------------------------------------

% Ejercicio 2
% Progamar una funcion nprimo(n) que calcula el n-isemo numero primo 
% verificando si la entrada 'n' dada es un numero natural, sino devuelve 
% un mensaje de error 'n no es un numero natural'.

% function[J]=nprimo(n)

    % lista = [];
    % for i :1 :n
    % Comprobar que n es natural
    % if 
        % devolver el primo n-iesimo
    % Si n no es natural
    % else 
        % disp(['n no es un numero natural'])
    %end 

% end


function [v]=nprimo(n)
    
    lista_primos = 1;
    es_primo = 0;
 
    % Si n no es natural devolvemos un mensaje de error
    if n ~= round(n)
        disp([num2str(n) ' no es un numero natural'])

    % Si n es natural, calculamos el n-isemo numero primo      
    else     
        lista_primos = 1;
        numero = 1;
        
        % Calculamos la lista de primos hasta la longitud n
        % verificando que sea primo o no
        while lista_primos <= n
            es_primo = 0;
            for i=1:numero
                % r = rem (numero, i) devuelve el resto despues de la 
                % division de numero por i, donde numero es el dividendo 
                % e i es el divisor (para saber si el resto es 0)
                if rem(numero,i) == 0
                    es_primo = es_primo+1;
                end
            end
            
            % El numero solamente es divisible por el mismo (positivo y 
            % negativo) y por la unidad (positiva y negativa)
            if es_primo == 2
                v(lista_primos) = numero; % para saber la lista 
                lista_primos = lista_primos+1;
                % v = v(end); % para obtener el ultimo primo        
            end
            
            numero = numero + 1;
        
        end

        disp(['El n-iesimo primo de ' num2str(n) ' es ' num2str(v(end))])

end