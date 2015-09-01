A=simout1.signals.values(1,:);
B=simout.signals.values(1,:);
str3=bin2hex(A);  %将明文加密后得到的密文
str4=bin2hex(B);  %将密文解密后得到的明文
str1  %原明文
str3  %密文
str4  %先加密再解密得到的明文