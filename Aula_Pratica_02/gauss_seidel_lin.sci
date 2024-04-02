function [x_k2, diff, k, r] = gauss_seidel_lin(A, b, x_0, E, M, norma)
    n = size(A, 1);
    x_k1 = x_0;
    x_k2 = zeros(x_0);
    // Calcula a matriz triangular inferior de A
    LD = tril(A);
    // Obtém a parte triangular superior de A
    U = triu(A, 1);

    // Calcula b - U * x_k1
    b_Ux = b - U * x_k1;

    // Calcula a primeira iteração de x_k2
    x_k2(1) = b_Ux(1)/LD(1,1)
    for i = 2:n
        x_k2(i) = (b_Ux(i) - LD(i, 1:i-1) * x_k2(1:i-1)) / LD(i,i);
    end

    // Calcula a diferença entre a iteração atual e a anterior
    diff = norm(x_k2 - x_k1, norma);
    k = 1;

    // Loop que continua até que alguma das duas condições seja cumprida
    while (k < M & diff > E) do
        // Atualiza a iteração anterior para a iteração atual
        x_k1 = x_k2;
        // Recalcula b - U * x_k1
        b_Ux = b - U * x_k1;
        
        // Calcula a próxima iteração de x_k2
        x_k2(1) = b_Ux(1)/LD(1,1)
        for i = 2:n
            x_k2(i) = (b_Ux(i) - LD(i, 1:i-1)*x_k2(1:i-1)) / LD(i,i);
        end

        // Incrementa o contador de iterações
        k = k + 1;
        // Calcula a diferença entre as iterações
        diff = norm(x_k2 - x_k1, norma);
    end

    // Calcula a norma do resíduo
    r = norm(b - A*x_k2, norma);
endfunction
