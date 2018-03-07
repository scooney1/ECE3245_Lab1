%% Lab 1_1
%% Part B
clear;clc;close all;
[S,Fs]=audioread('outputfile.m4a');
nlength=length(S);
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(1)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
%soundsc(S,Fs)

%% Part C1
clear;clc;close all;
[S,Fs]=audioread('outputfile.m4a');
nlength=length(S);
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(1)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
%soundsc(S,2*Fs)

%% Part C2
clear;clc;close all;
[S,Fs]=audioread('outputfile.m4a');
nlength=length(S);
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(1)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
%soundsc(S,Fs/2)

%% Part C3
clear;clc;close all;
[S,Fs]=audioread('outputfile.m4a');
nlength=length(S);
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(1)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
%soundsc(flipud(S),Fs)

%% Part D
clear;clc;close all;
[S,Fs]=audioread('outputfile.m4a');
nlength=length(S);
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(1)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
%sound(S/2,Fs)

%% Part E
clear;clc;close all;
[M,~]=audioread('Havana_music_P1.m4a');
[S,Fs]=audioread('outputfile.m4a');
mlength=length(M);
nlength=length(S);
M(nlength+1:mlength,:)=[];
S=4*S;W=M+S;
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
figure(3)
hold on
plot(time,W)
plot(time,M)
plot(time,S)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
legend('W','M','S')
hold off
%soundsc(W,Fs)

%% Part F
clear;clc;close all;
[M,~]=audioread('Havana_music_P1.m4a');
[S,Fs]=audioread('outputfile.m4a');
mlength=length(M);
nlength=length(S);
M(nlength+1:mlength,:)=[];
time_end=nlength/Fs;
time=[1/Fs:1/Fs:time_end];
sz=size(S);sz1=238591;
W=ones(sz,'like',S);
Y=zeros(sz,'like',S);
W(sz1:nlength,:)=Y(sz1:nlength,:);
S=S*10;WS=W.*S;WSM=WS+M;
figure(1)
hold on
plot(time,WSM)
plot(time,WS)
title('Time domain of input WMA file, Sam Cooney')
xlabel('Time')
ylabel('Amplitude')
legend('WSM','WS')
hold off
%soundsc(WSM,Fs)
