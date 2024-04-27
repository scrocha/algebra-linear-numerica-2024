clear;

exec("./funcs/potencia_inv.sci");

A = [12 1 2; 1 -3 1; 2 1 4];
x0 = ones(3, 1);
alfa1 = 12;
alfa2 = -3;
alfa3 = 4;

epsilon = 1e-8;
M = 1000;


[lambda1, x1, k, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa1, M);
[lambda2, x1, k, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa2, M);
[lambda3, x1, k, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa3, M);

