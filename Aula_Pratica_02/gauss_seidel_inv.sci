function [x_k2, diff, k, r] = gauss_seidel_inv(A, b, x_0, E, M, norma)
    n = size(A, 1);
    x_k1 = x_0;
    // Calcula a matriz triangular inferior inversa
    LD_inv = inv(tril(A));
    // Obtém a parte triangular superior de A
    U = triu(A, 1);
    
    // Calcula a próxima iteração
    x_k2 = - LD_inv * U * x_k1 + LD_inv * b;
    // Calcula a diferença entre a iteração atual e a anterior
    diff = norm(x_k2 - x_k1, norma);
    k = 1;

    // Loop que continua até que alguma das duas condições seja cumprida
    while (k < M & diff > E) do
        // Atualiza a iteração anterior para a iteração atual
        x_k1 = x_k2;
        
        // Calcula a próxima iteração
        x_k2 = - LD_inv * U * x_k1 + LD_inv * b;
        
        // Atualiza o contador e a diferença
        k = k + 1;
        diff = norm(x_k2 - x_k1, norma);
    end

    // Calcula a norma do resíduo
    r = norm(b - A*x_k2, norma);
endfunction
