function[A,xm]=Newton(f,a,cs,n)
%Metodo en el cual se introduce la funcion y un valor inicial una cifra significativa
%y el numero de iteraciones. Consiste en calcular primero la funcion con el
%valor inicial despues calcular la derivada para despues evaluarla con el
%mismo valor inicial y asi sucesivamente hasta encontrar la raiz.
A=[];
es=0.5*10^(2-cs);
x=a;
%d=eval(f);%funcion
dif=diff(f);%derivada
%df=eval(dif);%f(dif)

    for inicia=1:n
        if dif==0
    disp('No es posible calcular la raiz, porque la derivada es 0 *cero')
    break 
else 
        xanterior=x;
        xr=x-(eval(f)/eval(dif));
        ea=abs((xr-xanterior)*100/xr);
        A=[A;inicia xr ea]
        x=xr;
        if ea<es
            break
        end
    end 
end 