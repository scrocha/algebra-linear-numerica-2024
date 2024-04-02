function [x_k2, diff, k, r] = jacobi(A, b, x_0, E, M, norm)
    n = size(A, 1);
    // Inicializa a iteração anterior como a estimativa inicial
    x_k1 = x_0;
    // Temos (L + D + U) = A, onde LU = (L + U) e D_inv = D^-1
    LU = A - diag(diag(A));
    D_inv = diag(1 ./ diag(A));

    // Calcula a próxima iteração
    x_k2 = -D_inv * LU * x_k1 + D_inv * b;
    // Calcula a diferença entre a iteração atual e a anterior
    diff = norm(x_k2 - x_k1, norm);
    // Esta foi a primeira iteração
    k=1;

    // Loop que continua até que alguma das duas condições seja cunmprida
    while (k <= M & diff >= E) then
        // Atualiza a iteração anterior para a iteração atual
        x_k1 = x_k2;
        
        // Calcula a próxima iteração
        x_k2 = -D_inv * LU * x_k1 + D_inv * b;
        
        // Incrementa o contador de iterações
        k = k + 1;
        // Calcula a diferença entre as iterações
        diff = norm(x_k2 - x_k1, norm);
    end

    // Calcula a norma do resíduo
    r = norm(b - A*x_k2, norm);
endfunction
