exec("Gaussian_Elimination_2.sci")

A1=[1 -2 5 0; 2 -4 1 3; -1 1 0 2; 0 3 3 1];
b1=[1;0;0;0];
[x1, C1] = Gaussian_Elimination_2(A1, b1)

A2=[0  10-20  1;  10-20  1  1;  1  2  1];
b2=[1; 0; 0];
[x2, C2] = Gaussian_Elimination_2(A2, b2)
