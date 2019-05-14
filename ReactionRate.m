function r=ReactionRate(x,K,n)
kcat=0.4*3600;
E1=0.12;
F6P=0.1;
KF6P=0.11;
ATP=2.3;
KATP=0.42;
W1=0.045105781;
W2=74.02765496;
for i=1:length(x)
f2(i)=(x(i)^n)/((K^n)+x(i)^n);
v(i)=(W1+W2*f2(i))/(1+W1+W2*f2(i));
r_solve(i)=kcat*E1*(F6P/(KF6P+F6P))*(ATP/(KATP+ATP))*v(i);
end
r=transpose(r_solve);

end
