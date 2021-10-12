syms x y z;
f=@(x,y) x^2+3;
g=@(x,y) 2*x+6;
h=@(x,y) 9-x;

tmp1=int(1,z,f,g);
display(tmp1);
tmp2=int(tmp1,y,0,6);
display(tmp2);
vol1=int(tmp2,x,-1,1);

tmp3=int(1,z,f,h);
display(tmp3);
tmp4=int(tmp3,y,0,6);
display(tmp4);
vol2=int(tmp4,x,1,2);

display(vol1+vol2);
