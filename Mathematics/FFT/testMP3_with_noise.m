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

%% add noise
yN = zeros(L,2);
noise=(2.5*randn(size(time))).';
yN(:,1)=y(:,1)+noise;
yN(:,2)=y(:,2)+noise;

%% play mp3 with noise
%sound(y,Fs);
%audply = audioplayer(yN,Fs);
%audply.play
%audply.pause

%%
N=length(time);
YN = fft(yN,N);%fft is a fast discrete fourier transform
PSDN = YN.*conj(YN)/N;%power spectrum (how much power is in each freq)
freq = 1/(dt*N)*(1:N);%creates the X-axis at freqs in Hz
%plot(freq,PSD(:,1),'b',freq,PSD(:,2),'r');
%plot(freq(1:N/2),PSD(1:N/2,1),'b',freq(1:N/2),PSD(1:N/2,2),'r');
V=1:N/2;
%plot(freq(V),PSDN(V,1),'b');
%plot(freq(V),PSDN(V,2),'r');
plot(freq(V),PSDN(V,1),'b',freq(V),PSDN(V,2),'r');
title('Power Spectrum(noise)');
xlabel('Frequency (Hz)');
