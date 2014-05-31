%METODO NEWTON RAPSON
%
%DESCRIPCION DEL METODO
%
%El m�todo de Newton-Raphson es un m�todo abierto, en el sentido de que su
%convergencia global no est� garantizada. La �nica manera de alcanzar la 
%convergencia es seleccionar un valor inicial lo suficientemente cercano a 
%la ra�z buscada. As�, se ha de comenzar la iteraci�n con un valor razonablemente 
%cercano al cero (denominado punto de arranque o valor supuesto). 
%La relativa cercan�a del punto inicial a la ra�z depende mucho de la 
%naturaleza de la propia funci�n; 
%si �sta presenta m�ltiples puntos de inflexi�n o pendientes grandes en el 
%entorno de la ra�z, entonces las probabilidades de que el algoritmo diverja 
%aumentan, lo cual exige seleccionar un valor supuesto cercano a la ra�z. 
%Una vez se ha hecho esto, el m�todo linealiza la funci�n por la recta tangente 
%en ese valor supuesto. La abscisa en el origen de dicha recta ser�, 
%seg�n el m�todo, una mejor aproximaci�n de la ra�z que el valor anterior. 
%Se realizar�n sucesivas iteraciones hasta que el m�todo haya convergido lo suficiente.
%
%DESCRIPCION DEL PROGRAMA
%Este programa sirve para hacer c�lculos y encontrar el valor de la ra�z de una ecuaci�n
%Empleando para esto el m�todo newton-rapson y recibiendo como  par�metros 
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