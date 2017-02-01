function a=convert(x,dot)
%The function is to remove the dot from the number and convert it.
len=length(x);
if dot~=0
   for i=1:len
      if x(i)=='.'
         a(len-i+1)=x(i+1);
         %When there is more than one digit after the dot.
         if len-i>1
             for j=i+1:len
                 a(len-j+1)=x(j+1);
                 if(j+1==len)
                     a(1)=[];
                     break;
                 end
             end
         else
             a(1)=[];
         end
         break;
      else
         %if x(i) is not a dot
         a(len-i+1)=x(i);
      end
   end
else
   %if there has no dot in this number
   for i=1:len
         a(len-i+1)=x(i);
   end
end
