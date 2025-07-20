function [f,k] = cconv(f1,f2,k1,k2,td)
%CCONV 此处显示有关此函数的摘要
%   此处显示详细说明
f = td * conv(f1,f2);
k_start = k1(1)+ k2(1);
k_end = length(f1)+ length(f2) - 2;
k = k_start :td: (k_start + k_end*td);
end

