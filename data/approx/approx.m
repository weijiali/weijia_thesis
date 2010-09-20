x=0:1:1;
y=x;
[X,Y]=meshgrid(x,y);
X1=cat(2,X,X);
Y1=cat(2,Y,Y);
Z1=cat(2,X.*Y,(X+Y)/2);
surf(X1,Y1,Z1);
rotate3d on;
