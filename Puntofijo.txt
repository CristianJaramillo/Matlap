function[A,xm]=Puntofijo(f,a,cs,n)
%Metodo en el cual le das una funcion inicial un valor inicial, una cifra significativa
%y el numero deiteraciones. Consta de evaluar la funcion conel
%valor inicial el cual se convierte xm, para despues xm ser utilizado como
%valor inicial nuevamente.

A=[];
es=0.5*10^(2-cs);
x=a;
for inicia=1:n
    xi=x;
    x1=eval(f) 
    ea=abs((x1-xi)*100/x1);
    A=[A;inicia x1 ea]
    x=x1;
    if ea<es
        break
    end
end