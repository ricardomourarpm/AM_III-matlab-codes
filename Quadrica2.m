% From https://www.mathworks.com/matlabcentral/answers/524171-i-want-to-make-a-function-that-plots-3d-quadratic-surface
clc;
clear all;
[X,Y,Z] = meshgrid(-10:0.15:10,-10:0.15:10,-10:0.15:10);
a=1;
b=1;
c=1;
V = -X.^2/a^2 - Y.^2/b^2 + Z.^2/c^2; % Ver expressões das quádricas
p=patch(isosurface(X,Y,Z,V,1)); % Aqui introduzimos os valores admissiveis para as 3 variáveis (X,Y,Z), a expressão V e o valor a que ela será igual.
set(p,'FaceColor','red','EdgeColor','none');
daspect([1 1 1])
view(3);
camlight
