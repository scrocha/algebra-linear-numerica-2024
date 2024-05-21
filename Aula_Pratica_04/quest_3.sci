clear;

exec("./funcs/Gaussian_Elimination_4.sci");
exec("./funcs/acertos.sci");
exec("./funcs/confusion_matrix.sci");

data_train = csvRead("cancer_train_2024.csv", ";");
data_test = csvRead("cancer_test_2024.csv", ";");

disp("Desvio padrão das colunas de treino:");
disp(stdev(data_train(:,1:10), 'r'));

disp("Covariância das colunas de treino:");
disp(cov(data_test));

disp("Média da covariância das colunas de treino:");
disp(mean(cov(data_test), 'r'));

y_train = data_train(:,11);
y_test = data_test(:,11);

A_train = zeros(size(data_train, 1), 11);
A_train(:, 1) = ones(size(data_train, 1), 1);
A_train(:, 2:11) = data_train(:, 1:10);

A_test = zeros(size(data_test, 1), 11);
A_test(:, 1) = ones(size(data_test, 1), 1);
A_test(:, 2:11) = data_test(:, 1:10);

disp("Original:");
predict(A_train, y_train, A_test, y_test);

for i = 1:11
    disp("Sem a coluna " + string(i) + ":");
    A_temp_train = A_train;
    A_temp_test = A_test;

    A_temp_train(:,i) = [];
    A_temp_test(:,i) = [];

    predict(A_temp_train, y_train, A_temp_test, y_test);
end
