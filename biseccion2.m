%%METODO BISECCION
%
%DESCRIPCION DEL METODO
%
%el metodo biseccion es un tipo de busqueda incremental en el que el 
%intervalo se dividse seimpre a la mitad .La posicion de la raiz se determina 
%situandola en el punto medio del intervalo, dentro del cual ocurre cambio de signo
%el proceso se repite hasta tener una mejor aproximacion 
%
%
%DESCRIPCION DEL PROGRAMA
%Este programa emula el algoritmo para calcular aproximaciones  al valor de
%la raíz de una ecuación , recibe como parámetros de entrada:
%
% f= funcion en forma simbolica
% vv= valor verdadero
% xi = valor inferior de intervalo
% xf =valor superiror de intervalo
% ci= cifras significativas
% ni= numero de iteraciones
%La salida del programa la muestra una matriz A que contiene los valores:
%i=iteracion 
%xi=valor inferior de intervalo
% xf=valor superior de intervalo
% xr=aproximacion
% f0= valor de la funcion
% et=error relativo total
% ae=error aproximado 
%
%El progrma finaliza cuando se cumplen las iteracciones introducidas por el
%ususario o cuando el valor de error aproximado (ea) es igual  o menor a las
%cifras cignificativas (es).
disp('METODO BISECCION');

f=input('introduce la funcion\n');
xi=input('introduce el valor inferior del intervalo\n');
xf=input('introduce el valor superior del intervalo\n');
vv=input('introduce el valor verdadero\n');
ci=input('introduce las cifras significativas(tolerancia)\n');
ni=input('introduce el numero de iteraciones');
A=[];% matriz
va=0;% valor anterior
es=(0.5*10^(2-ci));


for i=1:ni   
    x=xi;
    fi=eval(f);
    x=xf;
    ff=eval(f);
    if fi*ff<0
        xm = (xi+xf)/2;
        x = xm;
        f0 = eval(f);
        et = abs(((vv-xm)/vv)*100);
        ea = abs(((xm-va)/xm)*100);
        va = xm;
        A=[A;i xi xm xf f0 ea et];
    end
    if (abs(ea)<es)
        disp('finalizado por cifras significativas');
        break
    else
    if fi*f0<0
        xf=xm;
    else
        xi=xm;
    end
end
end
disp('  i         xi               xr                xf              F0             ea           et');
A