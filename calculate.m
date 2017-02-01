function r=calculate(x,o) %x is an array. o is a string,r is astring
%calculate euqals to a main function to a program. x represents the number
%involve to the calculation. o stores the operations of the calculation.
[d,p]=MultDivd(x,o);
%---------------------
oplen=length(o);
if o(oplen)~='0'
    r=AddMinus(d,p);
else
    r=num2str(d);
end
