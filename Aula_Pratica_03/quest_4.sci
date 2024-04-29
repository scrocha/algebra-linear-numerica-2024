clear;

exec("./funcs/potencia_inv.sci");

A = [12 1 2; 1 -3 1; 2 1 4];
x0 = ones(3, 1);
alfa11 = 12;
alfa12 = -3;
alfa13 = 4;

B = [26 -1 2; -1 7 1; 2 1 -6];
alfa21 = 26;
alfa22 = 7;
alfa23 = -6;

epsilon = 1e-8;
M = 1000;

[lambda11, x11, k11, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa11, M);
[lambda12, x12, k12, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa12, M);
[lambda13, x13, k13, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa13, M);

[lambda21, x21, k21, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa21, M);
[lambda22, x22, k22, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa22, M);
[lambda23, x23, k23, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa23, M);

disp("Matriz 1:", A)
disp("Chutes e autovalors encontrado:", [alfa11, lambda11; alfa12, lambda12; alfa13, lambda13])

disp("Matriz 2:", B)
disp("Chutes e autovalors encontrado:", [alfa21, lambda21; alfa22, lambda22; alfa23, lambda23])
