%Método Newton Horner
clc
clear
disp('Método Newton-Horner para polinomios P(x)')

x=input('  Ingrese el vector de los coeficientes de P(x)=[an an-1 ... a0] = ');
x0=input('  Ingrese el valor inicial:    ');
tol=input('  Ingrese el valor de tolerancia en %:    ');
N=input('  Ingrese el número máximo de iteraciones:    ');

ea(1)=100;
xii(1)=x0;
i=1;

fprintf('It.\t     X \t           Error  \n');
fprintf('%2d \t %11.7f \t %11.7f \n',i,xii(i),ea(i));

while (ea(i)>tol) &(i<=N)
    xante=xii(i);
    [y,z]=Horner(x,xante);
    xii(i+1)=xii(i)-(y/z);
    ea(i+1)=abs((xii(i+1)-xante)/xii(i+1))*100;
    i=i+1;
    fprintf('%2d \t %11.7f \t %11.7f \n',i,xii(i),ea(i));
end
