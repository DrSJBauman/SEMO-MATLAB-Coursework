% Make a plot of a weird signal
N = 200;

for k=1: N
    xk(k) = k/50;
    rk(k) = sqrt( xk(k)*xk(k) + 2.25 );
    sig(k) = exp(j*2*pi*rk(k));
end

subplot(2,1,1)
plot(xk, real(sig), 'mo-' )
title('With for loop')

N = 200;

x = (1:N)./50;
r = sqrt(x.*x+2.25);
sig = exp(j*2*pi.*r);

subplot(2,1,2)
plot(x, real(sig), 'k')
title('Without for loop')