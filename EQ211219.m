function varargout = EQ211219(varargin)
% EQ211219 MATLAB code for EQ211219.fig
%      EQ211219, by itself, creates a new EQ211219 or raises the existing
%      singleton*.  
%
%      H = EQ211219 returns the handle to a new EQ211219 or the handle to
%      the existing singleton*.
%
%      EQ211219('CALLBACK',hObject,eventData,handles,...) calls the local
%      function n amed CALLBACK in EQ211219.M with the given input arguments.
%
%      EQ211219('Property','Value',...) creates a new EQ211219 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EQ211219_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EQ211219_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EQ211219

% Last Modified by GUIDE v2.5 07-Jan-2020 22:45:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EQ211219_OpeningFcn, ...
                   'gui_OutputFcn',  @EQ211219_OutputFcn, ...
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

% --- Executes just before EQ211219 is made visible.
function EQ211219_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EQ211219 (see VARARGIN)
global C;
C=ones(1,10);
axes(handles.axes);
xlabel('Time');
ylabel('Amplitude');
axes(handles.axes1);
title('Input Signal');
xlabel('Frequency'); 
ylabel('Amplitude');
axes(handles.axes2);
title('Output Signal');
xlabel('Frequency'); 
ylabel('Amplitude');

set(handles.slider1,'min',-10);
set(handles.slider1,'max',10);
set(handles.slider1,'value',1);
set(handles.slider1,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider1,'string',num2str(1));

set(handles.slider2,'min',-10);
set(handles.slider2,'max',10);
set(handles.slider2,'value',1);
set(handles.slider2,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider2,'string',num2str(1));

set(handles.slider3,'min',-10);
set(handles.slider3,'max',10);
set(handles.slider3,'value',1);
set(handles.slider3,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider3,'string',num2str(1));

set(handles.slider4,'min',-10);
set(handles.slider4,'max',10);
set(handles.slider4,'value',1);
set(handles.slider4,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider4,'string',num2str(1));

set(handles.slider5,'min',-20);
set(handles.slider5,'max',20);
set(handles.slider5,'value',1);
set(handles.slider5,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider5,'string',num2str(1));

set(handles.slider6,'min',-10);
set(handles.slider6,'max',10);
set(handles.slider6,'value',1);
set(handles.slider6,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider6,'string',num2str(1));

set(handles.slider7,'min',-10);
set(handles.slider7,'max',10);
set(handles.slider7,'value',1);
set(handles.slider7,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider7,'string',num2str(1));

set(handles.slider8,'min',-10);
set(handles.slider8,'max',10);
set(handles.slider8,'value',1);
set(handles.slider8,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider8,'string',num2str(1));

set(handles.slider9,'min',-10);
set(handles.slider9,'max',10);
set(handles.slider9,'value',1);
set(handles.slider9,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider9,'string',num2str(1));

set(handles.slider10,'min',-10);
set(handles.slider10,'max',10);
set(handles.slider10,'value',1);
set(handles.slider10,'SliderStep',[0.025,0.05]);
set(handles.text_of_slider10,'string',num2str(1));

