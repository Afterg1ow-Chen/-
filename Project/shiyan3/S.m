R=0.005;
t=-2:R:2;
f=cos(pi*t/2);
w1=40;N=1000;
k=-N:N;
w=k*w1/N;
F=f*exp(-1i*t'*w)*R;
Fudu=real(F);
figure(1);
subplot(2,1,1);
plot(t,f);
xlabel( 't ');
ylabel( 'f(t)' );
grid on;
subplot(2,1,2);
plot(w,Fudu ) ;
xlabel( 'w ' );
ylabel( 'F(jw) ' );
grid on;
sf=cos(pi*t/4);
w1=40;
N=1000;
k=-N:N; 
w=k*w1/N;
SF=sf*exp(-1i*t'*w)*R;
SFudu=real(SF);
figure(2);
subplot(2,1,1);plot(t,sf);
xlabel( 't ');ylabel( 'sf(t) ');
grid on;
subplot(2,1,2);plot(w,SFudu) ;
xlabel( 'w ' );ylabel( 'SF9jw) ' );
grid on;
mf=f.*cos(10*pi*t);
figure(3);
subplot(3,1,1);plot(t,cos(10*pi*t));
ylabel( 'y(t)=cos(10*pi*t) ' );
grid on;subplot(3,1,2);plot(t,mf);
ylabel( 'f1(t)=f(t)*cos(10*pi*t) ' );
grid on;
MF=mf*exp(-1i*t'*w)*R;
MFudu=real(MF);
subplot(3,1,3);plot(w ,MFudu);xlabel( 'w ' );ylabel('MF(jw) ' );grid on;