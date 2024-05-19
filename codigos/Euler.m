%Programa para resolver una EDO de primer orden con el método de Euler
clear all
clc

fprintf('\n \tRESOLUCION DE ECUACIONES DIFERENCIALES POR MEDIO DEL METODO DE EULER\n')
fprintf('\n Ingrese la ecuacion diferencial de la forma: dy/dx=f(x,y)\n')
f=input('\n Ingrese f(x,y)\n','s');
x0=input('\n Ingrese el primer punto x0:\n');
xf=input('\n Ingrese el ultimo punto xf:\n');
y0=input('\n Ingrese la condicion inicial y(x0):\n');
h=input('\n Ingrese el valor del pasos h:\n');
n=(xf-x0)/h;
xs=x0:h:xf;
y1=y0;
i=0;
fprintf('\n''it x(i) y(i)');
fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',i,x0,y1);
for i=1:n
x0=xs(i);
ysE(i)=y0;
x=x0;
x1=xs(i+1);
y=y0;
y1=y0+h*eval(f);
fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',i,x1,y1);
y0=y1;
end

ysE(i+1)=y0;
plot(xs,ysE)
