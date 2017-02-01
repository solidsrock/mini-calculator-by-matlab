function [a,b,d]=convertForAdd(x,dotx,y,doty)
%Using to add Zeros to and convert the numbers which will be added or decreased.
m=dotx-doty;
lenx=length(x);
leny=length(y);

%Add Zeros to the last digit that after the dot
if m<0
    for n=1:-m
        x(lenx+n)='0';
    end
    d=doty;
end

if m>0
    for n=1:m
        y(leny+n)='0';
    end
    d=dotx;
end

if m==0
    d=dotx;
end

a=convert(x,dotx);
b=convert(y,doty);

lena=length(a);
lenb=length(b);
len=lena-lenb;

%Add Zeros to the last digit that before the dots
if len<0
   for n=1:-len
       a(lena+n)='0';
   end
end

if len>0
   for n=1:len
       b(lenb+n)='0';
   end
end

