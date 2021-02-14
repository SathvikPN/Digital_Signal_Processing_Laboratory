% y(n) - (1/4)y(n-1) = x(n)
% given N = 50
clc
clear all
close all

H1 = impz(1, [1,(-1/4)], 50);

t = 0: 1: 49 ;
subplot(1,2,1);
stem(t, H1);

xlabel('time');
ylabel('Impulse response of 1st order system');
