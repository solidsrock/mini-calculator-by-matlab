function a=addPoint(c,dot)
lenc=length(c );
if dot~=0
    c(lenc+1)='0';%to avoid the mismatching of the array when i=lenc.
    for i=lenc:-1:lenc-dot
        c(i+1)=c(i);
    end
    c(i+1)='.';
    a=c;
end
%when there is no dot in this number
if dot==0
    a=c;
end