clear; close all; clc;
%% read file
%[y,Fs] = audioread('ArcticMonkeys-DoIWannaKnow.mp3');
[y,Fs] = audioread('ArcticMonkeys-DoIWannaKnow.mp3',[1 100000]);


%% play mp3
%sound(y,Fs);
%audply = audioplayer(y,Fs);
%audply.play
%audply.pause

%%
dt=1/Fs;
L=length(y(:,1));
time=0:dt:((L-1)*dt);
plot(time,y(:,1),'b',time,y(:,2),'r');

%%
N=length(time);
Y = fft(y,N);%fft is a fast discrete fourier transform
PSD = Y.*conj(Y)/N;%power spectrum (how much power is in each freq)
freq = 1/(dt*N)*(1:N);%creates the X-axis at freqs in Hz
%plot(freq,PSD(:,1),'b',freq,PSD(:,2),'r');
%plot(freq(1:N/2),PSD(1:N/2,1),'b',freq(1:N/2),PSD(1:N/2,2),'r');
V=1:N/2/5/5;
%plot(freq(V),PSD(V,1),'b',freq(V),PSD(V,2),'r');
plot(freq(V),PSD(V,:),'b');
title('Power Spectrum');
xlabel('Frequency (Hz)');


