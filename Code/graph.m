close all; clear all; clc;
data=xlsread('C:\Users\admin\Desktop\Saran\Graph\t1.csv');
fs = 256 % fs — Sampling frequency, positive scalar. Sampling frequency, specified as a positive scalar. The sampling frequency is the number of samples per unit time. If the unit of time is seconds, the sampling frequency has units of hertz.
T = 1/fs;% sampling rate or frequency

N =length(data); ls = size(data); % find the length of the data per second
tx =[0:length(data)-1]/fs;% Make time axis for EEG signal
fx = fs*(0:N/2-1)/N;   %Prepare freq data for plot
figure; subplot (211), plot(tx,data); xlabel('Time (s)'), ylabel('Amplitude (uV)'), title('Original EEG signal'); %EEG waveform
subplot(212), plot(tx,data);
xlabel('Time (s)'), ylabel('Amplitude (uV)'), title('Zoom into original EEG signal at 1 to 2 seconds'), xlim([12,20]) % Used to zoom in on single ECG waveformfigure;