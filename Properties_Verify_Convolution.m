clc
clear all
close all

x = input("Enter sequence x =  ");
h = input("Enter sequence h =  ");


% COMMUTATIVE PROPERTY
c1 = conv(x,h);
c2 = conv(h,x);
if c1==c2
  disp("Commutativity Verified : ");
  disp("    conv(x,h) = conv(h,x)");   %% Condition
  disp(""); 
else
  disp("NOT commutative");
endif


% ASSOCIATIVE PROPERTY
% (x*h)*y = x*(h*y)
y = input("Enter sequence y: ");
b1 = conv(x,h);
LHS = conv(b1,y);

b2 = conv(h,y);
RHS = conv(x,b2);

if LHS==RHS
  disp("Associativity Verified: ");
  disp("    conv(conv(x,h), y) = conv(x, conv(h,y))");  %% Condition
  disp("");
else
  disp("NO Associativity");
endif


% DISTRIBUTIVE PROPERTY
% [x(n) + y(n)]*h(n) = x(n)* h(n) + y(n)* h(n)]
Lx = length(x);
Ly = length(y);
x = [x zeros(1,Ly)];
y = [y zeros(1,Lx)];

a = x+y ;
LHS = conv(a,h);

b = conv(x,h);
c = conv(y,h);
Lb = length(b);
Lc = length(c);

b = [b zeros(1,Lc)];
c = [c zeros(1,Lb)];
RHS = b+c ;

LLHS = length(LHS);
LRHS = length(RHS);

LHS = [LHS zeros(1,LRHS)];
RHS = [RHS zeros(1,LLHS)];

if LHS == RHS
  disp("Distributivity Verified :");
  disp("    conv(x+y,h) = conv(x,h) + conv(y,h)");  %% Condition
  
else
  disp("NOT Distributive");
end


% OUTPUT
##Enter sequence x =  [1,2,3]
##Enter sequence h =  [4,5]
##Commutativity Verified :
##    conv(x,h) = conv(h,x)
##
##Enter sequence y: [6,7]
##Associativity Verified:
##    conv(conv(x,h), y) = conv(x, conv(h,y))
##
##Distributivity Verified :
##    conv(x+y,h) = conv(x,h) + conv(y,h)
