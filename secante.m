%METODO SECANTE
%
%DESCRIPCION DEL METODO
%Es un m�todo de tipo abierto, el cual requiere de dos puntos iniciales, 
%los cuales pueden ser arbitrarios. Lo que hace b�sicamente, es trazar rectas 
%secantes a la curva de la ecuaci�n que se esta analizando, y verificar 
%la intersecci�n de dichas rectas con el eje de las X para conocer si es 
%la ra�z que se busca.
%Al ser un m�todo abierto, converge con la ra�z con una velocidad semejante 
%a la de Newton-Raphson, aunque de igual forma corre el riesgo de no converger con esta nunca. 
%Su principal diferencia con el m�todo de Newton-Raphson es que no se requiere
%obtener la derivada de la funci�n para realizar las aproximaciones,
%lo cual facilita las cosas al momento de crear un c�digo para encontrar 
%ra�ces por medio de este m�todo. 
%
%DESCRIPCION DEL PROGRAMA
%Este programa calcula el valor de una raiz o una aproximaci�n a esta ,
%mediante el metodo de la secante , recive los siguientes valores como
%parametros por medio de un input
% g=funcion
% xi=valor inferior del intervalo
% xf=valor superior del intervalo
% csig=ccifras significativas
% iter=numero de iteraciones
%los resultados los muestra  una matriz A(n) que contiene los valores:
% it= iteacion actual ,
% xi=valor de la aproximacion
% ea=error relativo porcentual
%
%El progrma finaliza cuando se cumplen las iteracciones introducidas por el
%ususario o cuando el valor de error aproximado (ea) es igual  o menor a las
%cifras cignificativas (es).
disp('METODO SECANTE');
g=input('introduce la funcion\n');
xi=input('introduce primer valor\n');
xf=input('introduce segundo valor\n');
iter=input('introduce numero iteraciones\n');
csig=input('cifras significativas\n');
 
 A=[];
n=1;
m=0;
es=(0.5*10^(2-csig));




for k=1:iter
    x=xi;
    fxi=eval(g);
    x=xf;
    fxf=eval(g);
    temp1=xf-xi;
    temp2=fxf-fxi;
   
    xr=xi-((fxi*temp1)/temp2);
        
    ea=((xr-m)/xr)*100;
    
    m=xr;
   xf=xi;
   
   xi=xr;
    
       if abs(ea)<es
           
       A=[A;n xr  ea];
       disp('finalizado por cifras significativas');
       break
   else
       A=[A;n  xr  ea];
   end
    n=n+1;
end 
disp('iteracion      xi           ea% ');
A