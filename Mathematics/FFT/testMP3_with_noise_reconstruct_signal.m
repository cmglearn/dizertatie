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
plot(time,y,'b');
%plot(time,y(:,1),'b',time,y(:,2),'r');

%% add noise
yN = zeros(L,2);
noise=(0.05*randn(size(time))).';
%noise = sin(2*pi*50*t) + sin(2*pi*120*t); % w1= 50Hz, w2 = 120Hz

yN(:,1)=y(:,1)+noise;
yN(:,2)=y(:,2)+noise;
%plot(time,yN,'b');
plot(time,y,'b',time,yN,'r');

%% play mp3 with noise
%sound(y,Fs);
audplyN = audioplayer(yN,Fs);
audplyN.play
%audplyN.pause

%%
N=length(time);
YN = fft(yN,N);%fft is a fast discrete fourier transform
PSDN = YN.*conj(YN)/N;%power spectrum (how much power is in each freq)
freq = 1/(dt*N)*(1:N);%creates the X-axis at freqs in Hz
%plot(freq,PSD(:,1),'b',freq,PSD(:,2),'r');
%plot(freq(1:N/2),PSD(1:N/2,1),'b',freq(1:N/2),PSD(1:N/2,2),'r');
V=1:N/2/5/5;
%plot(freq(V),PSDN(V,1),'b');
%plot(freq(V),PSDN(V,2),'r');
%plot(freq(V),PSDN(V,1),'b',freq(V),PSDN(V,2),'r');
plot(freq(V),PSDN(V,:),'b');
title('Power Spectrum(noise)');
xlabel('Frequency (Hz)');

%% Use PSD to filter out noise
indices = PSDN > 0.05;%logical statement to fill a vector
PSDN = PSDN.*indices; % zeros out all others, and removes the noise floor
%hold on
figure;
plot(freq(V),PSDN(V,1),'b',freq(V),PSDN(V,2),'r');
YN = YN.*indices; % zero out small Fourier coeficients in Y
yfilt = ifft(YN); %inverse FFT to get filtered time-domain signal

figure;
subplot(2,1,1);
plot(time,y,'b');
hold on;
subplot(2,1,2);
plot(time,yfilt,'r');

%% play mp3 with noise filtered
%sound(y,Fs);
audply = audioplayer(yfilt,Fs);
audply.play
%audply.pause


