function [ecu,J] = ecuaciones
%función que entrega las ecuaciones no lineales 
%y el jacobiano para el método de Newton-Raphson 

syms x y 

f(1)=x*y-5*x^2+2;
f(2)=y^2+2*x^2*y-8;

ecu=[f(1);f(2)]; %vector de ecuaciones

J = jacobian([f(1);f(2)],[x y]); %matriz de primeras derivadas
