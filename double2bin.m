function out = double2bin(N,k)  %ʮ������ת���ɶ�������

temp  = N;
out = [];
while (temp ~= 0)
    l = mod(temp,2);
    out =[l,out];
    temp = (temp - l)/2;
end


if nargin ==2
    n = length(out);
end
if n < k 
   out = [zeros(1,k-n) out] ;
else
    out = out(end-k+1:end);
end