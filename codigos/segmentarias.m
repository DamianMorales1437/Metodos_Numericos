%%
% Datos
x=[1 2 3 5 6];
y=[4.75 4 5.25 19.75 36];
plot(x,y,'o','markersize',4,'markerfacecolor','b')   %gráfica los datos 
hold on

xa=input(' X interp  = ');     %valor a interpolar


%%
%interpolacion segmentaria lineal

yi=interp1(x,y,xa); % valor interpolado para xa
fprintf(' Y interpolacion lineal(%g) = %g \n',xa,yi);
plot(xa,yi,'k*') %gráfica el valor interpolado yi

    %Grafica de la interpolación lineal
    x1=[1:0.1:6];
    y1=interp1(x,y,x1); 
    plot(x1,y1,'b')
    
    
%%
%interpolacion segmentaria cúbica
%forma 1
yii=interp1(x,y,xa,'spline'); % valor interpolado xa
fprintf(' Y interpolacion cúbica(%g) = %g \n',xa,yii);
plot(xa,yii,'kv','markerfacecolor','k')   %gráfica el valor interpolado yii

    %Grafica de la interpolación cúbica
    y2=interp1(x,y,x1,'spline');
    plot(x1,y2,'r-')
    title('Interpolación segmentaria lineal y cúbica');
    legend('Datos','inter.lineal','Lineal','inter.cúbica','Cúbica')
    hold off
