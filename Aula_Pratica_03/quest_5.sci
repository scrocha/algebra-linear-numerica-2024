clear;

exec("./funcs/potencia_v1.sci");
exec("./funcs/potencia_v2.sci");
exec("./funcs/gera_mat.sci");
exec("./funcs/acha_lambdas.sci");

[A1, x01] = gera_mat(3);
[A2, x02] = gera_mat(20);
[A3, x03] = gera_mat(50);
[A4, x04] = gera_mat(1000);

epsilon = 1e-8;
M = 100;

tic();
[lambda11, x11, k11, n_erro11] = metodo_potencia_v1(A1, x01, epsilon, M);
tempo11 = toc();
tic();
[lambda12, x12, k12, n_erro12] = metodo_potencia_v1(A2, x02, epsilon, M);
tempo12 = toc();
tic();
[lambda13, x13, k13, n_erro13] = metodo_potencia_v1(A3, x03, epsilon, M);
tempo13 = toc();
tic();
[lambda14, x14, k14, n_erro14] = metodo_potencia_v1(A4, x04, epsilon, M);
tempo14 = toc();

tic();
[lambda21, x21, k21, n_erro21] = metodo_potencia_v2(A1, x01, epsilon, M);
tempo21 = toc();
tic();
[lambda22, x22, k22, n_erro22] = metodo_potencia_v2(A2, x02, epsilon, M);
tempo22 = toc();
tic();
[lambda23, x23, k23, n_erro23] = metodo_potencia_v2(A3, x03, epsilon, M);
tempo23 = toc();
tic();
[lambda24, x24, k24, n_erro24] = metodo_potencia_v2(A4, x04, epsilon, M);
tempo24 = toc();

disp("Tempos dos métodos da potência versão 1 e 2 para as geradas matrizes aleatoriamente", "de ordens 3, 20, 50 e 1000, primeira coluna a v1, segunda coluna a v2", "e terceira a diferença, cada linha respectivamente a uma orden:", [tempo11, tempo21, tempo11-tempo21; tempo12, tempo22, tempo12-tempo22; tempo13, tempo23, tempo13-tempo23; tempo14, tempo24, tempo14-tempo24]);

[B1, _] = gera_mat_sim(2);
[B2, _] = gera_mat_sim(3);
[B3, _] = gera_mat_sim(5);
[B4, _] = gera_mat_sim(10);

tic();
lambdas1 = acha_lambdas(B1);
t1 = toc();
tic();
lambdas2 = acha_lambdas(B2);
t2 = toc();
tic();
lambdas3 = acha_lambdas(B3);
t3 = toc();
tic();
lambdas4 = acha_lambdas(B4);
t4 = toc();

disp("Reultados do método da inversa comparado com o real spectro")
disp("Resultados da 2x2:", [gsort(lambdas1, "g", "i"), spec(B1)])
disp("Resultados da 3x3:", [gsort(lambdas2, "g", "i"), spec(B2)])
disp("Resultados da 5x5:", [gsort(lambdas3, "g", "i"), spec(B3)])
disp("Resultados da 10x10:", [gsort(lambdas4, "g", "i"), spec(B4)])
