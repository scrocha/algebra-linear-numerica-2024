clear;

exec("Gaussian_Elimination_1.sci");

A_1 = [3 -2; 9 -4];
b_1 = [1; 7];
[x_1, C_1] = Gaussian_Elimination_1(A_1, b_1)

// x_1 esperado: [5/3; 2]


A_2 = [1 -1 1; 0 2 3; 0 0 4];
b_2 = [6; 8; 8];
[x_2, C_2] = Gaussian_Elimination_1(A_2, b_2)

// x_2 esperado: [5; 1; 2]

A_3 = [1 -1; 2 1];
b_3 = [4; 8];
[x_3, C_3] = Gaussian_Elimination_1(A_3, b_3)

// x_3 esperado: [4; 0]

A_4 = [2 3; 4 -6];
b_4 = [-2; 12];
[x_4, C_4] = Gaussian_Elimination_1(A_4, b_4)

// x_4 esperado: [1; -4/3]
