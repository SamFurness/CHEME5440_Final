%Sam Furness
%CHEME5440 Final
%5/11/19

%This solves question 2b by plotting the two functions and giving the
    %nullclines
alpha=10;
n1=1;
n2=2;
v=linspace(0,10,100);
for i=1:length(v)
u11(i)=alpha/(1+v(i)^n1);
u12(i)=(-1+(alpha/v(i)))^(1/n1);
u21(i)=alpha/(1+v(i)^n2);
u22(i)=(-1+(alpha/v(i)))^(1/n2);
end
        
subplot(1,2,1)
hold on
plot(v,u11)
plot(v,u12)
title('Nullclines n=1')
ylabel('u')
xlabel('v')
hold off
subplot(1,2,2)
hold on
plot(v,u21)
plot(v,u22)
title('Nullclines n=2')
ylabel('u')
xlabel('v')
hold off

