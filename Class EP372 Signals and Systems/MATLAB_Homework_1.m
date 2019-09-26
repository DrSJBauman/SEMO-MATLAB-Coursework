%-- 9/28/2011 10:21 PM --%
%Stephen Bauman
%Signals and Systems

%Problem 1.2
%Fahrenheit to Celcius
F=212
C=(F-32)*(5/9)
C=100
%Celcius to Fahrenheit
F=C*(9/5)+32
F=212

%Problem 1.11
SOLVE('x=cos(x)','x')
x=0.73908513321516064165531208767387

%Problem 1.13
s=0;
t=Inf;
n=0;
while s~=t
   n=n+1;
   t=s;
   s=s+1/n^4;
end
s=1.0823