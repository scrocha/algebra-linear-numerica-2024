function [num_acertos, porcentagem_acertos] = acertos(y_pred, y_real, corte)
    n = size(y_pred, 1);
    num_acertos = 0;

    y_pred(y_pred < corte) = -1;
    y_pred(y_pred >= corte) = 1;

    num_acertos = sum(y_pred == y_real);

    // for i = 1:n
    //     if y_pred(i) < corte then
    //         y_pred(i) = -1
    //     else
    //         y_pred(i) = 1
    //     end

    //     if y_pred(i) == y_real(i) then
    //         num_acertos = num_acertos + 1;
    //     end

    // end
    
    porcentagem_acertos = num_acertos/n;

endfunction

