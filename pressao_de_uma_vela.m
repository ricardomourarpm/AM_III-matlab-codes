%%% Centro de pressão de uma vela %%%
% O centro de pressão de uma vela com a forma triangular com vértices (0,0)
% (2,1) e (0,5) Retirado de Larson, R. et al.(2006) Cálculo - Volume 2(oitava
% edição). McGraw-Hill.

syms x y;
f = @(x) x./2;
g = @(x) 5-2.*x;

fplot(f,[0,2]);
hold on;
axis on;
fplot(g,[0,2]);% Desenhar as funções

pause;
Massa = integral2(@(x,y) y,0,2,f,g);
display(Massa);% calcular a massa

pause;
M_x = integral2(@(x,y) x.*y,0,2,f,g);

M_y = integral2(@(x,y) y.^2,0,2,f,g);% calcular os primeiros momentos

centro_de_massa = 1/Massa.*[M_x , M_y];

display(centro_de_massa);
pause;
% inserir centro de massa
plot(centro_de_massa(1), centro_de_massa(2),'o');

% Calcular momento de inércia (massa)*distância^2

I_y = integral2(@(x,y) y.*x.^2,0,2,f,g);
display(I_y);







