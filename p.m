clear all
clc
r=3.92;
alpha = linspace(0,2*pi,7);
x=r*cos(alpha);
y=r*sin(alpha);
w=0;
axis square
axis off
hold on
for i=-12:12
    for j=-4:3
		xadd=j*3*r+1.5*r*mod(i,2);
		yadd=i*r*sqrt(3)/2;
		x1=x+xadd;
		y1=y+yadd;
		if sum(x1.^2+y1.^2<=1600)>0		
			plot(x1,y1,'k.-','linewidth',2);
			plot(xadd,yadd,'k*');
			w=w+1;
		end
    end
end
plotcircle(0,0,40);
legend('','repeater');
hold off
w

