clc;
clear all;
close all;

x = input("x seq: ");
h = input("h seq: ");
y = conv(x,h);
disp(y)

subplot(3,1,1);
t = 0 : length(x)-1 ;
stem(t,x)
xlabel("--> n");
ylabel("Amplitude");
title("x(n)");

subplot(3,1,2);
t = 0 : length(h)-1 ;
stem(t,h)
xlabel("--> n");
ylabel("Amplitude");
title("h(n)");

subplot(3,1,3);
t = 0 : length(y)-1 ;
stem(t,y)
xlabel("--> n");
ylabel("Amplitude");
title("y(n)");
