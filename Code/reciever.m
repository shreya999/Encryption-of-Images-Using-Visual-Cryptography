function varargout = reciever(varargin)
global global_struct;
% RECIEVER MATLAB code for reciever.fig
%      RECIEVER, by itself, creates a new RECIEVER or raises the existing
%      singleton*.
%
%      H = RECIEVER returns the handle to a new RECIEVER or the handle to
%      the existing singleton*.
%
%      RECIEVER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECIEVER.M with the given input arguments.
%
%      RECIEVER('Property','Value',...) creates a new RECIEVER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reciever_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reciever_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reciever

% Last Modified by GUIDE v2.5 15-Apr-2015 18:35:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reciever_OpeningFcn, ...
                   'gui_OutputFcn',  @reciever_OutputFcn, ...
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


% --- Executes just before reciever is made visible.
function reciever_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reciever (see VARARGIN)

% Choose default command line output for reciever
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reciever wait for user response (see UIRESUME)
% uiwait(handles.1);


% --- Outputs from this function are returned to the command line.
function varargout = reciever_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in decrypt.
function decrypt_Callback(hObject, eventdata, handles)
% hObject    handle to decrypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
data=global_struct.data;
key=global_struct.key;

if data==3
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
        a=bitxor(s3,key);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(a); title('Decrypted image');

elseif data==4
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
        a=bitxor(s4,key);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==5
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
        a=bitxor(s5,key);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==6
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
        a=bitxor(s6,key);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==7
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
        a=bitxor(s7,key);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==8
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
        a=bitxor(s8,key);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
         a=bitxor(a,s1);
        a=uint8(a);        
        imshow(uint8(a));title('Decrypted image');
        
elseif data==9
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
        a=bitxor(s9,key);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
         a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==10
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
        a=bitxor(s10,key);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==11
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
        a=bitxor(s11,key);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==12
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
        a=bitxor(s12,key);
        a=bitxor(a,11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
         a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==13
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
        a=bitxor(s13,key);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
         a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==14
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
        a=bitxor(s14,key);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==15
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
s15=global_struct.s15;
        a=bitxor(s15,key);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
         a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==16
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
s15=global_struct.s15;
s16=global_struct.s16;
        a=bitxor(s16,key);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==17
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
s9=global_struct.s9;
s10=global_struct.s10;
s11=global_struct.s11;
s12=global_struct.s12;
s13=global_struct.s13;
s14=global_struct.s14;
s15=global_struct.s15;
s16=global_struct.s16;
s17=global_struct.s17;
        a=bitxor(s17,key);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==18
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s18,key);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==19
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s19,key);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==20
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s20,key);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==21
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s21,key);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==22
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s22,key);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==23
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s23,key);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==24
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s24,key);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==25
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s25,key);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==26
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s26,key);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==27
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s27,key);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==28
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s28,key);
        a=bitxor(a,s27);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==29
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s29,key);
        a=bitxor(a,s28);
        a=bitxor(a,s27);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==30
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s30,key);
        a=bitxor(a,s29);
        a=bitxor(a,s28);
        a=bitxor(a,s27);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==31
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s31,key);
        a=bitxor(a,s30);
        a=bitxor(a,s29);
        a=bitxor(a,s28);
        a=bitxor(a,s27);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
        
