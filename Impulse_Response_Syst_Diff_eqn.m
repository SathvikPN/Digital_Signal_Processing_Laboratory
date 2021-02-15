% y(n) - (1/4)y(n-1) = x(n)

clc
clear all
close all

a = input("Enter co-eff numerator: ");
b = input("Enter co-eff denominator: "); % 1
n = input("No. samples: ");
HI = impz(b,a,n);

t = 0: 1: (n-1) ;

stem(t, HI);
xlabel('time');
ylabel('Impulse response of system');
