Fs = 44100;
f0 = 440;
tt = 0:(1/Fs):3;
xx = 0.5*cos(2*pi*f0*tt);

sound(xx, Fs);
