% y(n) - (1/4)y(n-1) = x(n)
clc
close all
clear all

t = 0: 49;
x = ones(1,50);
y = filter(1, [1, -1/4], x);
subplot(1,2,1);
stem(t,y);
xlabel('Time');
ylabel('Step Response');

% y(n) - (3/4)y(n-1) - (1/8)y(n-2) = x(n)
y2 = filter(1, [1,-3/4,-1/8], x);
subplot(1,2,2);
stem(t,y2);
xlabel('Time');
ylabel('Step Response');
