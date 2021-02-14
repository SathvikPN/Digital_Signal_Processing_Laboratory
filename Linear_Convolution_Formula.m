clc;
clear all;
close all;
clearvars;

% User Input
x=input('Enter sequence x: ')
h=input('Enter sequence h: ')

% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i = 1:(n+m-1)
    Y(i)=0;
    for j = 1:m
        if (i-j+1 > 0)
            Y(i) = Y(i) +  X(j) * H(i-j+1) ; 
        else
        end
    end
end
disp("Convolution done...");
disp(Y)


% plot results
subplot(3,1,1); stem(x, '-b^'); xlabel('n --->');
ylabel('x[n]'); grid on;

subplot(3,1,2); stem(h, '-ms');
xlabel('n --->'); ylabel('h[n]'); grid on;

subplot(3,1,3); stem(Y, '-ro');
ylabel('Y[n]'); xlabel('n --->'); grid on;
title('Convolution of Two Signals without conv function');
