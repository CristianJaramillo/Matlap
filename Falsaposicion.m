function[A,xm]=Falsaposicion(f,a,b,cs,n)
%Este metodo es parecido al de biseccion, la primer seccion es para la funcion, 
%la segunda y tercer seccion es para introducir el valor inicial xi y
%el valor final xf, la cuarta seccion es para la cifra significativa y la
%ultima es para la cantidad de iteraciones que hara el programa.
A=[];
xi=a;
xf=b;
es=0.5*10^(2-cs);
xmi=0;
%Evalua la primer grafica de la funcion de entrada
x=xi:.1:xf;y=eval(f);plot(x,y)
hold on
grid

    for inicia=1:n %termina
       x=xi;
       fi=eval(f);
       x=xf;
       ff=eval(f);
        if fi*ff<=0
            xm=xf-((ff*(xi-xf))/(fi-ff)); %metodo de la regla falsa (Funcion de la raiz)
            x=xm; %cambio de valor donde x vale lo que trae xm
            f0=eval(f); %evalua la funcion con el valor de x igual al valor que se este almacenando
            ea=abs((xm-xmi)*100/xm); %Valor absoluto para el error rela. pocentual aprox.
            A=[A;inicia xi xm xf f0 ea]
            xmi=xm; %se almacena la raiz en xmi
            %se imprime la recta
            x=xi:.1:xf;
            pendiente =(ff-fi)/(xf-xi);
            recta=pendiente*x+(ff-pendiente*xf);
            hold on
            plot(x,recta)
            
            if fi*ff>0
            disp('No es posible determinar si existe algun cero de la funcion')
            break
        end
        if ea<es
            break
        end
        if fi*f0<0
            xf=xm;
        else
            xi=xm;
        end
    end
end