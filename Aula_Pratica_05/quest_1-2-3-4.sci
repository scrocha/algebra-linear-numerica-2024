clear;
exec("./funcs/qr_GS.sci");
exec("./funcs/qr_GSM.sci");
exec("./funcs/qr_GSP.sci");

exec("./funcs/qr_Housev1.sci");
exec("./funcs/qr_Housev2.sci");
exec("./funcs/constroi_Q_House.sci");

A1 = rand(3, 3);
A2 = testmatrix('magi', 4);
A3 = rand(4, 7);
A4 = rand(6, 4);

tic();
[Q1, R1] = qr_GS(A1);
t1 = toc();
tic();
[Q2, R2] = qr_GS(A2);
t2 = toc();
tic();
[Q3, R3] = qr_GS(A3);
t3 = toc();
tic();
[Q4, R4] = qr_GS(A4);
t4 = toc();

disp("Gram-Schmidt - Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);
disp("Tempo de Cálculo do Algoritmo:", t1);

disp("Gram-Schmidt - Matriz 2 (4x4) Magi:", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);
disp("Tempo de Cálculo do Algoritmo:", t2);

disp("Gram-Schmidt - Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);
disp("Tempo de Cálculo do Algoritmo:", t3);

disp("Gram-Schmidt - Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);
disp("Tempo de Cálculo do Algoritmo:", t4);

tic();
[Q1, R1] = qr_GSM(A1);
t1 = toc();
tic();
[Q2, R2] = qr_GSM(A2);
t2 = toc();
tic();
[Q3, R3] = qr_GSM(A3);
t3 = toc();
tic();
[Q4, R4] = qr_GSM(A4);
t4 = toc();

disp("Gram-Schmidt Modificado - Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);
disp("Tempo de Cálculo do Algoritmo:", t1);

disp("Gram-Schmidt Modificado - Matriz 2 (4x4) Magi:", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);
disp("Tempo de Cálculo do Algoritmo:", t2);

disp("Gram-Schmidt Modificado - Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);
disp("Tempo de Cálculo do Algoritmo:", t3);

disp("Gram-Schmidt Modificado - Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);
disp("Tempo de Cálculo do Algoritmo:", t4);

tic();
[Q1, R1, P1] = qr_GSP(A1);
t1 = toc();
tic();
[Q2, R2, P2] = qr_GSP(A2);
t2 = toc();
tic();
[Q3, R3, P3] = qr_GSP(A3);
t3 = toc();
tic();
[Q4, R4, P4] = qr_GSP(A4);
t4 = toc();

disp("Gram-Schmidt Modificado com Pivoteamento - Matriz 1 (3x3):", A1*P1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1*P1);
disp("Tempo de Cálculo do Algoritmo:", t1);

disp("Gram-Schmidt Modificado com Pivoteamento - Matriz 2 (4x4) Magi:", A2*P2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q2*R2 - A2*P2);
disp("Tempo de Cálculo do Algoritmo:", t2);

disp("Gram-Schmidt Modificado com Pivoteamento - Matriz 3 (4x7):", A3*P3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3*P3);
disp("Tempo de Cálculo do Algoritmo:", t3);

disp("Gram-Schmidt Modificado com Pivoteamento - Matriz 4 (6x4):", A4*P4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4*P4);
disp("Tempo de Cálculo do Algoritmo:", t4);

tic();
[U1, R1] = qr_Housev1(A1);
t1 = toc();
tic();
[U2, R2] = qr_Housev1(A2);
t2 = toc();
tic();
[U3, R3] = qr_Housev1(A3);
t3 = toc();
tic();
[U4, R4] = qr_Housev1(A4);
t4 = toc();

Q1 = constroi_Q_House(U1);
Q2 = constroi_Q_House(U2);
Q3 = constroi_Q_House(U3);
Q4 = constroi_Q_House(U4);

disp("Householder v1 - Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);
disp("Tempo de Cálculo do Algoritmo:", t1);

disp("Householder v1 - Matriz 2 (4x4) Magi:", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);
disp("Tempo de Cálculo do Algoritmo:", t2);

disp("Householder v1 - Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(size(Q3, 2), size(Q3, 2)));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);
disp("Tempo de Cálculo do Algoritmo:", t3);

disp("Householder v1 - Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(size(Q4, 2), size(Q4, 2)));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);
disp("Tempo de Cálculo do Algoritmo:", t4);

tic();
[U1, R1] = qr_Housev2(A1);
t1 = toc();
tic();
[U2, R2] = qr_Housev2(A2);
t2 = toc();
tic();
[U3, R3] = qr_Housev2(A3);
t3 = toc();
tic();
[U4, R4] = qr_Housev2(A4);
t4 = toc();

Q1 = constroi_Q_House(U1);
Q2 = constroi_Q_House(U2);
Q3 = constroi_Q_House(U3);
Q4 = constroi_Q_House(U4);

disp("Householder v2 - Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);
disp("Tempo de Cálculo do Algoritmo:", t1);

disp("Householder v2 - Matriz 2 (4x4) Magi:", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);
disp("Tempo de Cálculo do Algoritmo:", t2);

disp("Householder v2 - Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(size(Q3, 2), size(Q3, 2)));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);
disp("Tempo de Cálculo do Algoritmo:", t3);

disp("Householder v2 - Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(size(Q4, 2), size(Q4, 2)));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);
disp("Tempo de Cálculo do Algoritmo:", t4);
