t=-2:0.001:3;
f1=((t>=-1)&(t<=1)) ;
f2=((t >=-1)&(t<=2)) ;
f=f1+f2;
plot(t,f) ;
xlabel('t') ;
ylabel('f(t)') ;