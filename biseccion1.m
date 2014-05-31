function[A,xm]=biseccion1(f,a,b,cs,n)
%Metodo de biseccion

A=[];
xi=a;
xf=b;
es=0.5*10^(2-cs);
xmi=0;

    for i=1:n
       x=xi;
       fi=eval(f);
       x=xf;
       ff=eval(f);
        if fi*ff<=0
            xm=(xi+xf)/2;
            x=xm;
            f0=eval(f);
            ea=abs(xm-xmi)*100/xm; %Valor absoluto para el error rela. pocentual aprox.
            A=[A;i xi xm xf f0 ea]
            xmi=xm;
            
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