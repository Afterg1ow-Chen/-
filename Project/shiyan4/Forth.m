%F(s)=1/[(s+2)(s*s+16)]
num = [0,1]; 
den = [1,2,16,32];
sys = tf(num,den);
poles=roots(den);
t=0:0.0002 : 20;
h=impulse(num,den,t);
figure(1);
plot(t,h);
xlabel( 't(s)'); ylabel( ' h(t) ' );
title( ' Impulse Response ' );
[H,w]=freqs(num,den);
figure(2); plot(w,abs(H) );
xlabel( ' lomega(rad/s ) ');
ylabel( '|H(j\omega)| ');
title( ' Magenitude Response ' );
zs=roots( num);
ps=roots(den); % The first methodfigure(3);
plot(real(zs), imag(zs), 'o' , real(ps), imag(ps),'kx ' , 'markersize',12);
axis([-4 4 -5 5]); 
grid on;
sys=tf( num,den); % The second method
figure(4); pzmap(sys); axis( [-4 4 -5 5]);