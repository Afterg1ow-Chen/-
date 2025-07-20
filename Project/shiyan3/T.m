R = 0.005;
t = -2:R:2;

z1 = (t + 1) >= 0;
z2 = (t - 1) >= 0;
z3 = z1 - z2;

f = t .* z3;

w1 = 40;
N = 1000;
k = -N:N;
w = k * w1 / N;
F = f * exp(-1i * t' * w) * R;
Fudu = real(F);

figure(1);
subplot(2,1,1);
plot(t, f);
xlabel('t');
ylabel('f(t)');
grid on;

subplot(2,1,2);
plot(w, Fudu);
xlabel('w');
ylabel('F(jw)');
grid on;

mf = f .* sin(20 * pi * t);

figure(2);
subplot(3,1,1);
plot(t, cos(10 * pi * t));
ylabel('y(t) = cos(10\pi t)');
grid on;

subplot(3,1,2);
plot(t, mf);
ylabel('f1(t) = f(t) * cos(10\pi t)');
grid on;

MF = mf * exp(-1i * t' * w) * R;
MFudu = real(MF);

subplot(3,1,3);
plot(w, MFudu);
xlabel('w');
ylabel('MF(jw)');
grid on;