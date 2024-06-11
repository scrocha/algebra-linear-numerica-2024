clear;
exec("./funcs/qr_Housev1.sci");
exec("./funcs/qr_Housev2.sci");
exec("./funcs/constroi_Q_House.sci");

M1 = testmatrix('magi',7);
H = testmatrix('hilb', 7);
M2 = testmatrix('magi',6);

[U1, R1] = qr_Housev1(M1);
[U2, R2] = qr_Housev1(H);
[U3, R3] = qr_Housev1(M2);

Q1 = constroi_Q_House(U1);
Q2 = constroi_Q_House(U2);
Q3 = constroi_Q_House(U3);

disp("Householder v1 - Matriz M1 Magi (7x7):", M1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q1*R1 - M1);

disp("Householder v1 - Matriz H Hilb (7x7):", H);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q2*R2 - H);

disp("Householder v1 - Matriz M2 Magi (6x6):", M2);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(6, 6));
disp("Acurácia da decomposição QR:", Q3*R3 - M2);

[U1, R1] = qr_Housev2(M1);
[U2, R2] = qr_Housev2(H);
[U3, R3] = qr_Housev2(M2);

Q1 = constroi_Q_House(U1);
Q2 = constroi_Q_House(U2);
Q3 = constroi_Q_House(U3);

disp("Householder v2 - Matriz M1 Magi (7x7):", M1);
disp("Diferença entre a ortogonal e a identidade:", Q1'*Q1 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q1*R1 - M1);

disp("Householder v2 - Matriz H Hilb (7x7):", H);
disp("Diferença entre a ortogonal e a identidade:", Q2'*Q2 - eye(7, 7));
disp("Acurácia da decomposição QR:", Q2*R2 - H);

disp("Householder v2 - Matriz M2 Magi (6x6):", M2);
disp("Diferença entre a ortogonal e a identidade:", Q3'*Q3 - eye(6, 6));
disp("Acurácia da decomposição QR:", Q3*R3 - M2);
