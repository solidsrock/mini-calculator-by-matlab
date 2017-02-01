function r=addition(x,y)%input two string,out put a string
dotx=findDot(x);
doty=findDot(y);
c=zeros(1);
[a,b,dot]=convertForAdd(x,dotx,y,doty);
len=length(a);% Both of a & b has the same length, it is ok to choose one of them
for i=1: len
    c(i)=str2double(a(i))+str2double(b(i)); 
end

tmp=c(len);
c(len+1)=0; %palce using for the carrying 1 on the first place

%calculate the carry
for i=1:len
    c(i+1)=c(i+1)+floor(c(i)/10);
    c(i)= mod(c(i),10);
end

%when the last calculate digit is larger than 9, an addition area so be
%added, so the carry can be placed.
result=num2str(zeros(1));
if(tmp>9)
  for i=1:len+1
    result(i)=num2str(c(i));
  end
else
  for i=1:len
    result(i)=num2str(c(i));
  end
end

%convert the array to get the right sequence of the result
result=convert(result,0);
%to get the final result
r=addPoint(result,dot);
