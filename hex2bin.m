function u=hex2bin(str1)  %ʮ�����������ַ�����ʽת���ɶ�������
DB=[];
for i=1:16
    Di=str1(i);
    DBi=['0000',dec2bin(hex2dec(Di))];
    DBi=DBi(end-3:end);
    DBi=[str2num(DBi(1)),str2num(DBi(2)),str2num(DBi(3)),str2num(DBi(4))];
    DB=[DB,DBi];
end
u=DB;