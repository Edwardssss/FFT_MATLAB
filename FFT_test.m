%% 预处理
clc,clf,clear;
%% 设置参数
Fs = 10000; % 采样率
N = 2048; % 采样点数
Signal_Freq = 200; % 信号的频率
my_FFT(Fs,N,Signal_Freq); % 测试函数
