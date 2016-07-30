clear all; close all;

%% create a simple signal with two frequencies
dt = 0.001;
t = 0:dt:3;
x = sin(2*pi*50*t) + sin(2*pi*120*t); % w1= 50Hz, w2 = 120Hz

figure(1)
subplot(2,1,1)
plot(t,x,'b','LineWidth',1.2);

%% add some noise
y = x + 2.5*randn(size(t));
hold on
plot (t,y,'r','Linewidth',1.2);
axis([0 .25 -5 5]);
legend('Clean', 'Noisy');


%%
figure
N=length(t);
Y = fft(y,N);%fft is a fast discrete fourier transform
PSD = Y.*conj(Y)/N;%power spectrum (how much power is in each freq)
freq = 1/(dt*N)*(0:N);%creates the X-axis at freqs in Hz
L = 1:floor(N/2); %only plot the first half of frequencies
plot(freq(L),PSD(L))
title('Power Spectrum');
xlabel('Frequency (Hz)');

%% Use PSD to filter out noise
indices = PSD > 50;%logical statement to fill a vector
PSD = PSD.*indices; % zeros out all others, and removes the noise floor
hold on
plot(freq(L), PSD(L), 'r');
legend('original', 'filtered');

Y = Y.*indices; % zero out small Fourier coeficients in Y
yfilt = ifft(Y); %inverse FFT to get filtered time-domain signal

figure(1);
subplot(2,1,2);
plot(t,x,'b','LineWidth',1.2);
hold on;
plot(t,yfilt,'r');
legend('Clean','Filtered');

%% play the sound
sound(x,1/dt);
