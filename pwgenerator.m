function varargout = password2(varargin)
% PASSWORD2 MATLAB code for password2.fig
%      PASSWORD2, by itself, creates a new PASSWORD2 or raises the existing
%      singleton*.
%
%      H = PASSWORD2 returns the handle to a new PASSWORD2 or the handle to
%      the existing singleton*.
%
%      PASSWORD2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PASSWORD2.M with the given input arguments.
%
%      PASSWORD2('Property','Value',...) creates a new PASSWORD2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before password2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to password2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help password2

% Last Modified by GUIDE v2.5 23-Oct-2023 02:34:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @password2_OpeningFcn, ...
                   'gui_OutputFcn',  @password2_OutputFcn, ...
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


% --- Executes just before password2 is made visible.
function password2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to password2 (see VARARGIN)

% Choose default command line output for password2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes password2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = password2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in capitalletters.
function capitalletters_Callback(hObject, eventdata, handles)
% hObject    handle to capitalletters (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of capitalletters


% --- Executes on button press in numbers.
function numbers_Callback(hObject, eventdata, handles)
% hObject    handle to numbers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of numbers


% --- Executes on button press in special.
function special_Callback(hObject, eventdata, handles)
% hObject    handle to special (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of special


% --- Executes on button press in generate.
function generate_Callback(hObject, eventdata, handles)
% hObject    handle to generate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double


% --- Executes during object creation, after setting all properties.
function password_CreateFcn(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function digitnum_Callback(hObject, eventdata, handles)
% hObject    handle to digitnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of digitnum as text
%        str2double(get(hObject,'String')) returns contents of digitnum as a double


% --- Executes during object creation, after setting all properties.
function digitnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to digitnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
