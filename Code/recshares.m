function [s1 s2 s3 s4]=recshares(n)
if n==3
    ext='*.*';
folder='C:\Users\SHREYA\Documents\MATLAB';
Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s1=imread(Image);

Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s2=imread(Image);

Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s3=imread(Image);
s4=0;

elseif n==4
    ext='*.*';
folder='C:\Users\SHREYA\Documents\MATLAB';
Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s1=imread(Image);

Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s2=imread(Image);

Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s3=imread(Image);
Image=uigetfile([folder '\' ext]); 
% old_image=fullfile(folder,Img)
% copyfile(old_image,['C:\Users\SHREYA\Desktop\MATLAB PROJECT\ImageFusion' Img]);
s4=imread(Image);
end