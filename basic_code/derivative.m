
%Derivative of a function in single variable 'x'
syms x;
f=input('Enter a function in x:');
y=diff(f);
disp('The derivative of entered function is:')
y

%%
%Derivative at particular value of x:
i=input('Enter the value of x:');
z=vpa(subs(y,x,i));
disp('The derivative at entered value of x is:')
z


%Second derivative of function in x
y1=diff(f,2)
disp('The second derivative of entered function:')
y1


%Derivative of a constant
const=input('Enter a constant value:');
c=sym(const);
a=diff(c);
disp('The derivative of constant:')
a


%Derivative of function in two variables s & t(Partial derivative)
syms s t
b=input('Enter a function in variables s,t:');
c=diff(b,t);
disp('The partial derivative of entered function w.r.t t is:')
c
d=diff(b,s);
disp('The partial derivative of entered function w.r.t s is:')
d
e=diff(b,t,2);
disp('The second derivative of function w.r.t t:')
e
g=diff(b, s, 2);
disp('The second derivative of function w.r.t s:')
g

%SPECIAL CASE:Derivative of function with respect to unspecified variable:
syms a b t
f = sin(a*t + b);
h=diff(f);
disp('The derivative is taken with respect to alphabet nearest to ''x'':')
h


%Derivative of exponential function:
syms theta r
p = exp(r*theta);
k=diff(p);
disp('The derivative of exponential function is:')
k

