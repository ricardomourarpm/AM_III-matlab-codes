z = linspace(1,7,40);
y = linspace(1,5,40);
[y,z] = meshgrid(y,z);

x = sqrt(4 - (4/9)*(z-4).^2);
mesh(x,y,z);

hold on;
x = -sqrt(4 - (4/9)*(z-4).^2);
mesh(x,y,z);

grid on;
box on;
view([130,30]);

xlabel('eixo xx');
ylabel('eixo yy');
zlabel('eixo zz');
title('Gráfico');