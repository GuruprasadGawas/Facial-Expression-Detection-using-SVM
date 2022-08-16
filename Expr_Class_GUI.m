function varargout = Expr_Class_GUI(varargin)
% EXPR_CLASS_GUI MATLAB code for Expr_Class_GUI.fig
%      EXPR_CLASS_GUI, by itself, creates a new EXPR_CLASS_GUI or raises the existing
%      singleton*.
%
%      H = EXPR_CLASS_GUI returns the handle to a new EXPR_CLASS_GUI or the handle to
%      the existing singleton*.
%
%      EXPR_CLASS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXPR_CLASS_GUI.M with the given input arguments.
%
%      EXPR_CLASS_GUI('Property','Value',...) creates a new EXPR_CLASS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Expr_Class_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Expr_Class_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Expr_Class_GUI

% Last Modified by GUIDE v2.5 20-Apr-2019 01:11:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Expr_Class_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Expr_Class_GUI_OutputFcn, ...
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


% --- Executes just before Expr_Class_GUI is made visible.
function Expr_Class_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Expr_Class_GUI (see VARARGIN)

% Choose default command line output for Expr_Class_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Expr_Class_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Expr_Class_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
 x= get(hObject,'String') ; %returns contents of edit1 as text
 H=findobj('Tag','edit1');
                   set(H,'userdata',x);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
y= get(hObject,'String') ; %returns contents of edit2 as text
 H=findobj('Tag','edit2');
                   set(H,'userdata',y);


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
 z= get(hObject,'String') ; %returns contents of edit3 as text
 H=findobj('Tag','edit3');
                   set(H,'userdata',z);


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

H=findobj('Tag','edit1');
x= get(H,'userdata')

H=findobj('Tag','edit2');
y= get(H,'userdata')

H=findobj('Tag','edit3');
z= get(H,'userdata')


disp('FACIAL EXPRESSION RECOGNITION SYSTEM');

isSucceed = 0;
if (exist('strTrainPath')==0)
   %strTrainPath = input('Enter Train Folder Name:','s');
   strTrainPath = x;
end
if (exist('strLabelFile')==0)
   %strLabelFile = input('Enter Label File Name:','s');
   strLabelFile = z;
end
if (exist('strTestPath')==0)
   %strTestPath = input('Enter Test Folder Name:','s');
   strTestPath = y;
end

structTestImages = dir(strTestPath);
% numImage = length(imageLabel{1,1});  % Total Observations: Number of Images in training set
lenTest = length(structTestImages);

if (lenTest==0)
    disp('Error:Invalid Test Folder');
    return;
end

