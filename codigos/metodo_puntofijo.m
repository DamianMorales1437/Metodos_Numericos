%Método Punto Fijo
clc
clear 
disp('Recuerde...ingresar el despeje de la variable x')
disp('la función g(x) se ingresa entre comillas sencillas')
g=input('  Ingrese la función g(x)=    ');
g=inline(g);

xi(1)=input('Digite el valor inicial de x: ');
tolerancia=input('Digite el porcentaje de Tolerancia: ');
N=input('  Ingrese el número máximo de iteraciones:    ');

x=xi(1);
Ea(1)=100;
i=1;
fprintf('It.\t     X \t           Error  \n');
fprintf('%2d \t %11.7f \t %11.7f \n',i,xi(i),Ea(i));
while(Ea(i)>tolerancia)&(i<=N)
    xi(i+1) = g(x);
    Ea(i+1) = abs( ((xi(i+1)-x) / xi(i+1)) ) *100 ;
    x=xi(i+1);
    fprintf('%2d \t %11.7f \t %11.7f \n',i+1,xi(i+1),Ea(i+1));
    i=i+1;
end

if i >= N
    disp('No converge el método punto fijo') 
end
