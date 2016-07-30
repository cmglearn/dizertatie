clear; close all; clc

%% create a simple signal with two frequencies
dt = 0.001;
t = 0:dt:1;
x = sin(2*pi*50*t) + sin(2*pi*120*t); % w1= 50Hz, w2 = 120Hz

figure(1)
plot(t,x,'LineWidth',1.2);
%%
figure
N=length(t);
Y = fft(x,N);%fft is a fast discrete fourier transform
PSD = Y.*conj(Y)/N;%power spectrum (how much power is in each freq)
freq = 1/(dt*N)*(0:N);%creates the X-axis at freqs in Hz
L = 1:floor(N/2); %only plot the first half of frequencies
%L = 1:N; %only plot the first half of frequencies
plot(freq(L),PSD(L))
title('Power Spectrum');
xlabel('Frequency (Hz)');


