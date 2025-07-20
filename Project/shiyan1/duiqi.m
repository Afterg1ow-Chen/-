function [add_f, pro_f] = duiqi(f1, f2)
    % 检查序列的长度是否相等，如果不相等则报错
    if length(f1) ~= length(f2)
        error('Sequence lengths must be equal');
    end

    % 计算加法和乘法结果
    add_f = f1 - f2;
    pro_f = f1 .* f2;
end