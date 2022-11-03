close all; clear all; clc;
data=xlsread('E:\eeg_saranya/t1.csv');
for i=1:8
    data_=data(:,i);
    fs = 256 % fs — Sampling frequency, positive scalar. Sampling frequency, specified as a positive scalar. The sampling frequency is the number of samples per unit time. If the unit of time is seconds, the sampling frequency has units of hertz.
    T = 1/fs;% sampling rate or frequency

    N =length(data_); ls = size(data_); % find the length of the data per second
    tx =[0:length(data_)-1]/fs;% Make time axis for EEG signal
    fx = fs*(0:N/2-1)/N;   %Prepare freq data for plot
    figure; subplot (211), plot(tx,data_); xlabel('Time (s)'), ylabel('Amplitude (uV)'), title('Original EEG signal'); %EEG waveform
    subplot(212), plot(tx,data_);
    xlabel('Time (s)'), ylabel('Amplitude (uV)'), title('Zoom into original EEG signal at 1 to 2 seconds'), xlim([95,115]) % Used to zoom in on single ECG waveformfigure;
end