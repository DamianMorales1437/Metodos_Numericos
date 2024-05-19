%Gráfica de una ecuación
clc
disp('la función se ingresa entre comillas sencillas')
f=input('  Ingrese la función f(x)=    ');
f=inline(f);
% inline convierte a f en una función que depende de x

x=[0:0.01:10];
plot(x,f(x));
grid