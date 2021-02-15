clc;
clear all;
close all;

x = input("x seq: ");
h = input("h seq: ");
L1 = length(x);
L2 = length(h);
N = L1+L2-1;
X = fft(x,N);
H = fft(h,N);
Y = X.*H;
y = ifft(Y);
disp(y);
