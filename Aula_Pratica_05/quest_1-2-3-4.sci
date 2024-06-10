clear;
exec("./funcs/qr_GS.sci");
exec("./funcs/qr_GSM.sci");
exec("./funcs/qr_GSP.sci");
exec("./funcs/qr_Housev1.sci");
exec("./funcs/qr_Housev2.sci");
exec("./funcs/constroi_Q_House.sci");

A1 = rand(3, 3);
A2 = testmatrix(‘magi’,4);
A3 = rand(4, 7);
A4 = rand(6, 4);

[Q1, R1] = qr_GS(A1);
[Q2, R2] = qr_GS(A2);
[Q3, R3] = qr_GS(A3);
[Q4, R4] = qr_GS(A4);

disp("Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);

disp("Matriz 2 (4x4) 'Magi':", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(5, 5));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);

disp("Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);


disp("Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);

[Q1, R1] = qr_GSM(A1);
[Q2, R2] = qr_GSM(A2);
[Q3, R3] = qr_GSM(A3);
[Q4, R4] = qr_GSM(A4);

disp("Matriz 1 (3x3):", A1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1);

disp("Matriz 2 (4x4) 'Magi':", A2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(5, 5));
disp("Acurácia da decomposição QR:", Q2*R2 - A2);

disp("Matriz 3 (4x7):", A3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3);


disp("Matriz 4 (6x4):", A4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4);

[Q1, R1, P1] = qr_GSP(A1);
[Q2, R2, P2] = qr_GSP(A2);
[Q3, R3, P3] = qr_GSP(A3);
[Q4, R4, P4] = qr_GSP(A4);

disp("Matriz 1 Permutada (3x3):", A1*P1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(3, 3));
disp("Acurácia da decomposição QR:", Q1*R1 - A1*P1);

disp("Matriz 2 Permutada (4x4) 'Magi':", A2*P2);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(5, 5));
disp("Acurácia da decomposição QR:", Q2*R2 - A2*P2);

disp("Matriz 3 Permutada (4x7):", A3*P3);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q3*R3 - A3*P3);


disp("Matriz 4 Permutada (6x4):", A4*P4);
disp("Diferença entre a ortogonal e a identidade:", Q4'*Q4 - eye(4, 4));
disp("Acurácia da decomposição QR:", Q4*R4 - A4*P4);

