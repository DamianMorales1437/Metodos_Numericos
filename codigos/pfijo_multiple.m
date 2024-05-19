%Método para resolver sistemas de ecuaciones no lineales
%con Punto fijo multivariado

clc
clear

fprintf(' \n     Método de Punto fijo para múltiples variables \n');
disp('se ingresa el vector fila de las funciones despejadas, entre comillas [g1,g2]')
g=input('  Ingrese [g1,g2] =    ');
g=inline(g)
disp('se ingresan los valores iniciales en fila')
x0=input('  Valores iniciales =    ');
tol=input('  Ingrese el valor de tolerancia en %:    ');
maxiter=input('  Ingrese el número máximo de iteraciones:    ');
 
 iter = 1;
 incr = tol + 1;
 eax(1)=100;
 eay(1)=100;
 solucionx(1)=x0(1);
 soluciony(1)=x0(2);
 
 while (((abs(eax)>tol) | (abs(eay)>tol))) & (iter < maxiter)
     X = g(x0(1),x0(2));
     incr = norm(X - x0);
     iter = iter + 1;
     eax(iter)=abs((X(1)-x0(1))/X(1)*100);
     eay(iter)=abs((X(2)-x0(2))/X(2)*100);
     solucionx(iter)=X(1);
     soluciony(iter)=X(2);
     x0 = X;
 
 end
 if maxiter == iter,
   disp('No converge el método')
 end
 
solucionx=solucionx';
soluciony=soluciony';
eax=eax';
eay=eay';

table(solucionx,soluciony,eax,eay)
disp('numero de iteraciones')
disp(iter)