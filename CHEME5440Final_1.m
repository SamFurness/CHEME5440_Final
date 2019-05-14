%Sam Furness
%CHEME5440 Final
%5/11/19

%This file fits the PFK data to a curve defined in the function 
    %ReactionRate.m. The function takes values of AMP and varies 

%Define the given data. Col1 is AMP, Col2 is rate, Col3 is 95% confidence
    %interval
data=[0.000,3.003,0.59;
0.055,6.302,1.20;
0.093,29.761,5.7;
0.181,52.002,10.2;
0.405,60.306,11.8;
0.990,68.653,13.3];

x=data(:,1);%AMP
r=data(:,2);

%Create a vector with the starting points for the K, and n values
StartPoint=[10,1];

%Define the fit type to be the function created:
ft = fittype('ReactionRate(x,K,n)');
%Fit the curve and bound the parameters to be positive
f = fit(x,r,ft,'StartPoint',StartPoint,'Lower',[0,0],'Upper',[1e5,1e5]);
%Plot the curve
hold on
plot(f,x,r)
%Add the error bars
err=data(:,3);
errorbar(x,r,err)
legend('Data Given','Fitted Curve')
title('PFK Activity with Estimated Parameters')
xlabel('35AMP Activator Concentration (mM)')
ylabel('Activity of PFK (uM/hr)')
%Extract the values fitted and print them
K=f.K;
n=f.n;
X=['The K value is ',num2str(K),' mM'];
Y=['The n value is ',num2str(n)];
disp(X)
disp(Y)





