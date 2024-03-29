%Using Mesh and Nodal Analysis to find the Transfer Function of a Circuit
syms s V
%Nodal:
N = [-1 -s/5;-1+1/(1+2*s)+1/(2+3*s) -1/(2+3*s)]
N2 =  [-V -1-s/5;-1+1/(1+2*s)+1/(2+3*s) -1]
 
V3 = det(N2)/det(N);
V3 = simple(V3)
Gn = V3/V
pretty(Gn)

%Mesh:
M = [2+2*s -1 -(1+2*s);-1 3+5/s+3*s -(2+3*s);-(1+2*s) -(2+3*s) 7+5*s]
M3 = [2+2*s -1 V;-1 3+5/s+3*s 0;-(1+2*s) -(2+3*s) 0]
I3 = det(M3)/det(M);
V3 = simple(4*I3)
Gm = V3/V
pretty(Gm)

%Gives:
N =[                            -1,         -s/5]
    [ 1/(2*s + 1) + 1/(3*s + 2) - 1, -1/(3*s + 2)]
 
 
N2 =[                            -V, - s/5 - 1]
    [ 1/(2*s + 1) + 1/(3*s + 2) - 1,        -1]
 
 
V3 =(5*(3*s + 2)*(V - 2*s + 2*V*s))/(- 6*s^3 - 2*s^2 + 11*s + 5) + 1
 
 
Gn =((5*(3*s + 2)*(V - 2*s + 2*V*s))/(- 6*s^3 - 2*s^2 + 11*s + 5) + 1)/V
 
 
  5 (3 s + 2) (V - 2 s + 2 V s) 
  ----------------------------- + 1 
         3      2 
    - 6 s  - 2 s  + 11 s + 5 
  --------------------------------- 
                  V
 
M =[   2*s + 2,            -1, - 2*s - 1]
    [        -1, 3*s + 5/s + 3, - 3*s - 2]
    [ - 2*s - 1,     - 3*s - 2,   5*s + 7]
 
 
M3 =[   2*s + 2,            -1, V]
    [        -1, 3*s + 5/s + 3, 0]
    [ - 2*s - 1,     - 3*s - 2, 0]
 
 
V3 =(4*V*(6*s^3 + 12*s^2 + 15*s + 5))/(24*s^3 + 78*s^2 + 120*s + 65)
 
 
Gm =(4*(6*s^3 + 12*s^2 + 15*s + 5))/(24*s^3 + 78*s^2 + 120*s + 65)
 
 
        3       2 
  4 (6 s  + 12 s  + 15 s + 5) 
  --------------------------- 
      3       2 
  24 s  + 78 s  + 120 s + 65