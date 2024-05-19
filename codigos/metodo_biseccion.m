%Método de la Biseccion
clc
disp('la función se ingresa entre comillas sencillas')
f=input('  Ingrese la función f(x)=    ');
f=inline(f);
% inline convierte a f en una función que depende de x

fprintf(' \n     Método Bisección \n');
xli=input('  Ingrese el límite inferior del intervalo:    ');
xui=input('  Ingrese el límite superior del intervalo:    ');
tol=input('  Ingrese el valor de tolerancia en %:    ');
N=input('  Ingrese el número máximo de iteraciones:    ');

i=1;
ea(1)=100;
if f(xli)*f(xui) < 0
    xl(1)=xli;
    xu(1)=xui;
    xr(1)=(xl(1)+xu(1))/2;
    fprintf('It.\t     Xl \t       Xr \t        Xu \t       Error  \n');
    fprintf('%2d \t %11.7f \t %11.7f \t %11.7f \n',i,xl(i),xr(i),xu(i));
    while (abs(ea(i)) > tol) &(i<=N)
      if f(xl(i))*f(xr(i))< 0
         xl(i+1)=xl(i);
         xu(i+1)=xr(i);
      end
      if f(xl(i))*f(xr(i))> 0
         xl(i+1)=xr(i);
         xu(i+1)=xu(i);
      end      
      xr(i+1)=(xl(i+1)+xu(i+1))/2;
      ea(i+1)=abs((xr(i+1)-xr(i))/(xr(i+1))*100);
      fprintf('%2d \t %11.7f \t %11.7f \t %11.7f \t %7.5f \n',i+1,xl(i+1),xr(i+1),xu(i+1),ea(i+1));
      i=i+1;
   end
else
   fprintf('No existe una raiz en ese intervalo\n');
end
