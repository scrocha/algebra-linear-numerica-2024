function [Q, R, P] = qr_GSP(A)
    [m, n] = size(A);

    Q = zeros(m, n);
    R = zeros(n, n);
    P = eye(n, n);

    normas = zeros(n, 1);

    for j = 1:n
        normas(j) = norm(A(:, j));
    end
    
    for j = 1:n
        [max_norm, index] = max(normas(j:n));
        index = index + j - 1;

        A(:, [j, index]) = A(:, [index, j]);
        P(:, [j, index]) = P(:, [index, j]);
        normas([j, index]) = normas([index, j]);

        v = A(:, j);

        for i = 1:j-1
            R(i, j) = Q(:, i)' * v;
            v = v - R(i, j) * Q(:, i);
        end
        
        R(j, j) = norm(v);
        Q(:, j) = v / R(j, j);
        
    end

endfunction
