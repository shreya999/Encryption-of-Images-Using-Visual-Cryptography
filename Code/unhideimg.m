function returnimg=unhideimg(share)
n=4;
%S = uint8(bitor(bitand(fgImg,bitcmp(2^n-1,8)),bitshift(share,n-8))); %Stego
returnimg = uint8(bitand(255,bitshift(share,8-n))); %Extracted

%returnimg = double(S);   %message image
%returnimg = double(E);   %extracted image

end
