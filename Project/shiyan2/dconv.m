%dconv函数
function [f,k] = dconv(f1,f2,k1,k2)
f=conv(f1,f2);
k_start=k1(1)+k2(2);
k_end=length(f1)+length(f2)-2;
k=k_start:(k_start+k_end);
end