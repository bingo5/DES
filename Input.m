str1='265916ADE418BC23';  %明文
str2='285357AEFB724B62';  %密钥
u1=hex2bin(str1);   %将十六进制明文转换成二进制数
u2=hex2bin(str2);   %将十六进制密钥转换成二进制数
P=u1';
Key=u2';