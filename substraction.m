function r=substraction(x,y) %input two string,out put a string
doty=findDot(y);
dotx=findDot(x);
[a,b,dot]=convertForAdd(x,dotx,y,doty);
len=length(a);
negative=0;
if(str2double(x)>=str2double(y))
    for i=1: len
        c(i)=str2double(a(i))-str2double(b(i)); 
    end
else
    for i=1: len
        c(i)=str2double(b(i))-str2double(a(i)); 
        negative=1;%using to place the negative symbol to the first place
    end
end
c(len+1)=0;%the place to palce the negative symbol

%calculate the borrow
for i=1:len
    if c(i)<0
       c(i+1)=c(i+1)-1;
       c(i)=10+c(i);
    end
end

if negative==1
    result(len+1)='-';
end
for i=1:len
    result(i)=num2str(c(i));
end
if result(len)=='0'
    result(len)=[];
end

%convert the array to get the right sequence of the result
%for i=1:floor(len/2)
%    tmp=result(i);
%   result(i)=result(len-i+1);
%    result(len-i+1)=tmp;
%end
result=convert(result,0);

%to get the final result
r=addPoint(result,dot);