elseif data==32
s1=global_struct.s1;
s2=global_struct.s2;
s3=global_struct.s3;
s4=global_struct.s4;
s5=global_struct.s5;
s6=global_struct.s6;
s7=global_struct.s7;
s8=global_struct.s8;
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
        a=bitxor(s32,key);
        a=bitxor(a,s31);
        a=bitxor(a,s30);
        a=bitxor(a,s29);
        a=bitxor(a,s28);
        a=bitxor(a,s27);
        a=bitxor(a,s26);
        a=bitxor(a,s25);
        a=bitxor(a,s24);
        a=bitxor(a,s23);
        a=bitxor(a,s22);
        a=bitxor(a,s21);
        a=bitxor(a,s20);
        a=bitxor(a,s19);
        a=bitxor(a,s18);
        a=bitxor(a,s17);
        a=bitxor(a,s16);
        a=bitxor(a,s15);
        a=bitxor(a,s14);
        a=bitxor(a,s13);
        a=bitxor(a,s12);
        a=bitxor(a,s11);
        a=bitxor(a,s10);
        a=bitxor(a,s9);
        a=bitxor(a,s8);
        a=bitxor(a,s7);
        a=bitxor(a,s6);
        a=bitxor(a,s5);
        a=bitxor(a,s4);
        a=bitxor(a,s3);
        a=bitxor(a,s2);
        a=bitxor(a,s1);
        a=uint8(a);
        imshow(uint8(a));title('Decrypted image');
    end


