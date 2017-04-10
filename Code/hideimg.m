function returnimg=hideimg(share,fgImg)
n=4;
returnimg = uint8(bitor(bitand(fgImg,bitcmp(2^n-1,8)),bitshift(share,n-8))); %Stego
%E = uint8(bitand(255,bitshift(S,8-n))); %Extracted

%returnimg = double(S);   %message image
%distImg = double(E);   %extracted image


end
