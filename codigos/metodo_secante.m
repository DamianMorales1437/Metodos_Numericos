%Método Secante
clc
clear

fprintf(' \n     Método de la Secante \n');
disp('la función se ingresa entre comillas sencillas')
f=input('  Ingrese la función f(x)=    ');
f=inline(f);
% inline convierte a f en una función que depende de x

xante=input('  Ingrese el valor anterior de x:    ');
xact=input('  Ingrese el valor nuevo de x:    ');
tol=input('  Ingrese el valor de tolerancia en %:    ');
N=input('  Ingrese el número máximo de iteraciones:    ');

ea(1)=100;
xnueva(1)=xact;
i=1;
fprintf('It.\t     X \t           Error  \n');
fprintf('%2d \t %11.7f \t %11.7f \n',i,xnueva(1),ea(1));
while (ea(i)>tol) &(i<=N)
    z=f(xante);
    y=f(xact);
    i=i+1;
    xnueva(i)=xact-((y*(xante-xact))/(z-y));
    ea(i)=abs(((xnueva(i)-xact)*100)/xnueva(i));
    xante=xact;
    xact=xnueva(i);
    fprintf('%2d \t %11.7f \t %11.7f \n',i,xnueva(i),ea(i));
end
