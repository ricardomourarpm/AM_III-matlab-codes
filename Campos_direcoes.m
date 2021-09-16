clear all; clc; close('all');
f=@(x,y) 2*y./x; % EDO:y'=f(x,y)
t0=-6;tf=6;
[X,Y]=meshgrid(t0:1:tf,-6:1:6); %criar malha
m=f(X,Y); %Declive da reta tangente a cada ponto da malha
vD=ones(size(m)); %todos os vetores diretores v=(1,m) de cada ponto da malha
normas=sqrt(vD.^2+m.^2) %para calcular versores v/|v|
figure(1);
quiver(X,Y,vD./normas,m./normas,0.4);
hold on;grid on;
%% Gráfico de algumas curvas integrais
sol1=@(x) x.^2;
sol2=@(x) -x.^2;
sol3=@(x) 0.5*x.^2;
sol4=@(x) 2*x.^2;
curva1=fplot(sol1,[-sqrt(6),sqrt(6)]); set(curva1,'Color','r','LineWidth',2);
curva2=fplot(sol2,[-sqrt(6),sqrt(6)]); set(curva2,'Color','b','LineWidth',2);
curva3=fplot(sol3,[-sqrt(12),sqrt(12)]); set(curva3,'Color','g','LineWidth',2);
curva4=fplot(sol4,[-sqrt(3),sqrt(3)]); set(curva4,'Color','y','LineWidth',2);
hold on;
