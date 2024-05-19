%Método Newton Raphson
clc
clear 

syms x;
disp('la función f(x) se ingresa sin comillas')
f=input('  Ingrese la función f(x)=    ');
xii(1)=input('ingrese el valor inical de x: ');
tolerancia=input('Digite el porcentaje de Tolerancia: ');
N=input('  Ingrese el número máximo de iteraciones:    ');

Ea(1)=100;
i=1;

x=xii(1);
fprintf('It.\t     X \t           Error  \n');
fprintf('%2d \t %11.7f \t %11.7f \n',i,xii(i),Ea(i));

df=diff(f);

while(Ea(i)>tolerancia)&(i<=N)
    xii(i+1)=x-(eval(f)/eval(df));
    Ea(i+1)=abs((xii(i+1)-x)/xii(i+1))*100;
    x=xii(i+1);
    fprintf('%2d \t %11.7f \t %11.7f \n',i+1,xii(i+1),Ea(i+1));
    i=i+1;
end

if i >= N
    disp('No converge el método Newton Raphson') 
end

