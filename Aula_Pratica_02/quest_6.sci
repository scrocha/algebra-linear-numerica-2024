clear;

exec("./funcs/gauss_seidel_inv.sci");
exec("./funcs/gauss_seidel_lin.sci");
exec("./funcs/gera_mat.sci");

[A_10, b_10] = gera_mat(10);
[A_100, b_100] = gera_mat(100);
[A_1000, b_1000] = gera_mat(1000);
[A_2000, b_2000] = gera_mat(2000);

E = 10e-4;
M = 500;
norma = 2;

tic();[x_gs_inv_1, diff_gs_inv_1, k_gs_inv_1, r_gs_inv_1] = gauss_seidel_inv(A_10, b_10, zeros(b_10), E, M, norma);inv_10=toc();
tic();[x_gs_lin_1, diff_gs_lin_1, k_gs_lin_1, r_gs_lin_1] = gauss_seidel_lin(A_10, b_10, zeros(b_10), E, M, norma);lin_10=toc();


tic();[x_gs_inv_2, diff_gs_inv_2, k_gs_inv_2, r_gs_inv_2] = gauss_seidel_inv(A_100, b_100, zeros(b_100), E, M, norma);inv_100=toc();
tic();[x_gs_lin_2, diff_gs_lin_2, k_gs_lin_2, r_gs_lin_2] = gauss_seidel_lin(A_100, b_100, zeros(b_100), E, M, norma);lin_100=toc();

tic();[x_gs_inv_3, diff_gs_inv_3, k_gs_inv_3, r_gs_inv_3] = gauss_seidel_inv(A_1000, b_1000, zeros(b_1000), E, M, norma);inv_1000=toc();
tic();[x_gs_lin_3, diff_gs_lin_3, k_gs_lin_3, r_gs_lin_3] = gauss_seidel_lin(A_1000, b_1000, zeros(b_1000), E, M, norma);lin_1000=toc();

tic();[x_gs_inv_4, diff_gs_inv_4, k_gs_inv_4, r_gs_inv_4] = gauss_seidel_inv(A_2000, b_2000, zeros(b_2000), E, M, norma);inv_2000=toc();
tic();[x_gs_lin_4, diff_gs_lin_4, k_gs_lin_4, r_gs_lin_4] = gauss_seidel_lin(A_2000, b_2000, zeros(b_2000), E, M, norma);lin_2000=toc();

