%Programa para resolver una EDO de primer orden con el método de RK3
clear all
clc

fprintf('\n \tRESOLUCION DE ECUACIONES DIFERENCIALES POR MEDIO DEL METODO DE RK3\n')
fprintf('\n Ingrese la ecuacion diferencial de la forma: dy/dx=f(x,y)\n')
f=input('\n Ingrese f(x,y)\n','s');
x0=input('\nIngrese el primer punto x0:\n');
xf=input('\nIngrese el ultimo punto xf:\n');
y0=input('\nIngrese la condicion inicial y(x0):\n');
h=input('\nIngrese el valor del pasos h:\n');
n=(xf-x0)/h;
xs=x0:h:xf;
y1=y0;
i=0;
fprintf('\n''it x(i) y(i)');
fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',i,x0,y1);
for i=1:n
x0=xs(i);
ysR(i)=y0;
x1=xs(i+1);
x=x0;
y=y0;
k1=eval(f);
xp=x0+(h/2);
yp=y0+h*k1/2;
x=xp;
y=yp;
k2=eval(f);
x=x1;
yp2=y0-k1*h+2*k2*h;
y=yp2;
k3=eval(f);
y1=y0+h*(k1+4*k2+k3)/6;
fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',i,x1,y1);
y0=y1;
end

ysR(i+1)=y0;
plot(xs,ysR)