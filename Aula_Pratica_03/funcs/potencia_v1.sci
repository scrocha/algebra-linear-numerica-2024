function max_coord = return_max(x)
    [val, i] = max(abs(x))
    max_coord = x(i)
endfunction

function [lambda, x1, k, n_erro] = metodo_potencia_v1(A, x0, epsilon, M)
    k=0;
    x0 = x0/return_max(x0);
    x1 = A*x0;
    n_erro = epsilon + 1;

    while (k <= M && n_erro >= epsilon) then
        lambda = return_max(x1);
        x1 = x1/lambda;
        n_erro = norm(x1 - x0, %inf);
        x0 = x1;
        x1 = A*x0;
        k=k+1;
    end
    x1 = x1/lambda;

endfunction