clc,clf,clear;
Fs = 5000;%采样率
f1 = 15;
t = 0:1 / Fs:1023 / Fs; %500个点
x1 = sin(2 * pi * f1 * t);
x2 = sin(2 * pi * f1 * t + pi / 6);
y = xcorr(x1,x2);
plot(0:2046,y,'k');
