function d=findDot(x) %input a string
%find the position of a dot away from the tail of the number of x
len=length(x);

for i=1:len
      if x(i)=='.'  
          d=len-i;
          break;
      end
end
if i==len
    d=0;
end
