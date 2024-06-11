clear;
exec('./funcs/qr_GSM.sci');
exec("./funcs/espectro.sci");

tol = 10e-8;

A1 = [4, 1, 1; 1, 3, 1; 1, 1, 2];
A2 = [10, 2, 3; 2, 5, 1; 3, 1, 8];
A3 = [2, 1, 0; 1, 2, 1; 0, 1, 2];
A4 = [1, 0, 0, 0; 0, 2, 0, 0; 0, 0, 3, 0; 0, 0, 0, 4];

[S1, it1] = espectro(A1, tol);
[S2, it2] = espectro(A2, tol);
[S3, it3] = espectro(A3, tol);
[S4, it4] = espectro(A4, tol);

disp("Matriz 1:", A1);
disp("Autovalores da matriz 1 calculados pelo algoritmo:", S1);
disp("Autovalores da matriz 1 pelo spec:", spec(A1));
disp("Diferença entre os resultados:", gsort(S1, "g", "i") - spec(A1));
disp("Número de iterações para o resultado:", it1);

disp("Matriz 2:", A2);
disp("Autovalores da matriz 2 calculados pelo algoritmo:", S2);
disp("Autovalores da matriz 2 pelo spec:", spec(A2));
disp("Diferença entre os resultados:", gsort(S2, "g", "i") - spec(A2));
disp("Número de iterações para o resultado:", it2);

disp("Matriz 3:", A3);
disp("Autovalores da matriz 3 calculados pelo algoritmo:", S3);
disp("Autovalores da matriz 3 pelo spec:", spec(A3));
disp("Diferença entre os resultados:", gsort(S3, "g", "i") - spec(A3));
disp("Número de iterações para o resultado:", it3);

disp("Matriz 4:", A4);
disp("Autovalores da matriz 4 calculados pelo algoritmo:", S4);
disp("Autovalores da matriz 4 pelo spec:", spec(A4));
disp("Diferença entre os resultados:", gsort(S4, "g", "i") - spec(A4));
disp("Número de iterações para o resultado:", it4);
