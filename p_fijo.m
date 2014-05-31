%%Antonio de Jesus Leon Enriquez
%%metodo punto fijo



disp('PROGRAMA METODO PUNTO FIJO:');

g=input('introduce la funcion:  \n' );

maxiter=input('introduce el limite de iteracciones:\n ');

x0=input('introduce el valor inicial: \n' );


x=x0;%%asignar el valor inicial a X para poder ser evaluada
%%g='(x^2-1)/2';
A=[x0];

for n=2:maxiter
   x=eval(g);  %%calcular y mostrar los valores obtenidos de la evaluacion
   A=[A x];
 ea=abs((A(n)-A(n-1)) /A(n))*100;%% se agrego esto
 
 
 fprintf('%7.3f \t %11.7f \t %7.3f \n',n-1,A(n),ea);
% disp('X')
%A(n) 
end
   