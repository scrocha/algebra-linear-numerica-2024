clear;

exec("./funcs/Gaussian_Elimination_4.sci");
exec("./funcs/acertos.sci");
exec("./funcs/confusion_matrix.sci");

data_train = csvRead("cancer_train_2024.csv", ";");
data_test = csvRead("cancer_test_2024.csv", ";");



