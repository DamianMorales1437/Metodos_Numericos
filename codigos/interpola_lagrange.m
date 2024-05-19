%Programa para obtener la interpolación polinomial por el método de Lagrange
% Datos= n+1  % Polinomio de grado n

%p(x)=an*x^n+a(n-1)*x^(n-1)+...a1*x+a0

clear;clc
%Valores de las Variables "x" y "y" para interpolar
x=[1 2 3 5 6];
y=[4.75 4 5.25 19.75 36];

%Método para obtener los coeficientes del polinomio de Lagrange,
    n=length(x); 
    if length(y)~=n 
        error('x e y tienen que tener la misma longitud')
    end
    
    p=zeros(1,n);
    for i=1:n
        pol=[y(i)];
        for j=1:n
            if(i~=j)
                pol=conv([1 -x(j)],pol)/(x(i)-x(j)); %multiplica un polinomio por un binomio
            end
        end
        p=p+pol;
    end

    
%interpolación
x0=input(' X interp  = ');

   if (x0>max(x)|x0<min(x))
    fprintf('\t Valor de "x0" fuera de rango. El resultado puede ser equivocado \n\a');
   end
   y0=polyval(p,x0);
  fprintf(' Y interpolado Lagrange (%g) = %g \n',x0,y0);


% Grafica de los puntos    
xx=linspace(min(x),max(x),200); 
yy=polyval(p,xx);
hold on
plot(x,y,'o','markersize',4,'markerfacecolor','r')
plot(xx,yy,'b')
plot(x0,y0,'sr');
xlabel('x')
ylabel('y')
grid,title('Interpolación de Lagrange');
hold off

    