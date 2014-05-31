%METODO NEWTON RAPSON
%
%DESCRIPCION DEL METODO
%
%El método de Newton-Raphson es un método abierto, en el sentido de que su
%convergencia global no está garantizada. La única manera de alcanzar la 
%convergencia es seleccionar un valor inicial lo suficientemente cercano a 
%la raíz buscada. Así, se ha de comenzar la iteración con un valor razonablemente 
%cercano al cero (denominado punto de arranque o valor supuesto). 
%La relativa cercanía del punto inicial a la raíz depende mucho de la 
%naturaleza de la propia función; 
%si ésta presenta múltiples puntos de inflexión o pendientes grandes en el 
%entorno de la raíz, entonces las probabilidades de que el algoritmo diverja 
%aumentan, lo cual exige seleccionar un valor supuesto cercano a la raíz. 
%Una vez se ha hecho esto, el método linealiza la función por la recta tangente 
%en ese valor supuesto. La abscisa en el origen de dicha recta será, 
%según el método, una mejor aproximación de la raíz que el valor anterior. 
%Se realizarán sucesivas iteraciones hasta que el método haya convergido lo suficiente.
%
%DESCRIPCION DEL PROGRAMA
%Este programa sirve para hacer cálculos y encontrar el valor de la raíz de una ecuación
%Empleando para esto el método newton-rapson y recibiendo como  parámetros 
%los  siguientes valores
%
% f=funcion
% x=valor inicial
% n=numero de iteraciones
% cif=cifras significativas
%
%los resultados de los calculos los muestra una matriz A compuesta por los valores: 
% i=iteracion
% xi=valor de aproximacion
% ea=error relativo porcentual.
%
%El progrma finaliza cuando se cumplen las iteracciones introducidas por el
%ususario o cuando el valor de error aproximado (ea) es igual  o menor a las
%cifras cignificativas (es).



f=input('introduce la funcion\n');
x=input('introduce el valor inical\n');
n=input('introduce numero de iteraciones\n');
cif=input('introduce cifras significativas\n');

A=[];
es=(0.5*10^(2-cif));
va=n;

for i=1:n
%%gx=eval(g);
dg=diff(f);
temp=eval(f)/eval(dg);

x=x-temp;

ea=abs(((x-va)/x)*100);

va=x;

A=[A; i x ea];
if ea<es
    disp('finalizado por  cifras significativas');
    break
end
end
disp('i         xi            ea')
A