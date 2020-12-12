
%Designing a digital filter using designfilt function
lpfilt = designfilt('lowpassfir','PassbandFrequency',0.05,...
    'stopbandfrequency',0.06,'PassbandRipple',0.01,...
    'StopbandAttenuation',120,'DesignMethod','kaiserwin');
fvtool(lpfilt);

file1 = 'Ensoniq-ZR-76-01-Dope-77.wav'; %loading the audio file for testing the filter
[y,Fs1] = audioread(file1); clear file1; %reading the audio file 
sound(y,Fs1);
totalTime = length(y)./Fs1;
t = (0: totalTime/(length(y)): totalTime-(totalTime/length(y)));

%plotting input audio signal
subplot(2,1,1)
plot(t, y);
title('Input signal');
xlabel('time');
ylabel('amplitude');

%passing the sampled audio signals through filter
dataIn = y;
dataOut = filter(lpfilt,dataIn); %filter the sampled data
audiowrite('filteredAudio1.wav',dataOut, Fs1); %write the filtered data to audio file

%plotting filtered audio signal
subplot(2,1,2)
nfft = fft(y);
plot(t, dataOut);
title('filtered signal');
xlabel('time');
ylabel('amp');

%Just practicing how to sample a signal
stem(t1,x1);

