function [x_k2, diff, k, r] = Algoritmo_GaussSeidel_Lin(A, b, x_0, E, M, norm)
    n = size(A, 1);
    x_k1 = x_0;
    LD = tril(A);
    U = triu(A, 1);
    
    
    x_k2 = 
    diff = norm(x_k2 - x_k1, norm);
    k=1;

    while (k <= M & diff >= E) then
        x_k1 = x_k2;
        
        x_k2 = 
        
        k = k + 1;
        diff = norm(x_k2 - x_k1, norm);
    end

    r = norm(b - A*x_k2, norm);
endfunction