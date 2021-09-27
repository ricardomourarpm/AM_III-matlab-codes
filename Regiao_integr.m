%% Primeira região de integração
close;
fig=figure;
f=@(x) 1-x.^2;
g=@(x) 0;
hold on;
baixo=fplot(0,[0,1]);
alto=fplot(f,[0,1]);%desenhar as funções (atenção à interseção)
plot(0,[0,1]);
xline(0);
idx=0:0.1:1;
A=area(idx,f(idx));%preencher a zona de integração
for x=0.2:0.2:0.8
    line([x x], [0 f(x)]);%linhas verticais a representar cortes
end
text(0.7,0.55,sprintf('$$f(x)=1-x^2$$'),'Interpreter', 'latex')
%% Segunda região de integração
fig2=figure;
f2=@(y) sqrt(1-y);
g2=@(y) 0;
hold on;
baixo=fplot(0,[0,1]);
alto=fplot(f,[0,1]);%desenhar as funções (atenção à interseção)
plot(0,[0,1]);
xline(0);
idx=0:0.1:1;
A=area(idx,f(idx));%preencher a zona de integração
for y=0.2:0.2:0.8
    line([0 f2(y)], [y y]);%linhas verticais a representar cortes
end
text(0.7,0.55,sprintf('$$f(y)=\\sqrt{1-y}$$'),'Interpreter', 'latex')
