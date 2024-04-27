function [lambda, x1, k, n_erro] = metodo_potencia_v2(A, x0, epsilon, M)
    k = 0;
    x0 = x0/norm(x0, 2);
    x1 = A*x0;
    n_erro = epsilon + 1;

    while (k <= M && n_erro >= epsilon) then
        lambda = x1'*x0;
        if (lambda < 0) then
            x1 = -x1;
        end
        x1 = x1/norm(x1, 2);
        n_erro = norm(x1 - x0, 2);
        x0 = x1;
        x1 = A*x0;
        k = k+1;
    end

    x1 = x1/norm(x1, 2);
    if (lambda < 0) then
        x1 = -x1;
    end

endfunction