% --- Executes on button press in recieve.
function recieve_Callback(hObject, eventdata, handles)
% hObject    handle to recieve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% a=inputdlg('Enter address',...
%              'INPUT Folder Name');
% b = inputdlg('Enter space-separated names of images',...
%              'INPUT SHARES',[1 50]);
%   C=char(b);       
% S=strsplit(C);
% r=length(S);
% for t = 1:r
%         str=strcat(a,{'\'},S(t));
%         
%     end
global global_struct;
key=global_struct.key;
a = inputdlg('Enter number of shares',...
             'Input shares');
         if isempty(a)
     msgbox(sprintf('Error'),'Error','Error');
     return
end
data = str2num(a{:}); 
global_struct.data=data;
%[File, Folder] = uigetfile('*.*', 'MultiSelect', 'on');
if data==3 || data==4
    [s1 s2 s3 s4]=recshares(data);
    s1=unhideimg(s1);
    s2=unhideimg(s2);
    s3=unhideimg(s3);
    s4=unhideimg(s4);
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
  
elseif data>4 && data<=8
    [s1,s2,s3,s4,s5,s6,s7,s8]=recshares2(data);
    s1=unhideimg(s1);
    s2=unhideimg(s2);
    s3=unhideimg(s3);
    s4=unhideimg(s4);
    s5=unhideimg(s5);
    s6=unhideimg(s6);
    s7=unhideimg(s7);
    s8=unhideimg(s8);
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
 elseif data>8 && data<=16
    [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16]=recshares3(data);
    s1=unhideimg(s1);
    s2=unhideimg(s2);
    s3=unhideimg(s3);
    s4=unhideimg(s4);
    s5=unhideimg(s5);
    s6=unhideimg(s6);
    s7=unhideimg(s7);
    s8=unhideimg(s8);
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
    s9=unhideimg(s9);
    s10=unhideimg(s10);
    s11=unhideimg(s11);
    s12=unhideimg(s12);
    s13=unhideimg(s13);
    s14=unhideimg(s14);
    s15=unhideimg(s15);
    s16=unhideimg(s16);
    global_struct.s9=s9;
    global_struct.s10=s10;
    global_struct.s11=s11;
    global_struct.s12=s12;
    global_struct.s13=s13;
    global_struct.s14=s14;
    global_struct.s15=s15;
    global_struct.s16=s16;
 elseif data>16 && data<=32
      [s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32]=recshares4(data);
      s1=unhideimg(s1);
    s2=unhideimg(s2);
    s3=unhideimg(s3);
    s4=unhideimg(s4);
    s5=unhideimg(s5);
    s6=unhideimg(s6);
    s7=unhideimg(s7);
    s8=unhideimg(s8);
    global_struct.s1=s1;
    global_struct.s2=s2;
    global_struct.s3=s3;
    global_struct.s4=s4;
    global_struct.s5=s5;
    global_struct.s6=s6;
    global_struct.s7=s7;
    global_struct.s8=s8;
    s9=unhideimg(s9);
    s10=unhideimg(s10);
    s11=unhideimg(s11);
    s12=unhideimg(s12);
    s13=unhideimg(s13);
    s14=unhideimg(s14);
    s15=unhideimg(s15);
    s16=unhideimg(s16);
    global_struct.s9=s9;
    global_struct.s10=s10;
    global_struct.s11=s11;
    global_struct.s12=s12;
    global_struct.s13=s13;
    global_struct.s14=s14;
    global_struct.s15=s15;
    global_struct.s16=s16;
    
    s17=unhideimg(s17);
    s18=unhideimg(s18);
    s19=unhideimg(s19);
    s20=unhideimg(s20);
    s21=unhideimg(s21);
    s22=unhideimg(s22);
    s23=unhideimg(s23);
    s24=unhideimg(s24);
    global_struct.s17=s17;
    global_struct.s18=s18;
    global_struct.s19=s19;
    global_struct.s20=s20;
    global_struct.s21=s21;
    global_struct.s22=s22;
    global_struct.s23=s23;
    global_struct.s24=s24;
    s25=unhideimg(s25);
    s26=unhideimg(s26);
    s27=unhideimg(s27);
    s28=unhideimg(s28);
    s29=unhideimg(s29);
    s30=unhideimg(s30);
    s31=unhideimg(s31);
    s32=unhideimg(s32);
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
h = msgbox('Shares Received','Success');
% for i=1:data;
%    
% %         read=strcat(Folder, File{i});
% %         image=imread(read);
% %         imshow(image);title(i);
% %          %eval(['picture' num2str(i) '=image;']);
% end
         
% --- Executes on button press in key.
function key_Callback(hObject, eventdata, handles)
% hObject    handle to key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
[path, user_cance]=imgetfile();
if user_cance
   msgbox(sprintf('Error'),'Error','Error');
   return
else
    ekey=uint8(imread(path));
% if user_cancel
%    msgbox(sprintf('Error'),'Error','Error');
%    return
%    else
global_struct.ekey=ekey;
h = msgbox('Key Received','Success');
 end
% --- Executes on button press in encryptedkey.
function encryptedkey_Callback(hObject, eventdata, handles)
% hObject    handle to encryptedkey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global global_struct;
if user_cancel
   msgbox(sprintf('Error'),'Error','Error');
   return
else
ext='*.*';
folder='C:\Users\SHREYA\Documents\MATLAB';
CVImage=uigetfile([folder '\' ext]);
encryptedkey=uint8(imread(CVImage));
global_struct.encryptedkey=encryptedkey;
end


% --- Executes on button press in decryptkey.
function decryptkey_Callback(hObject, eventdata, handles)
% hObject    handle to decryptkey (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
encryptedkey=global_struct.encryptedkey;
ekey=global_struct.ekey;
key=zeros(size(ekey));
[x y]=size(ekey);
for i=1:x
    for j=1:y
        for k=1:3
        key(i,j)=encryptedkey(i,j)-ekey(i,j);
    end
    end
end
key=uint8(key);
global_struct.key=key;
 msgbox(sprintf('Key Decrypted'),'Key Decrypted','Key Decrypted');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
encryptedkey=uint8(global_struct.encryptedkey);
ekey=uint8(global_struct.ekey);
% key=zeros(size(ekey));
% [x y]=size(ekey);
% for i=1:x
%     for j=1:y
%         for k=1:3
%         key(i,j)=encryptedkey(i,j)-ekey(i,j);
%     end
%     end
% end
key=uint8(encryptedkey-ekey);
global_struct.key=key;
 msgbox(sprintf('Key Decrypted'),'Key Decrypted','Key Decrypted');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global global_struct;
[path, user_cance]=imgetfile();
if user_cance
   msgbox(sprintf('Error'),'Error','Error');
   return
else
    encryptedkey=uint8(imread(path));
% if user_cancel
%    msgbox(sprintf('Error'),'Error','Error');
%    return
%    else
global_struct.encryptedkey=encryptedkey;
h = msgbox('Key Received','Success');
end


