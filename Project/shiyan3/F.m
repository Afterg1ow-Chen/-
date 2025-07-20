T=2;w=2*pi/T;
a0=quadl(@singftr,-1,1)*2/T;
N=16;
an=zeros(1,N) ;
bn=zeros(1,N);
for k=1:N
an(k)=quadl(@ftrcos,-1,1,[],[],k,w)*2/T;
bn(k)=quadl(@ftrsin,-1,1,[],[],k,w)*2/T;
end
n=1:1:N;
figure(1);
subplot(1,2,1) ;
stem(n,an, '-o' );
grid on;
subplot( 1,2,2);
stem(n,bn, '-o ');
grid on;
t=-3:0.01: 3;
x = pulstran(t + 0.5,-3 : 2 : 3, 'tripuls',1,1);
figure(2);
subplot(6,2,1);plot(t,x);
axis([-3,3,-1,2]);grid on;
subplot(6,2,2);plot(t,a0/2);
grid on;
wave = a0/2;
for k=1:10
wave=wave+an( k )*cos (k*w*t)+bn(k )*sin( k*w*t);subplot(6,2,k+2);
plot(t,wave);
grid on;
end