clc;
close all;
clear all;
x=input('Enter the first sequence = ');
h=input('Enter the second sequence = ');
N1=length(x);
N2=length(h);
N=max(N1,N2); % MAX function
 
if(N2>N1)
X=[x,zeros(1,N-N1)];
H=h;
elseif(N2==N1)
        X=x;
        H=h;
else
X=x;
H=[h,zeros(1,N-N2)];
end
 
Y=zeros(1,N);  % To store Circular convolution points

% CIRCULAR CONVOLUTION using MODULO Operator
for m=0:N-1
  for n=0:N-1
    j=mod(m-n,N); % Modulo operation
    Y(m+1) = Y(m+1) + X(n+1).* H(j+1);  % +1 index==>Matlab indexing from 1
  endfor    
endfor

disp("Circular Convolution Points");
disp(Y);

% PLOTS
subplot(4,1,1)
stem(x);
title('First Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
subplot(4,1,2)
stem(h);
title('Second Input Sequence');
xlabel('Samples');
ylabel('Amplitude');
subplot(4,1,3)
stem(Y);
title('Circular Convolution Using Modulo Operator');
xlabel('Samples');
ylabel('Amplitude');
 
%In built function: cconv(x,h,N)
##y=cconv(x,h,N);
##subplot(4,1,4)
##stem(y);
##title('Circular Convolution using Inbuilt Function');
##xlabel('Samples');
##ylabel('Amplitude');
