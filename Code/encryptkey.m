function [encryptedkey ekey]=encryptkey(sharekey)
%hill cipher
format shortg
 c = clock;
 a=c(6)+c(5);
 sharekey=uint8(sharekey);
%ekey=uint8(randi(16,size(sharekey))+a);
ekey=zeros(size(sharekey));
ekey=a;
% key=zeros(size(sharekey));
% [x y]=size(sharekey);
% for i=1:x
%     for j=1:y
%         for k=1:3
%         key(i,j)=sharekey(i,j)+ekey(i,j);
%     end
%     end
% end
encryptedkey=uint8(sharekey+ekey);
end
