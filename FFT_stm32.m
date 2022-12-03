%% 预处理
clc,clf,clear;
%% 两个频率分别为15HZ 和 20HZ 的正弦信号[1]
Fs=50;%采样率
f1=15;
f2=20;
t = 0:1/Fs:10-1/Fs; %500个点
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);
figure;
plot(t,x);
y = fft(x); 
%将横坐标转化，显示为频率f= n*(fs/N)
f = (0:length(y)-1)*Fs/length(y);
figure;
plot(f,abs(y));
title('Magnitude');
%该变换还会生成尖峰的镜像副本，该副本对应于信号的负频率。
%为了更好地以可视化方式呈现周期性，可以使用 fftshift 函数对变换执行以零为中心的循环平移。
n = length(x);                         
fshift = (0:n/2-1)*(Fs/n);
yshift = fftshift(y);
figure;
fft_abs = abs(yshift);
plot(fshift,fft_abs(251:500));
