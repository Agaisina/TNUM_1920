% Gema Correa Fernandez

% -------------------------------------------------------------------------

%% practicaEDP.m

clear all
close all
eqc=1;
eqo=1;

dt=.01;
dx=.1;
Itmax=1000;
L=0:dx:5;

if eqc==1
    %%%%% EDP: Ecuacion de calor
    %%%%% k d2u/dx2= du/dt, U(t,0)=u(t,L)=0, u(x,0)=f(x)
    k=.1; %.01 .5 1.
    eps=.01;

    %%%%% Estado inicial f(x)
    t=1;
    uc=zeros(Itmax,length(L));
    uc(t,20:30)=1;

    %%%%% Output grafico
    figure(1)
    plot(L,uc(t,:),'r')

    %%%%% Bucle explicita
    while(t<Itmax)&(norm(uc(t,:),2)>eps)
        t=t+1;
        for x=2:length(L)-1
            uc(t,x)=uc(t-1,x)+dt*(k*(uc(t-1,x+1)+uc(t-1,x-1)-2*uc(t-1,x))/(dx^2));
        end
        %%%%% Output grafico
        figure(1)
        clf
        plot(L,uc(t,:),'r')
        axis([0 5 0 1])
        title(['Solution | Current norm: ' num2str(norm(uc(t,:),2)) ' | iteration: ' num2str(t) ])
    end

    figure(2)
    clf
    surface(uc,'edgecolor','none','facecolor','interp')
    colorbar
    ylabel('tiempo')
    xlabel('espacio')
    zlabel('Temperature')
    axis tight
    view(45,45)
end

if eqo==1
    %%%%% EDP: Ecuacion de ondas
    %%%%% a^2 d2u/dx2= d2u/dt2, U(t,0)=u(t,L)=0, u(x,0)=f(x), u'(x,0)=g(x)
    a=1; %.01 .5 1.
    eps=.01;
    
    %%%%% Estado inicial f(x)
    t=1;
    uo=zeros(Itmax,length(L));
    uo(t,:)=0;
    g=-0.5*cos(2*pi*L/5);
    t=t+1;
    uo(t,:)=uo(t,:)+g;
    
    %%%%% Output grafico
    figure(1)
    plot(L,uo(t,:),'r')
    
    %%%%% Bucle explicita
    while(t<Itmax)&(norm(uo(t,:),2)>eps)
        t=t+1;
    for x=2:length(L)-1
      uo(t,x)=-uo(t-2,x)+2*uo(t-1,x)+(dt^2)*(a^2*(uo(t-1,x+1)+uo(t-1,x-1)-2*uo(t-1,x))/(dx^2));
    end
    
    %%%%% Output grafico
    figure(1)
    clf
    plot(L,uo(t,:),'r')
    axis([0 5 -100 100])
    title(['Solution | Current norm: ' num2str(norm(uo(t,:),2)) ' | iteration: ' num2str(t) ])
    end

    figure(2)
    clf
    surface(uo,'edgecolor','none','facecolor','interp')
    colorbar
    ylabel('tiempo')
    xlabel('espacio')
    zlabel('Temperature')
    axis tight
    view(45,45)
end