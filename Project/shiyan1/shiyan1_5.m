% 生成 x(n) = 2^n，n <= 4, n >= -4 的序列
n = -4:4;
x = 2.^n;

% 翻转 x，使得 n 从小到大排列
x_flipped = fliplr(x);

% 绘制原始序列
subplot(2, 1, 1);
stem(n, x, 'b', 'LineWidth', 2);
title('Original x(n)');
xlabel('n');
ylabel('x(n)');
grid on;

% 绘制翻转后的序列
subplot(2, 1, 2);
stem(n, x_flipped, 'r', 'LineWidth', 2);
title('Flipped x(-n)');
xlabel('n');
ylabel('x(n)');
grid on;