%Programa para obtener la interpolación polinomial por el método de Newton
% Datos= n+1  % Polinomio de grado n

clear;clc
%Valores de las Variables "x" y "y" para interpolar
x=[1 2 3 5 6];
y=[4.75 4 5.25 19.75 36];

%variables auxiliares
xu=x;yu=y;
%Formamos una Matriz cero de la longitud del Vector "y"
d=zeros(length(y));
% Se genera una Matriz cero donde la primera columna sea el Vector "y"
d(:,1)=y';

%Formando las diferencias divididas de Newton
for k=2:length(x)
    for j=1:length(x)+1-k
    d(j,k)=(d(j+1,k-1)-d(j,k-1))/(x(j+k-1)-x(j));
    end
end

% Formando el Polinomio con el método de Newton
for w=1:length(x)
dq=num2str(abs(d(1,w)));
    if w>1
    if x(w-1)<0
    signo1='+';
    else
    signo1='-';
    end
    end
        if d(1,w)<0
        signo2='-';
        else
        signo2='+';
        end
            if w==1
            acum=num2str(d(1,1));
            elseif w==2
            polinomioactual=['(x' signo1 num2str(abs(x(w-1))) ')' ];
            actual=[dq '*' polinomioactual];
            acum=[acum signo2 actual];
            else
            polinomioactual=[polinomioactual '.*' '(x' signo1 num2str(abs(x(w-1))) ')' ];
            actual=[dq '*' polinomioactual];
            acum=[acum signo2 actual];
            end
end

% Presentación de Resultados
fprintf('\n Valores de X y Y \n');
disp(xu);
disp(yu);
fprintf('\n Polinomio de Interpolación : %s \n',acum);
x=input(' X interp  = ');
    if x>max(xu)|x<min(xu)
    fprintf('\t Valor de "X" fuera de rango. El resultado puede ser equivocado \n\a');
    end
xinterp=x;
yinterp=eval(acum);
fprintf(' Y interpolado Newton(%g) = %g \n',x,yinterp);

% Grafica de los puntos
xg=linspace(min(xu),max(xu));
x=xg;yg=eval(acum);
plot(xg,yg,xu,yu,'xk',xinterp,yinterp,'sr');
grid,title('\bf DIFERENCIAS DIVIDIDAS')

