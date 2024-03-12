exec("Gaussian_Elimination_3.sci")

A2=[0  10-20  1;  10-20  1  1;  1  2  1];
b2=[1; 0; 0];
[x2, P2, C2] = Gaussian_Elimination_3(A2, b2)

A3=[10^(-20)  10^(-20)  1;  10^(-20)  1  1;  1  2  1];
b3=b2;
[x3, P3, C3] = Gaussian_Elimination_3(A3, b3)
