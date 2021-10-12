f = @(x,y) y.*sin(x)+x.*cos(y);
res1=integral2(f,-pi,2*pi,0,pi);
res1
g = @(x,y) 1./(sqrt(x+y).*(1+x+y).^2);
res2=integral2(g,0,1,0,@(x) 1-x);
res2

