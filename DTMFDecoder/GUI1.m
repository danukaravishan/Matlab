function varargout = GUI1(varargin)
% GUI1 MATLAB code for GUI1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI1

% Last Modified by GUIDE v2.5 20-Apr-2016 01:08:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI1_OutputFcn, ...
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
end

% --- Executes just before GUI1 is made visible.
function GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI1 (see VARARGIN)

% Choose default command line output for GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 axes(handles.axes1);
 title('Sound Wave');
 xlabel('Samples');
 axes(handles.axes2);
 title('Frequency Spectrum');
 xlabel('Frequenct(Hz)');

end

% --- Outputs from this function are returned to the command line.
function varargout = GUI1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
surf(membrane(1));
end
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(1);
    axes(handles.axes1);
    plot(real_data(1));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(1));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(2);
    axes(handles.axes1);
    plot(real_data(2));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(2));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(3);
    axes(handles.axes1);
    plot(real_data(3));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(3));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(4);
    axes(handles.axes1);
    plot(real_data(4));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(4));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(5);
    axes(handles.axes1);
    plot(real_data(5));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(5));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton4.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(6);
    axes(handles.axes1);
    plot(real_data(6));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(6));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(7);
    axes(handles.axes1);
    plot(real_data(7));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(7));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(8);
    axes(handles.axes1);
    plot(real_data(8));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(8));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton7.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(9);
    axes(handles.axes1);
    plot(real_data(9));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(9));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf('*');
    axes(handles.axes1);
    plot(real_data('*'));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data('*'));
   % s = num2str(num)
    set(handles.text1,'String',num);
end

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf(0);
    axes(handles.axes1);
    plot(real_data(0));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data(0));
    s = num2str(num)
    set(handles.text1,'String',s);
end

% --- Executes on button press in pushbutton10.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    num=dtmf('#');
    axes(handles.axes1);
    plot(real_data('#'));
    xlabel('Samples');
    title('Sound Wave');
    axes(handles.axes2);
    plot_fft(real_data('#'));
   % s = num2str(num)
    set(handles.text1,'String',num);
end

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.

end

function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
end
end

function key_out = dtmf (key_in)

    num=key_in;
    lf=0;
    hf=0;
    Fs = 8000;
    N = 500;
    
    if num==1
        lf=697;hf=1209;
    elseif num==2
        lf=697;hf=1336;    
    elseif num==3
        lf=697;hf=1477;    
    elseif num==4
        lf=770;hf=1209;    
    elseif num==5
        lf=770;hf=1336;    
    elseif num==6
        lf=770;hf=1477;    
    elseif num==7
        lf=852;hf=1209;    
    elseif num==8
        lf=852;hf=1336;    
    elseif num==9
        lf=852;hf=1477;    
    elseif num=='*'
        lf=941;hf=1209;    
    elseif  num=='#'
        lf=941;hf=1477;  
    elseif num==0
        lf=941;hf=1336;
    end
        
    lo = sin(2*pi*lf*(0:N-1)/Fs);
    hi = sin(2*pi*hf*(0:N-1)/Fs);
    
    data = lo + hi;
    sound(data);
    
    fr_out=[0 0];
    
    f = [697 770 852 941 1209 1336 1477];    % required frequency components

    freq_indices = round(f/Fs*N) + 1;        % normalized frequencies

    dft_data = goertzel(data,freq_indices);  % calculate the dft at each frequency components.

    threshold=100;    % thresholding the frequency response
    
    k=1;
    for x=1:length(dft_data)
        if abs(dft_data(x))>threshold
            fr_out(k)=f(x);
            k=k+1;
        end
    end
    
    lf=fr_out(1);
    hf=fr_out(2);
    
    num='error';
    
    if lf==697
        if hf==1209
            num=1;
        elseif hf==1336
            num=2;
        elseif hf==1477
            num=3;
        end
    elseif lf==770
        if hf==1209
            num=4;
        elseif hf==1336
            num=5;
        elseif hf==1477
            num=6;
        end
    elseif lf==852
        if hf==1209
            num=7;
        elseif hf==1336
            num=8;
        elseif hf==1477
            num=9;
        end
        
    elseif lf==941
        if hf==1209
            num='*';
        elseif hf==1336
            num=0;
        elseif hf==1477
            num='#';
        end
    end
    
    key_out=num;
    
end

function data = real_data(n)
    num=n;
    lf=0;
    hf=0;
    Fs = 8000;
    N = 500;
    
    if num==1
        lf=697;hf=1209;
    elseif num==2
        lf=697;hf=1336;    
    elseif num==3
        lf=697;hf=1477;    
    elseif num==4
        lf=770;hf=1209;    
    elseif num==5
        lf=770;hf=1336;    
    elseif num==6
        lf=770;hf=1477;    
    elseif num==7
        lf=852;hf=1209;    
    elseif num==8
        lf=852;hf=1336;    
    elseif num==9
        lf=852;hf=1477;    
    elseif num=='*'
        lf=941;hf=1209;    
    elseif  num=='#'
        lf=941;hf=1477;  
    elseif num==0
        lf=941;hf=1336;
    end
        
    lo = sin(2*pi*lf*(0:N-1)/Fs);
    hi = sin(2*pi*hf*(0:N-1)/Fs);
    
    data = lo + hi;
    
end

function  plot_fft(data)
    Fs=8000;
    N=500;
    f = [697 770 852 941 1209 1336 1477];    % required frequency components

    freq_indices = round(f/Fs*N) + 1;        % normalized frequencies

    dft_data = goertzel(data,freq_indices);  % calculate the dft at each frequency components.
    
    stem(f,abs(dft_data));
    xlabel('Frequency (Hz)')
    title('Frequency Spectrum')
    
end
