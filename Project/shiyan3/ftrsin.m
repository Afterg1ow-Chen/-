function y = ftrsin(t,n,w)
%FTRSIN 此处显示有关此函数的摘要
%   此处显示详细说明
y = (t >= 0 & t <= 1) .* t .* sin(n * w* t);
end

