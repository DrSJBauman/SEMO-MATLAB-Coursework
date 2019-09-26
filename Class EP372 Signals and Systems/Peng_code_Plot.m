tt=-1:0.01:1;
xx=cos(5*pi*tt);
zz=1.4*exp(j*pi/2)*exp(j*5*pi*tt);
plot(tt,xx,  'b-', tt, real(zz), 'r--'), grid on
title('Test Plost of a Sinusoid');
xlabel('TIME (sec)');

ylabel('xx zz');
