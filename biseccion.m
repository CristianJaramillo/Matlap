%Metodo de Biseccion
clc
a=input('Ingrese el intervalo inicial: ');
b=input('Ingrese el intervalo final: ');
def=input('Ingrese la funci�n: ');

f=def;
tol=0.0001;




if f(a)*f(b)<0
    x=a;
    while abs(f(x))>=tol
        x=(a+b)/2;
        if f(a)*f(b)<0
            b=x;
        else
            a=x;
        end
    end
    raiz=x
else
    disp('No exista una ra�z en el intervalo')
end

