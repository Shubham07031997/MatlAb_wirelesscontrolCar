function varargout = wireless_car(varargin)
% WIRELESS_CAR MATLAB code for wireless_car.fig
%      WIRELESS_CAR, by itself, creates a new WIRELESS_CAR or raises the existing
%      singleton*.
%
%      H = WIRELESS_CAR returns the handle to a new WIRELESS_CAR or the handle to
%      the existing singleton*.
%
%      WIRELESS_CAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WIRELESS_CAR.M with the given input arguments.
%
%      WIRELESS_CAR('Property','Value',...) creates a new WIRELESS_CAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wireless_car_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wireless_car_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wireless_car

% Last Modified by GUIDE v2.5 29-Jun-2016 14:22:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wireless_car_OpeningFcn, ...
                   'gui_OutputFcn',  @wireless_car_OutputFcn, ...
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


% --- Executes just before wireless_car is made visible.
function wireless_car_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wireless_car (see VARARGIN)

% Choose default command line output for wireless_car
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
clear a;
global a;
a = arduino('COM5');

a.pinMode(9,'output');
a.pinMode(10,'output');
a.pinMode(11,'output');
a.pinMode(12,'output');

a.digitalWrite(9,0);
a.digitalWrite(10,0);
a.digitalWrite(11,0);
a.digitalWrite(12,0);

% UIWAIT makes wireless_car wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = wireless_car_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.digitalWrite(9,1);
a.digitalWrite(10,0);
a.digitalWrite(11,1);
a.digitalWrite(12,0);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.digitalWrite(9,0);
a.digitalWrite(10,1);
a.digitalWrite(11,0);
a.digitalWrite(12,1);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.digitalWrite(9,0);
a.digitalWrite(10,0);
a.digitalWrite(11,0);
a.digitalWrite(12,0);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.digitalWrite(9,0);
a.digitalWrite(10,1);
a.digitalWrite(11,0);
a.digitalWrite(12,0);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
a.digitalWrite(9,0);
a.digitalWrite(10,0);
a.digitalWrite(11,0);
a.digitalWrite(12,1);
