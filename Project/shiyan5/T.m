b = [ 1 -2 4];
a = [1 -0.5 0.25];[z,p,~] = tf2zp(b,a);
B = [ 1 -24];
A = [ 1 -0.5 0.25];
figure;
zplane(B,A);
B = [ 1 -2 4];
A=[1 -0.5 0.25];
k=0 :40;
h=impz(B,A,k);figure;
stem( k,h);
xlabel( "k ");
ylabel( 'h[k]') ;
title( 'Impulse response' );
[H, w]=freqz(B,A);
figure;
subplot(2,1,1)
plot(w/ pi,abs(H)) ;
xlabel( 'ang.freq.\Omega( rad/s) ');
ylabel('|H(e^j^\Omega)l ');
title( 'Magnitude response ' ) ;
subplot(2,1,2)
plot(w/ pi,angle(H));
xlabel( 'ang.freq. :Omega( rad / s) ') ;ylabel( 'Angle' ) ;
title( "Angle response " ) ;