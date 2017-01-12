close all; clc; clear;

%% load orig_signal
%orig_signal = load('./Orig_and_filtered_Signals/orig_signal.mat');
orig_signal.plot;

%%
dt=orig_signal.Time(2)-orig_signal.Time(1);
length = orig_signal.Length;
time=orig_signal.Time;
data=orig_signal.Data;

%% FFT
Y = fft(data,length);%fft is a fast discrete fourier transform
PSD = Y.*conj(Y)/length;%power spectrum (how much power is in each freq)
freq = 1/(dt*length)*(0:length);%creates the X-axis at freqs in Hz
L = 1:length/2/10/5/10;
figure;
plot(freq(L),PSD(L));
title('Power Spectrum');
xlabel('Frequency (Hz)');