% Choose default command line output for EQ211219
handles.output = hObject;
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
%bg = imread('default_wallpaper_no.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EQ211219 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EQ211219_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on key press with focus on browse and none of its controls.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global filename;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs;
global X;
global C;
[filename] = uigetfile({'*.wav';'*.*'},'File Selector');
set(handles.filename,'string',filename);
[X,Fs]=audioread(filename);
set(handles.volume,'min',0);
set(handles.volume,'max',2);
set(handles.volume,'value',1);
set(handles.volume,'SliderStep',[0.025,0.05]);
global ketthuc samples;
[samples,channels]=size(X);
ketthuc = samples/Fs ;
set(handles.end_music,'string',datestr(seconds(ketthuc),'MM:SS'));
set(handles.slider_music,'min',0);
set(handles.slider_music,'max',fix(ketthuc));
set(handles.start_music,'string',datestr(seconds(0),'MM:SS'));


% --- Executes on button press in play.
function play_Callback(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Volume;
global player;
global y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global y X;
global Fs;
global ketthuc;
global C
Volume=get(handles.volume,'value');
order=200;
nyquistRate=Fs/2;
h2=fir1(order,60/nyquistRate,'low');
h3=fir1(order,[260/nyquistRate 300/nyquistRate],'bandpass');
h4=fir1(order,[520/nyquistRate 560/nyquistRate],'bandpass');
h5=fir1(order,[1000/nyquistRate 1040/nyquistRate],'bandpass');
h6=fir1(order,[2000/nyquistRate 2040/nyquistRate],'bandpass');
h7=fir1(order,[3000/nyquistRate 3040/nyquistRate],'bandpass');
h8=fir1(order,[4000/nyquistRate 4040/nyquistRate],'bandpass');
h9=fir1(order,[8000/nyquistRate 8040/nyquistRate],'bandpass');
h10=fir1(order,[10000/nyquistRate 10040/nyquistRate],'bandpass');
h11=fir1(order,12000/nyquistRate,'high');

y2=filter(Volume*h2,1,X);
y3=filter(Volume*h3,1,X);
y4=filter(Volume*h4,1,X);
y5=filter(Volume*h5,1,X);
y6=filter(Volume*h6,1,X);
y7=filter(Volume*h7,1,X);
y8=filter(Volume*h8,1,X);
y9=filter(Volume*h9,1,X);
y10=filter(Volume*h10,1,X);
y11=filter(Volume*h11,1,X);
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
balance=C(1)+C(2)+C(3)+C(4)+C(5)+C(6)+C(7)+C(8)+C(9)+C(10);
if(balance==10)
   y=X; 
end
player = audioplayer(Volume*y,Fs);
play(player)
axes(handles.axes);
t=[0:length(y)-1]/Fs;
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c;
c = 0;
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in pause.
function pause_Callback(hObject, eventdata, handles)
% hObject    handle to pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
pause(player)


% --- Executes on button press in resume.
function resume_Callback(hObject, eventdata, handles)
% hObject    handle to resume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
global c ketthuc;
resume(player)
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
global c;
c=0;
set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
stop(player)

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(1)=get(hObject,'value');
set(handles.text_of_slider1,'string',num2str(C(1)));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% %gain2=get(hObject,'value');
% %set(handles.slider1,'String',num2str(gain2));
% % set(handles.slider1,'Min',f(1));
% % set(handles.slider1,'Max',f(501));
% % set(handles.slider1,'SliderStep',[1/501,10/501]);
% % a=get(handles.slider1,'Value');
% % set(handles.text1,'string',num2str(a));
% guidata(hObject,handles);
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(2)=get(hObject,'value');
set(handles.text_of_slider2,'string',num2str(C(2)));

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(3)=get(hObject,'value');
set(handles.text_of_slider3,'string',num2str(C(3)));

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(4)=get(hObject,'value');
set(handles.text_of_slider4,'string',num2str(C(4)));

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(5)=get(hObject,'value');
set(handles.text_of_slider5,'string',num2str(C(5)));

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function text_of_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider1 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider1 as a double
global C;
C(1)=str2num(get(hObject,'string'));
mini=get(handles.slider1,'min');
maxi=get(handles.slider1,'max');
if(C(1)<mini || C(1)>maxi)
    C(1)=get(handles.slider1,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider1,'value',C(1));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider2_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider2 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider2 as a double
global C;
C(2)=str2num(get(hObject,'string'));
mini=get(handles.slider2,'min');
maxi=get(handles.slider2,'max');
if(C(2)<mini || C(2)>maxi)
    C(2)=get(handles.slider2,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider2,'value',C(2));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider3_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider3 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider3 as a double
global C;
C(3)=str2num(get(hObject,'string'));
mini=get(handles.slider3,'min');
maxi=get(handles.slider3,'max');
if(C(3)<mini || C(3)>maxi )
    C(3)=get(handles.slider3,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider3,'value',C(3));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider4_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider4 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider4 as a double
global C;
C(4)=str2num(get(hObject,'string'));
mini=get(handles.slider4,'min');
maxi=get(handles.slider4,'max');
if(C(4)<mini || C(4)>maxi)
    C(4)=get(handles.slider4,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider4,'value',C(4));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider5_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider5 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider5 as a double
global C;
C(5)=str2num(get(hObject,'string'));
mini=get(handles.slider5,'min');
maxi=get(handles.slider5,'max');
if(C(5)<mini || C(5)>maxi)
    C(5)=get(handles.slider5,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider5,'value',C(5));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global C;
C(6)=get(hObject,'value');
set(handles.text_of_slider6,'string',num2str(C(6)));

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, ~, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function text_of_slider6_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider6 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider6 as a double
global C;
C(6)=str2num(get(hObject,'string'));
mini=get(handles.slider6,'min');
maxi=get(handles.slider6,'max');
if(C(6)<mini || C(6)>maxi)
    C(6)=get(handles.slider6,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider5,'value',C(6));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(7)=get(hObject,'value');
set(handles.text_of_slider7,'string',num2str(C(7)));

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(8)=get(hObject,'value');
set(handles.text_of_slider8,'string',num2str(C(8)));

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(9)=get(hObject,'value');
set(handles.text_of_slider9,'string',num2str(C(9)));


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global C;
C(10)=get(hObject,'value');
set(handles.text_of_slider10,'string',num2str(C(10)));


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function text_of_slider7_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider7 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider7 as a double
global C;
C(7)=str2num(get(hObject,'string'));
mini=get(handles.slider7,'min');
maxi=get(handles.slider7,'max');
if(C(7)<mini || C(7)>maxi)
    C(7)=get(handles.slider7,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider7,'value',C(7));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider8_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider8 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider8 as a double
global C;
C(8)=str2num(get(hObject,'string'));
mini=get(handles.slider8,'min');
maxi=get(handles.slider8,'max');
if(C(8)<mini || C(8)>maxi)
    C(8)=get(handles.slider8,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider8,'value',C(8));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider9_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider9 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider9 as a double
global C;
C(9)=str2num(get(hObject,'string'));
mini=get(handles.slider9,'min');
maxi=get(handles.slider9,'max');
if(C(9)<mini || C(9)>maxi)
    C(9)=get(handles.slider9,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider9,'value',C(9));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function text_of_slider10_Callback(hObject, eventdata, handles)
% hObject    handle to text_of_slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_of_slider10 as text
%        str2double(get(hObject,'String')) returns contents of text_of_slider10 as a double
global C;
C(10)=str2num(get(hObject,'string'));
mini=get(handles.slider10,'min');
maxi=get(handles.slider10,'max');
if(C(10)<mini || C(10)>maxi)
    C(10)=get(handles.slider10,'value');
    set(hObject,'string',num2str(0));
else
    set(handles.slider10,'value',C(10));
end

% --- Executes during object creation, after setting all properties.
function text_of_slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_of_slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function filename_Callback(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
set(hObject,'string',filename);
% Hints: get(hObject,'String') returns contents of filename as text
%        str2double(get(hObject,'String')) returns contents of filename as a double


% --- Executes during object creation, after setting all properties.
function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in choosefilter.
function choosefilter_Callback(hObject, eventdata, handles)
% hObject    handle to choosefilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns choosefilter contents as cell array
%        contents{get(hObject,'Value')} returns selected item from choosefilter


% --- Executes during object creation, after setting all properties.
function choosefilter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to choosefilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot_spectrum.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to plot_spectrum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);

% --- Executes during object creation, after setting all properties.
function browse_CreateFcn(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on key press with focus on browse and none of its controls.
function browse_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function volume_Callback(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
 

% --- Executes during object creation, after setting all properties.
function volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function play_CreateFcn(hObject, eventdata, handles)
% hObject    handle to play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in plot_spectrum.
function plot_spectrum_Callback(hObject, eventdata, handles)
% hObject    handle to plot_spectrum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11
global C X;

y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
balance=C(1)+C(2)+C(3)+C(4)+C(5)+C(6)+C(7)+C(8)+C(9)+C(10);
if(balance==10)
   y=X; 
end
v=get(handles.choosefilter,'Value');
if v==1
    out=0;
elseif v==2
    out=y2;
elseif v==3
    out=y3;
elseif v==4
    out=y4;
elseif v==5
    out=y5;
elseif v==6
    out=y6;
elseif v==7
    out=y7;
elseif v==8
    out=y8;
elseif v==9
    out=y9;
elseif v==10
    out=y10;
elseif v==11
    out=y11;  
elseif v==12
    out=y;
end
[X,Fs]=audioread(filename);
F=fft(X,Fs);
f=Fs/2*linspace(0,1,Fs/2+1);
m=length(X);
axes(handles.axes1);
plot(f,abs(F(1:Fs/2+1)))
title('Input Signal');
xlabel('Frequency(Hz)'); 
ylabel('Amplitude');
zoom xon;
Z=fft(out,Fs);
axes(handles.axes2);
plot(f,abs(Z(1:Fs/2+1)))
title('Output Signal');
xlabel('Frequency(Hz)'); 
ylabel('Amplitude');
zoom xon;

% --- Executes on button press in pop.
function pop_Callback(hObject, eventdata, handles)
% hObject    handle to pop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs ;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 4;
C(2) = 6;
C(3) = 3;
C(4) = -1.3;
C(5) = -1.8;
C(6) = -1.8;
C(7) = -1.8;
C(8) = -1.8;
C(9) = -1.8;
C(10) = -1.8;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in rock.
function rock_Callback(hObject, eventdata, handles)
% hObject    handle to rock (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs ;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 4.5;
C(2) = -4.6;
C(3) = -1.6;
C(4) = 2;
C(5) = 5;
C(6) = 8;
C(7) = 8;
C(8) = 8;
C(9) = 8;
C(10) = 8;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in jazz.
function jazz_Callback(hObject, eventdata, handles)
% hObject    handle to jazz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs ;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 5;
C(2) = 2;
C(3) = 8;
C(4) = 7;
C(5) = 6;
C(6) = 6;
C(7) = 0;
C(8) = 0;
C(9) = 0;
C(10) = 0;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in bass.
function bass_Callback(hObject, eventdata, handles)
% hObject    handle to bass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs ;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 9;
C(2) = 7;
C(3) = 4;
C(4) = -1;
C(5) = -3;
C(6) = -4;
C(7) = -5;
C(8) = -5;
C(9) = -5;
C(10) = -2;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in classic.
function classic_Callback(hObject, eventdata, handles)
% hObject    handle to classic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs ;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 0;
C(2) = 2;
C(3) = 2;
C(4) = 1;
C(5) = -3;
C(6) = -3.5;
C(7) = -3;
C(8) = -3;
C(9) = -3;
C(10) = -2;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global C player;
global Volume;
global y y2 y3 y4 y5 y6 y7 y8 y9 y10 y11;
global Fs X;
pause(player)
Current = get(player,'CurrentSample');
C(1) = 1;
C(2) = 1;
C(3) = 1;
C(4) = 1;
C(5) = 1;
C(6) = 1;
C(7) = 1;
C(8) = 1;
C(9) = 1;
C(10) = 1;
set(handles.slider1,'value',C(1));
set(handles.slider2,'value',C(2));
set(handles.slider3,'value',C(3));
set(handles.slider4,'value',C(4));
set(handles.slider5,'value',C(5));
set(handles.slider6,'value',C(6));
set(handles.slider7,'value',C(7));
set(handles.slider8,'value',C(8));
set(handles.slider9,'value',C(9));
set(handles.slider10,'value',C(10));
set(handles.text_of_slider1, 'String',C(1));
set(handles.text_of_slider2, 'String',C(2));
set(handles.text_of_slider3, 'String',C(3));
set(handles.text_of_slider4, 'String',C(4));
set(handles.text_of_slider5, 'String',C(5));
set(handles.text_of_slider6, 'String',C(6));
set(handles.text_of_slider7, 'String',C(7));
set(handles.text_of_slider8, 'String',C(8));
set(handles.text_of_slider9, 'String',C(9));
set(handles.text_of_slider10, 'String',C(10));
Volume=get(handles.volume,'value');
y=y2*C(1)+y3*C(2)+y4*C(3)+y5*C(4)+y6*C(5)+y7*C(6)+y8*C(7)+y9*C(8)+y10*C(9)+y11*C(10);
balance=C(1)+C(2)+C(3)+C(4)+C(5)+C(6)+C(7)+C(8)+C(9)+C(10);
if(balance==10)
   y=X; 
end
player = audioplayer(Volume*y,Fs);
play(player,Current)
t=[0:length(y)-1]/Fs;
axes(handles.axes);
plot(t,y,'red');
xlabel('Time');
ylabel('Amplitude');
axis tight;
zoom xon;
global c ketthuc;
a=get(handles.start_music,'string');
if(strcmp(a,datestr(seconds(ketthuc),'MM:SS'))==1)
    c=0;
end
while isplaying(player)
    pause(0.95);
    if(c<=fix(ketthuc))
    set(handles.start_music,'string',datestr(seconds(c),'MM:SS'));
    set(handles.slider_music,'value',c);
    c = c + 1;
    end
end

% --- Executes on slider movement.
function slider_music_Callback(hObject, eventdata, handles)
% hObject    handle to slider_music (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player;
global Volume y Fs;
% stop(player);
% c_sample=get(handles.slider_music,'value')
% Current=c_sample*Fs
% player = audioplayer(Volume*y,Fs);
% play(player,Current)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_music_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider_music (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
