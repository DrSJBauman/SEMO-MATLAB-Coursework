%Stephen Bauman

function [xx,tt] = syn_sin (fk, Xk, fs, dur, tstart)
%SYN_SYN  Function to synthesize a sum of cosince waves
%   usage:
%       [xx,tt] = syn_sin(fk, Xk, fs, dur, tstart)
%         fk = vector of frequencies
%                (these could be negative or positive)
%          Xk = vector of complex amplitudes: Amp*e^(j*phase)
%          fs = the number of samples per second for the time axis
%         dur = total time duration of the signal
% tstart = starting time (default is zero, if you make this input optional)
%          xx = vector of sinusoidal values
%          tt = vector of times, for the time axis
%
%   Note: fk and Xk must be the same length.
%              Xk(1) corresponds to frequency fk(1),
%              Xk(2) corresponds to frequency fk(2), etc.

tt = tstart:fs:dur;
xx = cos(2*pi*fk*tt)


