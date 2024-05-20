clear;

exec("./funcs/Gaussian_Elimination_4.sci");
exec("./funcs/acertos.sci");
exec("./funcs/confusion_matrix.sci");

data_train = csvRead("cancer_train_2024.csv", ";");

y_train = data_train(:, 11);

A_train = zeros(size(data_train, 1), 11);
A_train(:, 1) = ones(size(data_train, 1), 1);
A_train(:, 2:11) = data_train(:, 1:10);

[x, per, C] = Gaussian_Elimination_4(A_train'*A_train, A_train'*y_train);

y_pred_train = A_train * x;

[acertos_train, pct_train] = acertos(y_pred_train, y_train, 0)

data_test = csvRead("cancer_test_2024.csv", ";");

y_test = data_test(:, 11);

A_test = zeros(size(data_test, 1), 11);
A_test(:, 1) = ones(size(data_test, 1), 1);
A_test(:, 2:11) = data_test(:, 1:10);

y_pred_test = A_test * x;

[acertos_test, pct_test] = acertos(y_pred_test, y_test, 0)

confusion_matrix_train = confusion_matrix(y_pred_train, y_train);

print_medidas(confusion_matrix_train);

confusion_matrix_test = confusion_matrix(y_pred_test, y_test);

print_medidas(confusion_matrix_test);
