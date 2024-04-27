clear;

exec("./funcs/potencia_v1.sci");
exec("./funcs/potencia_v2.sci");

A1 = [2 -1; -1 1]; // Matriz simétrica
A2 = [2 -1 5; -1 -3 2; 5 2 -4]; // Matriz simétrica com autovalor dominante negativo
A3 = testmatrix("magi", 3); // Matriz num mágicos
A4 = testmatrix("magi", 4); // Matriz num mágicos

x0_2 = ones(2, 1);
x0_3 = ones(3, 1);
x0_4 = ones(4, 1);
epsilon = 1e-8;
M = 1000;

tic();[lambda11, x11, k11, n_erro11] = metodo_potencia_v1(A1, x0_2, epsilon, M);t11=toc();
tic();[lambda12, x12, k12, n_erro12] = metodo_potencia_v1(A2, x0_3, epsilon, M);t12=toc();
tic();[lambda13, x13, k13, n_erro13] = metodo_potencia_v1(A3, x0_3, epsilon, M);t13=toc();
tic();[lambda14, x14, k14, n_erro14] = metodo_potencia_v1(A4, x0_4, epsilon, M);t14=toc();

tic();[lambda21, x21, k21, n_erro21] = metodo_potencia_v2(A1, x0_2, epsilon, M);t21=toc();
tic();[lambda22, x22, k22, n_erro22] = metodo_potencia_v2(A2, x0_3, epsilon, M);t22=toc();
tic();[lambda23, x23, k23, n_erro23] = metodo_potencia_v2(A3, x0_3, epsilon, M);t23=toc();
tic();[lambda24, x24, k24, n_erro24] = metodo_potencia_v2(A4, x0_4, epsilon, M);t24=toc();




