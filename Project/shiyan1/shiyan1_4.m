
% 定义序列 f1 和 f2
f1 = [0, 1, 2, 3, 4, 5, 6];
f2 = [6, 5, 4, 3, 2, 1, 0];

% 调用 duiqi 函数
[add_f, pro_f] = duiqi(f1, f2);

% 绘制子图形
figure;

subplot(2, 2, 1);
stem(f1, 'b', 'LineWidth', 2);
title('f1(k)');
xlabel('k');
ylabel('f1(k)');
grid on;

subplot(2, 2, 2);
stem(f2, 'g', 'LineWidth', 2);
title('f2(k)');
xlabel('k');
ylabel('f2(k)');
grid on;

subplot(2, 2, 3);
stem(add_f, 'r', 'LineWidth', 2);
title('add\_f(k) = f1(k) - f2(k)');
xlabel('k');
ylabel('add\_f(k)');
grid on;

subplot(2, 2, 4);
stem(pro_f, 'm', 'LineWidth', 2);
title('pro\_f(k) = f1(k) * f2(k)');
xlabel('k');
ylabel('pro\_f(k)');
grid on;

