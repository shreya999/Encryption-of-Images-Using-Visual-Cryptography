function varargout = projectui(varargin)
global global_struct;

% PROJECTUI MATLAB code for projectui.fig
%      PROJECTUI, by itself, creates a new PROJECTUI or raises the existing
%      singleton*.
%
%      H = PROJECTUI returns the handle to a new PROJECTUI or the handle to
%      the existing singleton*.
%
%      PROJECTUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTUI.M with the given input arguments.
%
%      PROJECTUI('Property','Value',...) creates a new PROJECTUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projectui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projectui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projectui

% Last Modified by GUIDE v2.5 10-Apr-2015 12:21:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projectui_OpeningFcn, ...
                   'gui_OutputFcn',  @projectui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before projectui is made visible.
function projectui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projectui (see VARARGIN)

% Choose default command line output for projectui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projectui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projectui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function img_Callback(hObject, eventdata, handles)
% hObject    handle to img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of img as text
%        str2double(get(hObject,'String')) returns contents of img as a double


% --- Executes during object creation, after setting all properties.
function img_CreateFcn(hObject, eventdata, handles)
% hObject    handle to img (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coverimg_Callback(hObject, eventdata, handles)
% hObject    handle to coverimg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coverimg as text
%        str2double(get(hObject,'String')) returns contents of coverimg as a double

global global_struct;
x=global_struct.x
y=global_struct.y;
Img=global_struct.Img;
% ext='*.*';
% folder='F:\FINAL YEAR PROJECT';
% CVImage=uigetfile([folder '\' ext]);
% fgImg2=imread(CVImage);
% fgImg2=imresize(fgImg2,[x,y]);
axes(handles.axes2);
[path, user_cancel]=imgetfile();
if user_cancel
   msgbox(sprintf('Error'),'Error','Error');
   return
end
fgImg2=imread(path);
[x,y,z]=size(Img);
fgImg2=imresize(fgImg2,[x,y]);
imshow(fgImg2);
global_struct.fgImg2=fgImg2;

% --- Executes during object creation, after setting all properties.
function coverimg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coverimg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function num_Callback(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num as text
%        str2double(get(hObject,'String')) returns contents of num as a double


% --- Executes during object creation, after setting all properties.
function num_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generateshares.
function generateshares_Callback(hObject, eventdata, handles)
global global_struct;
 
% hObject    handle to generateshares (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Img=global_struct.Img;
fgImg2=global_struct.fgImg2;
x=global_struct.x;
y=global_struct.y;
z=global_struct.z;
n=global_struct.n;

[x,y,z]=size(Img);
fgImg2=imresize(fgImg2,[x,y]);

if n<=4
  b=2; 
elseif n>4 && n<=8
  b=3;
elseif n>8 && n<=16
  b=4;
elseif n>16 && n<=32
 b=5;
elseif n>32 && n<=64
 b=6;
elseif n>64 && n<=128
b=7;
else 
 msgbox(sprintf('Wrong Input!!!'),'Error','Error');
 return
end 

%Random Number Generation:
%key=uint8(randi(256,size(Img))); 
key=zeros(size(Img));

for i=1:x
    for j=1:y
        for k=1:3
        key(i,j)=generateRandom(n);
        end
    end
end

key=uint8(key);
global_struct.key=key;
% figure
% imshow(key);

   
%------------------------------------------------------------------
% Create Basic Matrices:
 b1=zeros(size(Img));
 b2=zeros(size(Img));
 b3=zeros(size(Img));
 b4=zeros(size(Img));
 b5=zeros(size(Img));
 b6=zeros(size(Img));
 b7=zeros(size(Img));
 b8=zeros(size(Img));

for i=1:x
    for j=1:y
        pix=Img(i,j);
        val1=pix/b;
        b1(i,j)=val1;
         b2(i,j)=val1;
          
         if b==3
             b3(i,j)=pix-(2*val1);
             else 
              b3(i,j)=val1;
         end
          
         if b==4
             b4(i,j)=pix-(3*val1);
             else
            b4(i,j)=val1;
         end
         
         if b==5
            b5(i,j)=pix-(4*val1); 
             else
            b5(i,j)=val1;
         end 
         
          if b==6
            b5(i,j)=pix-(5*val1); 
             else
            b5(i,j)=val1;
          end 
         
          if b==7
            b5(i,j)=pix-(6*val1); 
             else
            b5(i,j)=val1;
         end    
         
    end
end

b1=uint8(128-b1);
b3=uint8(64-b3);
b5=uint8(32-b5);
b7=uint8(16-b7);
b2=uint8(b2);
b4=uint8(b4);
b6=uint8(b6);

if n==3 || n==4
    [s1,s2,s3,s4]=returnshares(Img,key,b1,b2,n,fgImg2);
elseif n>4 && n<=8
    [s1,s2,s3,s4,s5,s6,s7,s8]=returnshares2(Img,key,b1,b2,b3,n,fgImg2);
 elseif n>8 && n<=16
    [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16]=returnshares3(Img,key,b1,b2,b3,b4,n,fgImg2);
 elseif n>16 && n<=32
      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32]=returnshares4(Img,key,b1,b2,b3,b4,b5,n,fgImg2);
% elseif n>32 && n<=64
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64]=returnshares5(Img,key,b1,b2,b3,b4,b5,b6,n,fgImg2);
% elseif n>64 && n<=128
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128]=returnshares6(Img,key,b1,b2,b3,b4,b5,b6,b7,n,fgImg2);
end   
% 
    
    if n==3 || n==4
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    guidata(hObject, global_struct);
   
elseif n>4 && n<=8
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
 elseif n>8 && n<=16
      global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
    global_struct.s9=s9;
    global_struct.s10=s10;
    global_struct.s11=s11;
    global_struct.s12=s12;
    global_struct.s13=s13;
    global_struct.s14=s14;
    global_struct.s15=s15;
    global_struct.s16=s16;
    
 elseif n>16 && n<=32
     global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
    global_struct.s9=s9;
    global_struct.s10=s10;
    global_struct.s11=s11;
    global_struct.s12=s12;
    global_struct.s13=s13;
    global_struct.s14=s14;
    global_struct.s15=s15;
    global_struct.s16=s16;
     global_struct.s17=s17;
    global_struct.s18=s18;
    global_struct.s19=s19;
    global_struct.s20=s20;
    global_struct.s21=s21;
    global_struct.s22=s22;
    global_struct.s23=s23;
    global_struct.s24=s24;
    global_struct.s25=s25;
    global_struct.s26=s26;
    global_struct.s27=s27;
    global_struct.s28=s28;
    global_struct.s29=s29;
    global_struct.s30=s30;
    global_struct.s31=s31;
    global_struct.s32=s32;
     
% elseif n>32 && n<=64
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64]=returnshares5(Img,key,b1,b2,b3,b4,b5,b6,n,fgImg2);
% elseif n>64 && n<=128
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128]=returnshares6(Img,key,b1,b2,b3,b4,b5,b6,b7,n,fgImg2);
end   
    
