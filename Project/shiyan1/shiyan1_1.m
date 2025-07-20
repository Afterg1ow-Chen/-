
t = 0:0.1:30;
x = exp(-(3^0.5)*t) .* cos((3.0/4.0)*t);

figure;
plot(t, x, 'b', 'LineWidth', 2);
title('Plot of the Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
legend('Signal');