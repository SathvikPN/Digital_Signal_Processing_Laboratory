clc
clear all
close all

x = input("Enter the sequence: ");
N = input("Enter No. DFT points to be calculated: ");

if (N > length(x))
  x = [x zeros(1,N-length(x))]
end

X = []; % Vector to store final DFT Points


for k = 0:N-1
  xk = 0; % To calculate each DFT point
  
  for n = 0:N-1
    xk = xk + x(n+1) * exp(-j*2*pi*n*k/N);
  endfor
  X = [X xk];
end
disp("DFT Points");
disp(X);

% PLOT Input, Magnitude, Phase

% IDFT Calculation
Y = []; % Vector to store final IDFT Points

for k = 0:N-1
  yk = 0; % To calculate each IDFT point
  
  for n = 0:N-1
    yk = yk + (1/N)*(X(n+1) * exp(j*2*pi*n*k/N));
  endfor
  Y = [Y yk];
end
disp("IDFT Points");
disp(Y);