msgbox(sprintf('Shares Created'),'Shares Created','Shares Created');    



% --- Executes on button press in sendshares.
function sendshares_Callback(hObject, eventdata, handles)
% hObject    handle to sendshares (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
n=global_struct.n;
% rmdir('C:\Users\SHREYA\Documents\MATLAB');
%mkdir('C:\Users\SHREYA\Documents\MATLAB\output');
 if n==3 || n==4
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
imwrite(s1,'C:\Users\SHREYA\Documents\MATLAB\s1.png');
imwrite(s2,'C:\Users\SHREYA\Documents\MATLAB\s2.png');
imwrite(s3,'C:\Users\SHREYA\Documents\MATLAB\s3.png');
imwrite(s4,'C:\Users\SHREYA\Documents\MATLAB\s4.png');

 elseif n>4 && n<=8
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7= global_struct.s7;
s8= global_struct.s8;
imwrite(s1,'C:\Users\SHREYA\Documents\MATLAB\s1.png');
imwrite(s2,'C:\Users\SHREYA\Documents\MATLAB\s2.png');
imwrite(s3,'C:\Users\SHREYA\Documents\MATLAB\s3.png');
imwrite(s4,'C:\Users\SHREYA\Documents\MATLAB\s4.png');
imwrite(s5,'C:\Users\SHREYA\Documents\MATLAB\s5.png');
imwrite(s6,'C:\Users\SHREYA\Documents\MATLAB\s6.png');
imwrite(s7,'C:\Users\SHREYA\Documents\MATLAB\s7.png');
imwrite(s8,'C:\Users\SHREYA\Documents\MATLAB\s8.png');

 elseif n>8 && n<=16
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7= global_struct.s7;
s8= global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
s15=global_struct.s15;
s16=global_struct.s16;
imwrite(s1,'C:\Users\SHREYA\Documents\MATLAB\s1.png');
imwrite(s2,'C:\Users\SHREYA\Documents\MATLAB\s2.png');
imwrite(s3,'C:\Users\SHREYA\Documents\MATLAB\s3.png');
imwrite(s4,'C:\Users\SHREYA\Documents\MATLAB\s4.png');
imwrite(s5,'C:\Users\SHREYA\Documents\MATLAB\s5.png');
imwrite(s6,'C:\Users\SHREYA\Documents\MATLAB\s6.png');
imwrite(s7,'C:\Users\SHREYA\Documents\MATLAB\s7.png');
imwrite(s8,'C:\Users\SHREYA\Documents\MATLAB\s8.png');
imwrite(s9,'C:\Users\SHREYA\Documents\MATLAB\s9.png');
imwrite(s10,'C:\Users\SHREYA\Documents\MATLAB\s10.png');
imwrite(s11,'C:\Users\SHREYA\Documents\MATLAB\s11.png');
imwrite(s12,'C:\Users\SHREYA\Documents\MATLAB\s12.png');
imwrite(s13,'C:\Users\SHREYA\Documents\MATLAB\s13.png');
imwrite(s14,'C:\Users\SHREYA\Documents\MATLAB\s14.png');
imwrite(s15,'C:\Users\SHREYA\Documents\MATLAB\s15.png');
imwrite(s16,'C:\Users\SHREYA\Documents\MATLAB\s16.png');

 elseif n>16 && n<=32
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7= global_struct.s7;
s8= global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
s15=global_struct.s15;
s16=global_struct.s16;
s17=global_struct.s17;
s18=global_struct.s18;
s19=global_struct.s19;
s20=global_struct.s20;
s21=global_struct.s21;
s22=global_struct.s22;
s23=global_struct.s23;
s24=global_struct.s24;
s25=global_struct.s25;
s26=global_struct.s26;
s27=global_struct.s27;
s28=global_struct.s28;
s29=global_struct.s29;
s30=global_struct.s30;
s31=global_struct.s31;
s32=global_struct.s32;
imwrite(s1,'C:\Users\SHREYA\Documents\MATLAB\s1.png');
imwrite(s2,'C:\Users\SHREYA\Documents\MATLAB\s2.png');
imwrite(s3,'C:\Users\SHREYA\Documents\MATLAB\s3.png');
imwrite(s4,'C:\Users\SHREYA\Documents\MATLAB\s4.png');
imwrite(s5,'C:\Users\SHREYA\Documents\MATLAB\s5.png');
imwrite(s6,'C:\Users\SHREYA\Documents\MATLAB\s6.png');
imwrite(s7,'C:\Users\SHREYA\Documents\MATLAB\s7.png');
imwrite(s8,'C:\Users\SHREYA\Documents\MATLAB\s8.png');
imwrite(s9,'C:\Users\SHREYA\Documents\MATLAB\s9.png');
imwrite(s10,'C:\Users\SHREYA\Documents\MATLAB\s10.png');
imwrite(s11,'C:\Users\SHREYA\Documents\MATLAB\s11.png');
imwrite(s12,'C:\Users\SHREYA\Documents\MATLAB\s12.png');
imwrite(s13,'C:\Users\SHREYA\Documents\MATLAB\s13.png');
imwrite(s14,'C:\Users\SHREYA\Documents\MATLAB\s14.png');
imwrite(s15,'C:\Users\SHREYA\Documents\MATLAB\s15.png');
imwrite(s16,'C:\Users\SHREYA\Documents\MATLAB\s16.png');
imwrite(s17,'C:\Users\SHREYA\Documents\MATLAB\s17.png');
imwrite(s18,'C:\Users\SHREYA\Documents\MATLAB\s18.png');
imwrite(s19,'C:\Users\SHREYA\Documents\MATLAB\s19.png');
imwrite(s20,'C:\Users\SHREYA\Documents\MATLAB\s20.png');
imwrite(s21,'C:\Users\SHREYA\Documents\MATLAB\s21.png');
imwrite(s22,'C:\Users\SHREYA\Documents\MATLAB\s22.png');
imwrite(s23,'C:\Users\SHREYA\Documents\MATLAB\s23.png');
imwrite(s24,'C:\Users\SHREYA\Documents\MATLAB\s24.png');
imwrite(s25,'C:\Users\SHREYA\Documents\MATLAB\s25.png');
imwrite(s26,'C:\Users\SHREYA\Documents\MATLAB\s26.png');
imwrite(s27,'C:\Users\SHREYA\Documents\MATLAB\s27.png');
imwrite(s28,'C:\Users\SHREYA\Documents\MATLAB\s28.png');
imwrite(s29,'C:\Users\SHREYA\Documents\MATLAB\s29.png');
imwrite(s30,'C:\Users\SHREYA\Documents\MATLAB\s30.png');
imwrite(s31,'C:\Users\SHREYA\Documents\MATLAB\s31.png');
imwrite(s32,'C:\Users\SHREYA\Documents\MATLAB\s32.png');
     
% elseif n>32 && n<=64
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64]=returnshares5(Img,key,b1,b2,b3,b4,b5,b6,n,fgImg2);
% elseif n>64 && n<=128
%      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128]=returnshares6(Img,key,b1,b2,b3,b4,b5,b6,b7,n,fgImg2);
end  



