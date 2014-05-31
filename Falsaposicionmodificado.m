function [A,xm] = Falsaposicionmodificado(f,a,b,cs,n)
%Este metodo es parecido al de biseccion, la primer seccion es para la funcion, 
%la segunda y tercer seccion es para introducir el valor inicial xi y
%el valor final xf, la cuarta seccion es para la cifra significativa y la
%ultima es para la cantidad de iteraciones que hara el programa.
%Ejemplo
%Falsaposicionmodificado('funcion', intervalo inicial, intervalo final,
%cifra significativa, iteraciones).

A=[];       
xi=a;
xf=b;
es=0.5*10^(2-cs);
xmi=0;
%Evalua la primer grafica de la funcion de entrada
x=xi:.1:xf;
y=eval(f);
plot(x,y)
grid

for i=1:n
    x=xi;
    fi=eval(f);
    x=xf;
    ff=eval(f);           
    if xfc==2
        xf=xf/2;
        ff=ff/2;
    end
    if xic==2
        fi=fi/2;    
    end 
    if fi*ff<=0
        xm=xf-(ff*(xi-xf))/(fi-ff);
        x=xm
        f0=eval(f);
        ea=abs((xm-xmi)*100/xm);
        A=[A;i xi xm xf f0 ea];
        xmi=xm;
        
        x=xi:.1:xf;
        pendiente=(ff-fi)/(xf-xi);
        recta=pendiente*x+(ff-pendiente*xf);
        hold on
        plot(x,recta)
    else        
        disp('No es posible determinar el valor a calcular *(Existe un cero en la funcion!)')
        break
    end    
    if ea<es
        break
    end
    if fi*f0<0
        xf=xm;
        xfc+=1;
        xic=0;
    else
        xi=xm;
        xic+=1;
        xfc=0;
    end
end