function [y,z]=Horner(x,x0)
%x es un vector con los coeficientes de P(x)=[an an-1 ... a0]
%regresa en y el polinomio evaluado en x0
%en z la primera derivada evaluado en x0
[muda n] = size(x);
y = x(1);   %calcule bn para P. 
z = x(1);   %calcule bn-1 para Q
for j = 2:n-1,
    y = x0*y + x(j); 
    z = x0*z + y;
end
y = x0*y + x(n);
