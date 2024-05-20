function [confusion_matrix] = confusion_matrix(y_pred, y_true)
    n = size(y_true, 1);

    TP = 0;
    FP = 0;
    FN = 0;
    TN = 0;

    for i = 1:n

        if y_pred(i) >= 0 && y_true(i) == 1 then
            TP = TP + 1;
        elseif y_pred(i) >= 0 && y_true(i) == -1 then
            FP = FP + 1;
        elseif y_pred(i) < 0 && y_true(i) == 1 then
            FN = FN + 1;
        else
            TN = TN + 1;
        end

    end
    
    confusion_matrix = [TP, FP; FN, TN];
endfunction


function print_medidas(confusion_matrix)
    TP = confusion_matrix(1, 1);
    FP = confusion_matrix(1, 2);
    FN = confusion_matrix(2, 1);
    TN = confusion_matrix(2, 2);
    
    total = TP + FP + FN + TN;
    
    accuracy = (TP + TN) / total;
    precision = TP / (TP + FP);
    recall = TP / (TP + FN);
    FPR = FP / (FP + TN);  // False Positive Rate
    FNR = FN / (FN + TP);  // False Negative Rate
    
    disp("Matriz de Confusão:");
    disp(confusion_matrix);
    
    disp("Métricas:");
    disp("Acurácia: " + string(accuracy));
    disp("Precisão: " + string(precision));
    disp("Recall: " + string(recall));
    disp("Taxa de Falsos Positivos (Falso Alarme): " + string(FPR));
    disp("Taxa de Falsos Negativos (Falsa Emissão de Alarme): " + string(FNR));
endfunction

