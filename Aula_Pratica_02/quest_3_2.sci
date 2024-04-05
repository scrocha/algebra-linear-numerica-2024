clear;

exec("./funcs/jacobi.sci");
exec("./funcs/gauss_seidel_inv.sci");
exec("./funcs/gauss_seidel_lin.sci");

A = [1 -4 2; 0 2 4; 6 -1 -2];
b = [2; 1; 1];
P = [0 0 1; 1 0 0; 0 1 0];
PA = P * A;
Pb = P * b;
x_0 = [0; 0; 0];
E = 1e-6;
M = 100;
norma = 2;

[x_jacobi, diff_jacobi, k_jacobi, r_jacobi] = jacobi(PA, Pb, x_0, E, M, norma);
[x_gs_inv, diff_gs_inv, k_gs_inv, r_gs_inv] = gauss_seidel_inv(PA, Pb, x_0, E, M, norma);
[x_gs_lin, diff_gs_lin, k_gs_lin, r_gs_lin] = gauss_seidel_lin(PA, Pb, x_0, E, M, norma);

disp(k_jacobi, k_gs_inv, k_gs_lin)
