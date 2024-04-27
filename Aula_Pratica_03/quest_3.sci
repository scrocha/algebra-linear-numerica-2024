clear;

exec("./funcs/potencia_v1.sci");
exec("./funcs/potencia_v2.sci");

A1 = [2 -1; -1 1]; // Matriz simétrica
A2 = [2 -1 5; -1 -3 2; 5 2 -4]; // Matriz simétrica com autovalor dominante negativo
A3 = [1 5 9; 5 3 8; 9 8 7]; // Matriz num mágicos
A4 = [4 2 1 3; 2 5 3 2; 1 3 6 1; 3 2 1 7]; // Matriz num mágicos

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

disp("Iterações e tempo do método v1 e v2 para a matriz A1: ", [t11 k11; t21 k21])
disp("Iterações e tempo do método v1 e v2 para a matriz A2: ", [t12 k12; t22 k22])
disp("Iterações e tempo do método v1 e v2 para a matriz A3: ", [t13 k13; t23 k23])
disp("Iterações e tempo do método v1 e v2 para a matriz A4: ", [t14 k14; t24 k24])
