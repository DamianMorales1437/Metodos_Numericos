%Gr�fica de una ecuaci�n
clc
disp('la funci�n se ingresa entre comillas sencillas')
f=input('  Ingrese la funci�n f(x)=    ');
f=inline(f);
% inline convierte a f en una funci�n que depende de x

x=[0:0.01:10];
plot(x,f(x));
grid