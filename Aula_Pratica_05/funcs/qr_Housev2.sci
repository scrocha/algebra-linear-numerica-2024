function [U, R] = qr_Housev2(A)
    [m, n] = size(A);
    k = min(m-1, n);
    R = A;
    U = zeros(m, k);
    
    for i = 1:k
        x = R(i:m, i);
        e = zeros(m-i+1, 1);

        if x(1,1) > 0 then
            e(1) = -norm(x);
        else
            e(1) = norm(x);
        end

        v = x - e;
        v = v / norm(v);

        U(i:m, i) = v;
        
        R(i:m, i:n) = R(i:m, i:n) - 2 * v * (v' * R(i:m, i:n));
    end

    R = triu(R);

endfunction