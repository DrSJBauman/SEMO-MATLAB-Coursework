function [xx, tt] = dirtycos(ff, dur)
%comments here, particularly how to use this function.
%This is to generate cosine.

%Stephen Bauman, 10-3-2011
tt = 0:1/(100*ff):dur;
xx = cos(2*pi*ff*tt);
