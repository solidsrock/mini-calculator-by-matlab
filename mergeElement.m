function a=mergeElement(x,i,c)
%x is the array which will be merged, i is the position which needs to
%merge with its next element, c is the value of both element i and i+1.
%GREAT COST FOR BIG NUMBER.
len=length(x);
x(i)=c;
for j=i+1:len-1
     x(j)=x(j+1);
end
x(len)=[];
a=x;
     
