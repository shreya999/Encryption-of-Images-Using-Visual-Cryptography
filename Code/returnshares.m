function [s1,s2,s3,s4]=returnshares(Img,key,b1,b2,n,fgImg2)
if n==3
a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,Img);
s1=hideimg(a1,fgImg2);
s2=hideimg(a2,fgImg2);
s3=hideimg(a3,fgImg2);
s4=0;

elseif n==4
 a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,a1);
a4=bitxor(a1,Img);
s1=hideimg(a1,fgImg2);
 s2=hideimg(a2,fgImg2);
    s3=hideimg(a3,fgImg2);
    s4=hideimg(a4,fgImg2);
end
end
