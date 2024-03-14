exec("Gaussian_Elimi.sci")
exec("Resolve_com_LU.sci")

A1=[1 -2 5 0; 2 -4 1 3; -1 1 0 2; 0 3 3 1];
B1=[2  4 -1  5  ;0  1  0  3;  2  2 -1  1;  0  1  1  5];
[C1, P1]=Gaussian_Elimi(A1);

A2=[0  10^(-20)  1;  10^(-20)  1  1;  1  2  1];
B2=[1  1  2;  1 -1  0;  1  0  1];
[C2, P2]=Gaussian_Elimi(A2);

B3=B2;
A3=[10^(-20)  10^(-20)  1;  10^(-20)  1  1;  1  2  1];
[C3, P3]=Gaussian_Elimi(A3);

X1=Resolve_com_LU(C1, P1, B1)

X2=Resolve_com_LU(C2, P2, B2)

X3=Resolve_com_LU(C3, P3, B3)

