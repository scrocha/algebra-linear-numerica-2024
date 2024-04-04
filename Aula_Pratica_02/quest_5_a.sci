clear;

exec("gauss_seidel_inv.sci");
exec("gauss_seidel_lin.sci");

A = [1 0 -1; -1/2 1 -1/4; 1 -1/2 1];
b = [0.2; -1.425; 2];
x_0 = [0; 0; 0];
E = 10e-2;
M = 300;
norma = 2;

[x_gs_inv, diff_gs_inv, k_gs_inv, r_gs_inv] = gauss_seidel_inv(A, b, x_0, E, M, norma);
[x_gs_lin, diff_gs_lin, k_gs_lin, r_gs_lin] = gauss_seidel_lin(A, b, x_0, E, M, norma);

r_gs_inv
r_gs_lin