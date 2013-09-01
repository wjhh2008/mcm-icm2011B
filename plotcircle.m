function plotcircle(x,y,r)
seta=0:0.001:2*pi;
xx=r*cos(seta);
yy=r*sin(seta);
plot(xx,yy,'k.-','linewidth',2)
