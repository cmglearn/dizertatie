close all; clc; clear;

%%
Fs= 1000; % insert here your frequency sampling in Hz

%%
dt=1/Fs;
t=0:dt:10;
L_t=length(t);
Va=zeros(1,L_t);
%%
for k=1:L_t
    Va(k)=sin(2*pi*t(k));
end
plot(Va);

%%
L=length(Va); 
NFFT = 2^nextpow2(L);
VaFFT = fft(Va,NFFT);
plot(VaFFT);
%%
Y  = fft(Va,NFFT)/L;
figure;
plot(Y);
%%
f = Fs/2*linspace(0,1,NFFT/2+1);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')