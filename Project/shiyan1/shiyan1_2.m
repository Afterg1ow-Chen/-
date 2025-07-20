clc;
n = -20:20;

x = zeros(size(n));  % 创建与 n 大小相同的零向量

% 使用条件语句设置 x 向量的值
x(n >= -10 & n <= 10) = 3 * n(n >= -10 & n <= 10);
% 绘制图形
stem(n, x, 'b', 'LineWidth', 2);
title('信号曲线');
xlabel('n');
ylabel('x(n)');
grid on;