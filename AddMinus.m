function r=AddMinus(x,o)
i=1;%/the position of the operator
while 1
    if length(o)<i %when the position is larger than the length of o, break out of the loop
        break;
    end
    if strcmp(o(i),'+')==1|| strcmp(o(i),'-')==1
    if strcmp(o(i),'+')==1
        if x(i+1)<=0&&x(i)>=0
            tmp=str2double(substraction(num2str(x(i)),num2str((-x(i+1)))));
        elseif x(i)<=0&&x(i+1)>=0
            tmp=str2double(substraction(num2str(x(i+1)),num2str(-x(i))));
        elseif x(i+1)<=0&&x(i)<=0
            tmp=-str2double(addition(num2str(-x(i)),num2str(-x(i+1))));
        else
            tmp=str2double(addition(num2str(x(i)),num2str(x(i+1))));
        end
        o=mergeOp(o,i);
        x=mergeElement(x,i,tmp);
    end
    if length(o)>=i
    if strcmp(o(i),'-')==1
        if x(i+1)<0&&x(i)>0
            tmp=-str2double(addition(num2str(-x(i+1)),num2str(x(i))));
        elseif x(i)<0&&x(i+1)>0
            tmp=-str2double(addition(num2str(x(i+1)),num2str(-x(i))));
        elseif x(i+1)<0&&x(i)<0
            tmp=-str2double(substraction(num2str(-x(i)),num2str(-x(i+1))));
        else
            tmp=str2double(substraction(num2str(x(i)),num2str(x(i+1))));
        end
        o=mergeOp(o,i);
        x=mergeElement(x,i,tmp);
    end
    end
        else
        i=i+1;
    end
end
r=num2str(x);