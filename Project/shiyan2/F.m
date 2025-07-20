a = [1 5 6];
b = [1 -2];
sys = tf(b, a);
td = 0.01;
t = 0 : td : 10;

% 阶跃信号输入
f_step = ones(size(t));

% 计算系统对阶跃信号的响应
y_step = lsim(sys, f_step, t);

% 绘制阶跃响应曲线
subplot(3,1,1);
plot(t, y_step);
xlabel('t(sec)');
ylabel('Step Response');
title('Step Response');
grid on;

% 冲激信号输入
f_impulse = [1 zeros(1,length(t)-1)];

% 计算系统对冲激信号的响应
y_impulse = lsim(sys, f_impulse, t);

% 绘制冲激响应曲线
subplot(3,1,2);
plot(t, y_impulse);
xlabel('t(sec)');
ylabel('Impulse Response');
title('Impulse Response');
grid on;

% 零输入响应（零状态响应）
y_zero = lsim(sys, zeros(size(t)), t);

% 绘制零状态响应曲线

f=exp(-t) ;
y=lsim(sys,f,t) ;
plot (t,y) ;
xlabel("t (sec)") ;ylabel('y(t)') ;
grid on

% 调整图表布局
sgtitle('System Responses');