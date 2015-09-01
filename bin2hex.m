function st=bin2hex(C)   %将二进制数转换成十六进制数的字符串形式
CS=[];
C=num2str(C);
pos=find(C~=' ');
C=C(pos);
for i=1:4:61
   Ci=C(i:i+3);
   CS=[CS,num2str(dec2hex(bin2dec(Ci)))];
end
st=CS;