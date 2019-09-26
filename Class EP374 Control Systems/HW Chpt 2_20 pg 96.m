%Stephen Bauman
%pg. 96 Problem 2.20

%Nodal
syms s

M = [(-1-s/5) -1 (-s/5); -1 (0 -1+1/(1+2s)+1/(2+3s)) -(1/(2+3s)); -s/5 1/(2+3s) (1/4-s/5-1/(2+3s))]

M1 = [0 -1 (-s/5); 0 (0 -1+1/(1+2s)+1/(2+3s)) -(1/(2+3s)); 0 1/(2+3s) (1/4-s/5-1/(2+3s))]
V1 = det(M1)/det(M);
V1 = simple(V1);

M3 = [(-1-s/5) -1 0; -1 (0 -1+1/(1+2s)+1/(2+3s)) 0; -s/5 1/(2+3s) 0]
V3 = det(M3)/det(M);
V3 = simple(V3);

G = V3/V1;

'G(s)'
pretty(G)
pause