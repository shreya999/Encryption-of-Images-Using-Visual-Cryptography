function [s1,s2,s3,s4,s5,s6,s7,s8]=returnshares2(Img,key,b1,b2,b3,n,fgImg2)
if n==5
a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,b3);
a4=bitxor(b3,a1);
a5=bitxor(a1,Img);
s1=hideimg(a1,fgImg2);
s2=hideimg(a2,fgImg2);
s3=hideimg(a3,fgImg2);
s4=hideimg(a4,fgImg2);
s5=hideimg(a5,fgImg2);
s6=0;
s7=0;
s8=0;

elseif n==6
a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,b3);
a4=bitxor(b3,a1);
a5=bitxor(a1,a2);
a6=bitxor(a2,Img);
s1=hideimg(a1,fgImg2);
s2=hideimg(a2,fgImg2);
s3=hideimg(a3,fgImg2);
s4=hideimg(a4,fgImg2);
s5=hideimg(a5,fgImg2);
s6=hideimg(a6,fgImg2);
s7=0;
s8=0;

elseif n==7
a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,b3);
a4=bitxor(b3,a1);
a5=bitxor(a1,a2);
a6=bitxor(a2,a3);
a7=bitxor(a3,Img);
s1=hideimg(a1,fgImg2);
s2=hideimg(a2,fgImg2);
s3=hideimg(a3,fgImg2);
s4=hideimg(a4,fgImg2);
s5=hideimg(a5,fgImg2);
s6=hideimg(a6,fgImg2);
s7=hideimg(a7,fgImg2);
s8=0;

elseif n==8
a1=bitxor(b1,key);
a2=bitxor(b1,b2);
a3=bitxor(b2,b3);
a4=bitxor(b3,a1);
a5=bitxor(a1,a2);
a6=bitxor(a2,a3);
a7=bitxor(a3,a4);
a8=bitxor(a4,Img);
s1=hideimg(a1,fgImg2);
s2=hideimg(a2,fgImg2);
s3=hideimg(a3,fgImg2);
s4=hideimg(a4,fgImg2);
s5=hideimg(a5,fgImg2);
s6=hideimg(a6,fgImg2);
s7=hideimg(a7,fgImg2);
s8=hideimg(a8,fgImg2);
end

end
