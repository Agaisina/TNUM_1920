% Gema Correa Fernandez

% -------------------------------------------------------------------------

function J=func1ds(x) 
    J=2*pi*(sin(cos(x)*2*pi)*sin(x)*2*pi*(-sin(x))-(cos(x))*cos(cos(x)*2*pi));
end