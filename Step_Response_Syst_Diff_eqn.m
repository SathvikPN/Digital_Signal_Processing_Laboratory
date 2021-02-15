  
% y(n) - (1/4)y(n-1) = x(n)

clc
clear all
close all

a = input("Enter co-eff numerator: ");
b = input("Enter co-eff denominator: "); % 1
n = input("No. samples: ");
x = ones(1,n);
HS = filter(b,a,x);

t = 0: 1: (n-1) ;

stem(t, HS);
xlabel('time');
ylabel('Step response of system');
