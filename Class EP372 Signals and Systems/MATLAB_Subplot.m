f0 = 4000;
T0 = (1/f0);
Fs = 25;
tt = -T0: T0/Fs : T0;

x1 = 20*cos(2*pi*(4000)*(tt-(37.2*T0)));
x2 = (1.2*20)*cos(2*pi*(4000)*(tt-(-41.3/31*T0)));
x3 = x1 + x2;

orient tall
subplot(3,1,1), plot(tt, x1,'b-')
title('Stephen Bauman x1(t)');
subplot(3,1,2), plot(tt, x2, 'r--')
title('x2(t)')
subplot(3,1,3), plot(tt, x3, 'k-.')
title('x3(t)')