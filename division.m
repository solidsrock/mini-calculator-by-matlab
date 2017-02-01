function division(x,y) % x is the dividend, y is the divisor.
dotx=findDot(x);
doty=findDot(y);
dot=dotx-doty;
lenx=strlen(x);
leny=strlen(y);


%move the dot from the arrays
if dotx~=0
   alen=lenx-1;
   for i=1:alen
      if x(i)=='.'
         a(i)=x(i+1);
      else
         a(i)=x(i);
      end
     end
else
   for i=1:lenx
         a(i)=x(i);
   end
end

if doty~=0
   blen=leny-1;
   for i=1:blen
      if y(i)=='.'
         b(i)=y(i+1);
      else
         b(i)=y(i);
      end
     end
else
   for i=1:leny
         b(i)=y(i);
   end
end

%add zeros to the array which has less decimal digits
lena=strlen(a);
lenb=strlen(b);

if dot<0
   for n=1:-dot
         a(lena+n)='0';
   end
end

if dot>0
   for n=1:dot
         b(lenb+n)='0';
   end
end

