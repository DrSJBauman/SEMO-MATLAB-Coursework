Stephen Bauman
February 20, 2012

numg=16;
deng=[1 3 16];

omegan = sqrt(deng(3)/deng(1))
omegan = 4
    
zeta = (deng(2)/deng(1))/(2*omegan)
zeta = 0.3750
    
Ts = 4/(zeta*omegan)
Ts = 2.6667
    
Tp = pi/(omegan*sqrt(1-zeta^2))
Tp = 0.8472
    
pOS = 100*exp(-zeta*pi/sqrt(1-zeta^2))
pOS = 28.0597
    
Tr = (1.768*zeta^3-0.417*zeta^2+1.039*zeta+1)/omegan
Tr = 0.3561

syms t
Ct = 1-exp(-zeta*omegan*t)*(cos(omegan*sqrt(1-zeta^2)*t+...
     ...(zeta/sqrt(1-zeta^2))*sin(omegan*sqrt(1-zeta^2)*t)))
Ct = 1 - cos((55^(1/2)*t)/2 +...
     ...(3*55^(1/2)*sin((55^(1/2)*t)/2))/55)/exp((3*t)/2)
ezplot(Ct,[0,10])

