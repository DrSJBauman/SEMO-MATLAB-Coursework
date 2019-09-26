%Stephen Bauman
%Signals and Systems
%10-7-11
%---play_scale.m

keys = [40 42 44 45 47 49 51 52];
%NOTES:  C  D  E  F  G  A  B  C
%  key #40 is middle-C
dur = 0.25*ones(1,length(keys));
fs = 11025;   %or 8000 Hz
xx = zeros(1,sum(dur)*fs+1);
n1 = 1;
for kk = 1:length(keys)
    keynum = keys(kk);
    dur1 = dur(kk);
    tone = note(keynum,dur1);
    n2 = n1+length(tone)-1;
    xx(n1:n2) = xx(n1:n2)+tone;
    n1=n2;
end
soundsc(xx,fs);
