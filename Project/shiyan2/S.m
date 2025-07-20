k1=-2: 2;
k2=-2: 2;
f1=[0 1 2 1 0] ;
subplot (2,2,1) ;
stem (k1,f1) ;
f2=[1 1 1 1 1];
subplot (2,2,2);
stem (k2,f2);
[f,k]=dconv(f1,f2,k1,k2);
subplot(2,2,3) ;
stem(k,f);
grid on