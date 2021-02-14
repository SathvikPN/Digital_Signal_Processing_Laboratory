% given x(n) = {1,2,3,4} for N = 4 IDFT also
clc;
clear all;
close all;

inp = input("Enter the input sequence: ");
N = input("Enter Number of DFT points to be found: ");

x = fft(inp,N);  % DFT
disp("DFT Points:");
disp(x);
disp("");

y = angle(x);  % angle of DFT points
disp("Angle");
disp(y);
disp("");

z = abs(x);   % Absolute/Magnitude of DFT points
disp("Absolute DFT points [Magnitude]");
disp(z);
disp("");

n = 0 : N-1 ;

n1 = 0 : length(inp)-1 ;

subplot(4,1,1);
stem(n1,inp);
xlabel("n");
ylabel("Amplitude");
title("Input signal");

subplot(4,1,2);
stem(n,z);
xlabel("sampler");
ylabel("Amplitude");
title("Magnitude of DFT points");

subplot(4,1,3);
stem(n,y);
xlabel("sampler");
ylabel("Amplitude");
title("Phase of function");

A = ifft(x, length(x));
disp("IDFT points");
disp(A);
subplot(4,1,4);
stem(n,A);
xlabel("sampler");
ylabel("Amplitude");
title("After IDFT");


% OUTPUT
##Enter the input sequence: [1,3]
##Enter Number of DFT points to be found: 4
##DFT Points:
##   4 + 0i   1 - 3i  -2 + 0i   1 + 3i
##
##Angle
##        0  -1.2490   3.1416   1.2490
##
##Absolute DFT points [Magnitude]
##   4.0000   3.1623   2.0000   3.1623
##
##IDFT points
##   1   3   0   0