h = msgbox('Shares Sent','Success');

% --- Executes on button press in compare.
function compare_Callback(hObject, eventdata, handles)
% hObject    handle to compare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ip1=get(handles.img,'String');
Img=imread(ip1);
[mse, PSNR] = psnr(Img,a,x,y);

msg=PSNR;
         axes(handles.axes3);
    text(0.5,0.5,msg,'Units','Normalized');
    


% --- Executes on button press in sendkey.
function sendkey_Callback(hObject, eventdata, ~)
% hObject    handle to sendkey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
sharekey=global_struct.key;
 [encryptedkey ekey]=encryptkey(sharekey);
imwrite(uint8(ekey),'C:\Users\SHREYA\Documents\MATLAB\key.png');
 imwrite(uint8(encryptedkey),'C:\Users\SHREYA\Documents\MATLAB\key2.png');
h = msgbox('Key Sent','Success');

% --- Executes on button press in ipimg.
function ipimg_Callback(hObject, eventdata, handles)
% hObject    handle to ipimg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
axes(handles.axes1);
[path, user_cance]=imgetfile();
if user_cance
   msgbox(sprintf('Error'),'Error','Error');
   return
 end
Img=imread(path);
[x,y,z]=size(Img);
 imshow(Img);
 
global_struct.Img=Img;
global_struct.x=x;
global_struct.y=y;
global_struct.z=z;

% --- Executes on button press in shares.
function shares_Callback(hObject, eventdata, handles)
% hObject    handle to shares (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
x = inputdlg('Enter number of shares:',...
             'Input shares');
          
if isempty(x)
     msgbox(sprintf('Error'),'Error','Error');
     return
end
n=str2num(x{:});
global_struct.n=n;
% val is a scalar or matrix converted from the first input
%          [path, user_cance]=imgetfile();
% if user_cance
%    msgbox(sprintf('Error'),'Error','Error');
%    return

%          end

% --- Executes on button press in view.
function view_Callback(hObject, eventdata, handles)
% hObject    handle to view (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
n=global_struct.n;
dispshares(n); 
