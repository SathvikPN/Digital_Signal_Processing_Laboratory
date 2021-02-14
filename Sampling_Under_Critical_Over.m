clc
clear all
close all

f = input("Enter msg signal frequency = ");
t = 0 : 0.01 : 0.1;
x = cos(2*pi*f*t);

% Sampling frequency
# fs = 1*f;  Undersampling fs<2*f
# fs = 2*f; Critical sampling fs=2*f
# fs = 5*f; Oversampling fs>2*f
fs = 1.5*f;
ts = 1/fs;

tn = 0 : ts : 0.1;
xn = cos(2*pi*fs*tn);

% PLOT
subplot(2,1,1);
plot(x,'b',xn,'r--');
xlabel("Time");
ylabel("Amplitude");
title("(fs = 1.5*f) ==> Undersampling");

subplot(2,1,2);
plot(t,x,xn);
grid on;
