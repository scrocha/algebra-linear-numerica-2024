clear;

exec("./funcs/jacobi.sci");

A = [2 -1 1; 2 2 2; -1 -1 2];
b = [-1; 4; -5];
x_0 = zeros(b);
E = 0;
M = 25;
norma = 2;

[x_jacobi, diff_jacobi, k_jacobi, r_jacobi] = jacobi(A, b, x_0, E, M, norma);

r_jacobi
