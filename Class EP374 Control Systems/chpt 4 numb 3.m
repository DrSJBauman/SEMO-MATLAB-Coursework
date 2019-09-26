t = 0:.01:1;
Ca = 1-exp(-5*t);
Cb = 1-exp(-20*t);
plot(t,Ca,t,Cb)
xlabel('Time (seconds)')
ylabel('C(t)')
title('Time Response')
legend('C1(t)', 'C2(t)')