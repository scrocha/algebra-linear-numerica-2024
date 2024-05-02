clear;

exec("./funcs/potencia_inv.sci");

A = [12 1 2; 1 -3 1; 2 1 4];
x0 = rand(3, 1);
alfa11 = A(1,1);
alfa12 = A(2,2);
alfa13 = A(3,3);

B = [26 -1 2; -1 7 1; 2 1 -6];
alfa21 = B(1,1);
alfa22 = B(2,2);
alfa23 = B(3,3);

C_temp = rand(3,3);
C = C_temp'*C_temp + 2*eye(3,3);
alfa31 = C(1,1);
alfa32 = C(2,2);
alfa33 = C(3,3);

epsilon = 1e-8;
M = 1000;

[lambda11, x11, k11, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa11, M);
[lambda12, x12, k12, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa12, M);
[lambda13, x13, k13, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa13, M);

[lambda21, x21, k21, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa21, M);
[lambda22, x22, k22, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa22, M);
[lambda23, x23, k23, n_erro] = metodo_potencia_inv(B, x0, epsilon, alfa23, M);

[lambda31, x31, k31, n_erro] = metodo_potencia_inv(C, x0, epsilon, alfa31, M);
[lambda32, x32, k32, n_erro] = metodo_potencia_inv(C, x0, epsilon, alfa32, M);
[lambda33, x33, k33, n_erro] = metodo_potencia_inv(C, x0, epsilon, alfa33, M);

disp("Matriz 1:", A)
disp("Chutes, autovalores encontrados com o chute e real espectro:", [[alfa11, lambda11; alfa12, lambda12; alfa13, lambda13], spec(A)])

disp("Matriz 2:", B)
disp("Chutes, autovalores encontrados com o chute e real espectro:", [[alfa21, lambda21; alfa22, lambda22; alfa23, lambda23], spec(B)])


disp("Matriz 3:", C)
disp("Chutes, autovalores encontrados com o chute e real espectro:", [[alfa31, lambda31; alfa32, lambda32; alfa33, lambda33], spec(C)])
