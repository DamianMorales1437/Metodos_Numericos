%Método para resolver sistemas de ecuaciones no lineales
%con Newton-Raphson, utilizando la subfunción "ecuaciones"

clc
clear

fprintf(' \n     Método de Newton Raphson para múltiples variables \n');
disp('se ingresan los valores iniciales en columna')
X=input('  Valores iniciales =    ');
tol=input('  Ingrese el valor de tolerancia en %:    ');
maxiter=input('  Ingrese el número máximo de iteraciones:    ');

i=1;
[ecu,J]=ecuaciones;      %funcion utilizada
eax(1)=100;
eay(1)=100;
solucionx(1)=X(1);
soluciony(1)=X(2);

while (((abs(eax)>tol) | (abs(eay)>tol))) & i < maxiter
    x=X(1);  y=X(2); %variables	
    fx = eval(ecu);
    dfx = eval(J);
    delta = - dfx \ fx;
	i = i+1;
    xante=X;
	X = X + delta;	
    eax(i)=abs((X(1)-xante(1))/X(1)*100);
    eay(i)=abs((X(2)-xante(2))/X(2)*100);
    solucionx(i)=X(1);
    soluciony(i)=X(2);
end
iter=i-1;
if i == maxiter, 
    disp('No converge el método') 
end

solucionx=solucionx';
soluciony=soluciony';
eax=eax';
eay=eay';
q
table(solucionx,soluciony,eax,eay)
disp('numero de iteraciones')
disp(iter)