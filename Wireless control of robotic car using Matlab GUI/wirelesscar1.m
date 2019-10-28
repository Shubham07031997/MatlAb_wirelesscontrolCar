function varargout = wirelesscar1(varargin)
% WIRELESSCAR1 MATLAB code for wirelesscar1.fig
%      WIRELESSCAR1, by itself, creates a new WIRELESSCAR1 or raises the existing
%      singleton*.
%
%      H = WIRELESSCAR1 returns the handle to a new WIRELESSCAR1 or the handle to
%      the existing singleton*.
%
%      WIRELESSCAR1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WIRELESSCAR1.M with the given input arguments.
%
%      WIRELESSCAR1('Property','Value',...) creates a new WIRELESSCAR1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wirelesscar1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wirelesscar1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wirelesscar1

% Last Modified by GUIDE v2.5 10-Jul-2019 20:46:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wirelesscar1_OpeningFcn, ...
                   'gui_OutputFcn',  @wirelesscar1_OutputFcn, ...
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


% --- Executes just before wirelesscar1 is made visible.
function wirelesscar1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wirelesscar1 (see VARARGIN)

% Choose default command line output for wirelesscar1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wirelesscar1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wirelesscar1_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in forward.
function forward_Callback(hObject, eventdata, handles)
% hObject    handle to forward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d=getappdata(0,'c');
writeDigitalPin(d,'D9',1);
writeDigitalPin(d,'D10',0);
writeDigitalPin(d,'D11',1);
writeDigitalPin(d,'D12',0);


% --- Executes on button press in stop.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e=getappdata(0,'c');
writeDigitalPin(e,'D9',0);
writeDigitalPin(e,'D10',0);
writeDigitalPin(e,'D11',0);
writeDigitalPin(e,'D12',0);
% --- Executes on button press in reverse.
function reverse_Callback(hObject, eventdata, handles)
% hObject    handle to reverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=getappdata(0,'c');
writeDigitalPin(f,'D9',0);
writeDigitalPin(f,'D10',1);
writeDigitalPin(f,'D11',0);
writeDigitalPin(f,'D12',1);
% --- Executes on button press in right.
function right_Callback(hObject, eventdata, handles)
% hObject    handle to right (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
g=getappdata(0,'c');
writeDigitalPin(g,'D9',0);
writeDigitalPin(g,'D10',1);
writeDigitalPin(g,'D11',0);
writeDigitalPin(g,'D12',0);
% --- Executes on button press in left.
function left_Callback(hObject, eventdata, handles)
% hObject    handle to left (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=getappdata(0,'c');
disp(h)
writeDigitalPin(h,'D9',0);
writeDigitalPin(h,'D10',0);
writeDigitalPin(h,'D11',0);
writeDigitalPin(h,'D12',1);

% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear b;
b = arduino('COM5');
writeDigitalPin(b,'D9',0);
writeDigitalPin(b,'D10',0);
writeDigitalPin(b,'D11',0);
writeDigitalPin(b,'D12',0);

setappdata(0,'c',b);