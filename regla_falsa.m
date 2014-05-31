%MÉTODO REGLA FALSA / FALSA POSICIÓN
%
%DESCRIPCION DEL METODO:
%
%Se busca una solución de la ecuación f(x) = 0, una raíz de f. Como en el
%método de bisección, se parte de un intervalo inicial [a0,b0] con
%f(a0) y f(b0) de signos opuestos, lo que garantiza que en su interior 
%hay al menos una raíz.
%El algoritmo va obteniendo sucesivamente en cada paso un intervalo 
%más pequeño [ak, bk] que sigue incluyendo una raíz de la función f.
%
%DESCRIPCIÓN DEL PROGRAMA:
%
%Este programa hace una emulación del algoritmo para encontrar el valor  o 
%el valor aproximado de las raíces en un intervalo ,calculando estos valores
%por el método de la regla falsa o falsa posición.
%Para hacer los cálculos el programa recibe como parámetros los siguientes 
%parámetros: 
%
% f= funsion en forma simbolica(entre comillas)
% vv= valor verdadero
% xi = extremo inferior del intervalo
% xf = extremo superior del intervalo 
% ci= cifras significativas
% n = numero de iteraciones
%el programa muestra los resultados obtenidos mostrando una matriz  A  que
%contiene los valores:
%  i=iteracion
% xi=valor inferior de intervalo
% xf=valor superior de intervalo
% xr=aproximacion
% f0= valor de la funcion
% et=error relativo total
% ae=error aproximado 
%
%%El progrma finaliza cuando se cumplen las iteracciones introducidas por el
%ususario o cuando el valor de error aproximado (ea) es igual  o menor a las
%cifras cignificativas (es).
disp('METODO FALSA POSICION / REGLA FALSA');
f=input('introduce la funcion\n');
xi=input('introduce el valor inferior del intervalo\n');
xf=input('introduce el valor superior del intervalo\n');
vv=input('introduce el valor verdadero\n');
ci=input('introduce las cifras significativas(tolerancia)\n');
n=input('introduce el numero de iteraciones\n');
A=[];
va=0;
es=(0.5*10^(2-ci));
disp(' xi       xm        xf        f0        et        ea');
for i=1:n
    x=xi; 
    fi=eval(f);
    x=xf;  
    ff=eval(f);
    if fi*ff<0
        
        xm=xf-((ff*(xf-xi))/(ff-fi));
        x=xm;
        f0=eval(f);
        et=abs(((vv-xm)/vv)*100);
        ea=abs(((xm-va)/xm)*100);
        va=xm;
        A=[A;i xi xm xf f0 et ea];
    end
    if (ea<es)
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
disp(' xi       xm        xf        f0        et        ea');
A