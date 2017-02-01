function [N,O]=split(text) 
%Using to split the textString and store the operater and the number into
%two arrays seperately.
len=length(text);
m=1;%the index of each element in num
n=1;%the index of each element in op.
num=zeros(m);
op=num2str(zeros(n));
tmp='';
for i=1:len
    if text(i)>=48 && text(i)<=57 || text(i)==46
        tmp=strcat(tmp,text(i));%tmp is used to find the numbers from the text
    else
        num(m)=str2double(tmp);%store the numbers in num
        tmp='';%initialize the tmp value so that it can carry another number
        op(n)=text(i);
        m=m+1;
        n=n+1;
    end
end
num(m)=str2double(tmp);
N=num;
O=op;