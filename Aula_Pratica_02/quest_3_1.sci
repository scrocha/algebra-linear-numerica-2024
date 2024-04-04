clear;

exec("jacobi.sci");
exec("gauss_seidel_inv.sci");
exec("gauss_seidel_lin.sci");

A = [1 -4 2; 0 2 4; 6 -1 -2];
b = [2; 1; 1];
x_0 = [0; 0; 0];
E = 1e-4;
M = 100;
norma = 2;


[x_jacobi, diff_jacobi, k_jacobi, r_jacobi] = jacobi(A, b, x_0, E, M, norma);
[x_gs_inv, diff_gs_inv, k_gs_inv, r_gs_inv] = gauss_seidel_inv(A, b, x_0, E, M, norma);
[x_gs_lin, diff_gs_lin, k_gs_lin, r_gs_lin] = gauss_seidel_lin(A, b, x_0, E, M, norma);

