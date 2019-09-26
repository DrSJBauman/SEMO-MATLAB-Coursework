%Stephen Bauman

function xx = key2note (X, keynum, dur)
%KEY2NOTE Produce a sinusoidal waveform corresponding to a
%      given piano key number
%
%usage: xx = key2note (X, keynum, dur)
%
%       xx = the output sinusoidal waveform
%        X = complex amplitude for the sinusoidal, X = A*exp(j*phi).
%   keynum = the piano keyboard number of the desired note
%      dur = the duration (in seconds) of the output note
%
fs = 11025; %-- or use 8000 Hz
tt = 0:(1/fs):dur;
freq = 440*(2^(keynum/12))     %<===== fill in this line
xx = real(X*exp(j*2*pi*freq*tt));
plot(tt, xx)