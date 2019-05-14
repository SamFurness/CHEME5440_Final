%Sam Furness
%CHEME5440 Final
%5/11/19

%This solves question 2c by plotting the two functions streamline plots
    %with random start points
alpha=10;
n1=1;
n2=2;
%Define the variables meshgrid space
u=linspace(-1,10,100);
v=linspace(-1,10,100);
[U,V]=meshgrid(u,v);
%Define the f and g functions
f1=(alpha./(1+V.^n1))-U;
g1=(alpha./(1+U.^n1))-V;
f2=(alpha./(1+V.^n2))-U;
g2=(alpha./(1+U.^n2))-V;
%Create random start points
N = 200; 
ustart = max(u)*rand(N,1); 
vstart = max(v)*rand(N,1); 
%Plot the streamlines in the u-v space
subplot(1,2,1)
hold on
h=streamline(U,V,f1,g1,ustart,vstart);
set(h,'color','red')
title('Streamlines for n=1')
xlabel('u')
ylabel('v')
u=2.7;
v=2.7;
labels={'Stable Steady State'};
plot(u,v,'o')
text(u,v,labels,'VerticalAlignment','top','HorizontalAlignment','right')
hold off
subplot(1,2,2)
hold on
k=streamline(U,V,f2,g2,ustart,vstart);
set(k,'color','blue')
title('Streamlines for n=2')
xlabel('u')
ylabel('v')
u3=[0,2,10];
v3=[10,2,0];
labels={'Stable Steady State','Unstable Steady State','Stable Steady State'};
plot(u3,v3,'o')
text(u3,v3,labels,'VerticalAlignment','bottom','HorizontalAlignment','right')
hold off




