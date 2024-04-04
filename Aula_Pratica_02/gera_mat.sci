function [A, b] = gera_mat(n)
    A = rand(n, n);
    b = rand(n, 1);

    for i = 1:n
        A(i,i) = norm(A(i,:), 1) + 0.1;
    end

endfunction