% TrainImages='';
% for i = 1:numImage
% 	TrainImages{i,1} = strcat(strTrainPath,'\',imageLabel{1,1}(i));
% end

j=0;
for i = 3:lenTest
     if ((~structTestImages(i).isdir))
         if  (structTestImages(i).name(end-4:end)=='.tiff')
             j=j+1;
             TestImages{j,1} = [strTestPath,'\',structTestImages(i).name];
         end
     end
end
numTestImage = j; % Number of Test Images
clear ('structTestImages','fid','i','j');pack

imageSize = [280,180];          % All Images are resized into a common size

%% ################# Load Train Data & Preprocess  ########################
% %% Loading training images & preparing for PCA by subtracting mean
% A = [];
% img = zeros(imageSize(1)*imageSize(2),numImage);
% for i = 1:numImage
%     aa = imresize(detect_face(imresize(imread(cell2mat(TrainImages{i,1})),[375,300])),imageSize);
%     img(:,i) = aa(:);
%     disp(sprintf('Loading Train Image # %d',i));
% end
% img = double(img)/255;               %convert to double and normalize
% meanImage = mean(img,2);        
%                  
% img = (img - meanImage*ones(1,numImage))';      % img is the input to PCA
% %% ########################################################################
% A = [A img]; % Merging all centered images
% A=A';
% L = A'*A; % L is the surrogate of covariance matrix C=A*A'.
% [V D] = eig(L); % Diagonal elements of D are the eigenvalues for both L=A'*A and C=A*A'.
% 
% %%%%%%%%%%%%%%%%%%%%%%%% Sorting and eliminating eigenvalues
% % All eigenvalues of matrix L are sorted and those who are less than a
% % specified threshold, are eliminated. So the number of non-zero
% % eigenvectors may be less than (P-1).
% 
% L_eig_vec = [];
% for i = 1 : size(V,2) 
%     if( D(i,i)> 1 )
%         L_eig_vec = [L_eig_vec V(:,i)];
%     end
% end
% 
% %%%%%%%%%%%%%%%%%%%%%%%% Calculating the eigenvectors of covariance matrix 'C'
% % Eigenvectors of covariance matrix C (or so-called "Eigenfaces")
% % can be recovered from L's eiegnvectors.
% Eigenfaces = A * L_eig_vec; % A: centered image vectors
% % save 'train.mat' Eigenfaces
% ProjectedImages = [];
% numImage=size(Eigenfaces,2);
% for i = 1 : numImage
%     temp = Eigenfaces'*A(:,i); % Projection of centered images into facespace
%     ProjectedImages = [ProjectedImages temp]; 
% end
% 
% EigenRange = [1:139];   % Defines which Eigenvalues will be selected
% Eigenfaces = Eigenfaces(:,EigenRange);
% % 
%% ############# Load Test Data and project on Face Space #################
img = zeros(imageSize(1)*imageSize(2),numTestImage);
for i = 1:numTestImage
    aa = imresize(detect_face(imresize(imread(TestImages{i,1}),[375,300])),imageSize);
    img(:,i) = aa(:);
    disp(sprintf('Loading Test Image # %d',i));
end
meanImage = mean(img,2);        
img = (img - meanImage*ones(1,numTestImage))';
%load('pca_210img.mat')
load ('pca_140')
Projected_Test = img*Eigenfaces;




%########################################
 test=Projected_Test;


Train_Label= zeros(size(1,140),1);
Train_Label(1:20,1) =0; 
Train_Label(21:42,1) =1;
Train_Label(43:62,1) =2;
Train_Label(63:82,1) =3;
Train_Label(83:100,1) =4;
Train_Label(101:120,1) =5;
Train_Label(121:140,1) =6;
Train_Label=Train_Label';

% Train_Label= zeros(size(1,210),1);
% Train_Label(1:30,1) =0; 
% Train_Label(31:60,1) =1;
% Train_Label(61:90,1) =2;
% Train_Label(91:120,1) =3;
% Train_Label(121:150,1) =4;
% Train_Label(151:180,1) =5;
% Train_Label(181:210,1) =6;
% Train_Label=Train_Label';
fid = fopen('Results.txt','w');
fprintf(fid,'//Test Image, Expression\r\n');


for i=1:numTestImage
result = multisvm(Train_face,Train_Label,test(i,:));
%disp(result);
 b = find(TestImages{i,1}=='\');
 Test_Image = TestImages{i,1}(b(end)+1:end);
% Visualize Results
if result == 0
    R1 = 'Angree';
   Expr= 'Angree';
%     disp(' Angree ');
elseif result == 1
     R2 = 'Disgust';
   Expr= 'Disgust';
%     disp(' Disgust '); 
elseif result == 2
     R3 = 'Fear';
     Expr= 'Fear';
%      disp(' Fear ');
     
elseif result == 3
     R4 = 'Happy';
     Expr= 'Happy';
%      disp(' Happy ');   
elseif result == 4
     R5 = 'Neutral';
     Expr= 'Neutral';
%      disp(' Neutral ');
elseif result == 5
     R6 = 'Sad';
     Expr= 'Sad';
%      disp(' Sad ');
elseif result == 6
     R7 = 'Surprise';
     Expr= 'Surprise';
%      disp(' Surprise ');
end
fprintf(fid,'%s,%s\r\n',Test_Image,Expr);
 I=imread(strcat('C:\GURU\project 1\test\',Test_Image));
    
    %a=strcat('handles.axes',num2str(i));  
    handles.currentdata2=I;
    if i==1
   axes(handles.axes1)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit4,'string',[Expr]);
    end
    if i==2
      axes(handles.axes2)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit5,'string',[Expr]);
    end  
    if i==3
    axes(handles.axes3)
   imshow(I);
    title('Recognized Image with Expression');
     set(handles.edit6,'string',[Expr]);
    end
    
    
    if i==4
   axes(handles.axes4)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit7,'string',[Expr]);
    end
    if i==5
      axes(handles.axes5)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit8,'string',[Expr]);
    end  
    if i==6
    axes(handles.axes6)
   imshow(I);
    title('Recognized Image with Expression');
     set(handles.edit9,'string',[Expr]);
    end
end
fclose(fid);

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Click on the folder saved by the name test ');
pause(2);
TP1 = uigetdir('C:\GURU\project 1\test:', 'View Testdatabase');
winopen(TP1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Click on the folder saved by the name train');
pause(2);
TP2 = uigetdir('C:\GURU\project 1\train:', 'View traindatabase');
winopen(TP2);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Click on the folder saved by the name LabelFile');
pause(2);
TP2 = uigetdir('C:\GURU\project 1\labelfile:', 'View labelfile');
pdv=strcat(TP2,'\LabelFile.txt');
winopen(pdv);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Click on the folder saved by the name Results');
pause(2);
TP2 = uigetdir('C:\GURU\project 1\Results:', 'View Result File');
pdv=strcat(TP2,'\Results.txt');
winopen(pdv);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
close all;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.tiff'},'Pick a test Image File');
I = imread([pathname,filename]);
handles.ImgData1 = I;
handles.ImgData2=filename;
guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.ImgData1;
 numTestImage = 1; % Number of Test Images
% clear ('structTestImages','fid','i','j');
% 
% 
imageSize = [250,250];          % All Images are resized into a common size
% 
img = zeros(imageSize(1)*imageSize(2),numTestImage);
% for i = 1:numTestImage
    aa = imresize(detect_face(imresize(I,[375,300])),imageSize);
    img(:,1) = aa(:);
%     disp(sprintf('Loading Test Image # %d',i));
% end
meanImage = mean(img,2);        

load('pcadata.mat')
Projected_Test = img'*Eigenfaces;
% 

 test=Projected_Test;

Train_face=L_eig_vec;
fid = fopen('Results.txt','w');
fprintf(fid,'//Test Image, Expression\r\n');

% 
% 
result = multisvm(Train_face,Train_Label,test);
%disp(result);

% Visualize Results

 Test_Image = handles.ImgData2;
% Visualize Results
if result == 0
    R1 = 'Angree';
   Expr= 'Angree';
%     disp(' Angree ');
elseif result == 1
     R2 = 'Disgust';
   Expr= 'Disgust';
%     disp(' Disgust '); 
elseif result == 2
     R3 = 'Fear';
     Expr= 'Fear';
%      disp(' Fear ');
     
elseif result == 3
     R4 = 'Happy';
     Expr= 'Happy';
%      disp(' Happy ');   
elseif result == 4
     R5 = 'Neutral';
     Expr= 'Neutral';
%      disp(' Neutral ');
elseif result == 5
     R6 = 'Sad';
     Expr= 'Sad';
%      disp(' Sad ');
elseif result == 6
     R7 = 'Surprise';
     Expr= 'Surprise';
%      disp(' Surprise ');
end
fprintf(fid,'%s,%s\r\n',Test_Image,Expr);

  handles.currentdata2=I;
   axes(handles.axes1)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit4,'string',[Expr]);
    fclose(fid);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fprintf('\n Starting Image capturing device  ...');
                    fprintf('\n');
 
                        %Construct a video input object for camera 1
                    imaqhwinfo('winvideo',1);       % Retriving camera details
                    vid = videoinput('winvideo',1,'YUY2_640x480');
                    set(vid,'ReturnedColorSpace','rgb');
                    preview(vid);
                    pause(5);      % wait

                       % Configure  settings to capture image
                    frame = getsnapshot(vid);       %capture image
                    
                      figure,
                      axes(handles.axes1)
                      imshow(frame);
                      title('Test image');
                     
                    delete(vid);

          BW=rgb2gray(frame);                              
                    
 imwrite(BW,'tst\1.tiff');


I=imresize(BW,[640 480]);
axes(handles.axes1)
imshow(I);
title('Test Image');
handles.ImgData3=I;
guidata(hObject,handles);

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=handles.ImgData3;
 numTestImage = 1; % Number of Test Images
% clear ('structTestImages','fid','i','j');
% 
% 
imageSize = [250,250];          % All Images are resized into a common size
% 
img = zeros(imageSize(1)*imageSize(2),numTestImage);
% for i = 1:numTestImage
    aa = imresize(detect_face(imresize(I,[375,300])),imageSize);
    img(:,1) = aa(:);
%     disp(sprintf('Loading Test Image # %d',i));
% end
meanImage = mean(img,2);        

load('pcadata.mat')
Projected_Test = img'*Eigenfaces;
% 

 test=Projected_Test;

Train_face=L_eig_vec;


% 
% 
result = multisvm(Train_face,Train_Label,test);
%disp(result);

% Visualize Results

  
if result == 0
    R1 = 'Angree';
   Expr= 'Angree';
%     disp(' Angree ');
elseif result == 1
     R2 = 'Disgust';
   Expr= 'Disgust';
%     disp(' Disgust '); 
elseif result == 2
     R3 = 'Fear';
     Expr= 'Fear';
%      disp(' Fear ');
     
elseif result == 3
     R4 = 'Happy';
     Expr= 'Happy';
%      disp(' Happy ');   
elseif result == 4
     R5 = 'Neutral';
     Expr= 'Neutral';
%      disp(' Neutral ');
elseif result == 5
     R6 = 'Sad';
     Expr= 'Sad';
%      disp(' Sad ');
elseif result == 6
     R7 = 'Surprise';
     Expr= 'Surprise';
%      disp(' Surprise ');
end


  handles.currentdata3=I;
   axes(handles.axes2)
   imshow(I);
    title('Recognized Image with Expression');
    set(handles.edit5,'string',[Expr]);
    guidata(hObject,handles);