%programa que encuentra una aproximacion a las raices de un conjunto de
%ecuaciones no lineales
%se incertan las ecuaciones ya transformadas
%los parametros que recive el programa son
%g=primera ecuacion(X)
%g1=segunda ecuacion (Y)
%maxiter=numero de iteraciones
%valor de x inicial
%valor incial de y
%ci= cifras significativas
% los resultados del programa los muestra una matriz A con los valores 
% i  x  y  eax eay ;
% i=iteracion
% x= valor de la raiz para x
% y = valor de la raiz para y
%eax ,y eay error aprox para Y y Y respectivamente
disp('PROGRAMA METODO encontrar raicez:');

g=input('introduce la primera ecuacion  \n' );
g1=input('introduce la segunda ecuacion \n');

maxiter=input('introduce el limite de iteracciones:\n ');

xi=input('introduce el valor x: \n' );
yi=input('introduce el valor de y: \n');

ci=input('introduce cifras significativas');
y=yi;
x=xi;
A=[];
es=(0.5*10^(2-ci));
antg=0;
antg1=0;

for i=1:maxiter
       
        
    fg=eval(g);
    x=fg;
    eax=abs(((fg-antg)/fg)*100);
    antg=fg;
    
    

    fg1=eval(g1);

    y=fg1;

    eay=abs(((fg-antg1)/fg1)*100);

    antg1=fg1;

A=[A; i  x  y  eax eay ];
if abs(eax)<es && (eay <es)
    disp('se termino por cifras significativas');
    break
    
end
end
disp('I     X       Y      eax     eay ')
A