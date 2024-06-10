function [U, R] = qr_Housev2(A)
    [m, n] = size(A);
    k = min(m-1, n);
    R = A;
    U = zeros(m, k);
    
    for i = 1:k
        x = R(i:m, i);

        e = zeros(length(x), 1);
        e(1) = norm(x);
        
        v = x - e;
        v = v / norm(v);
        U(i:m, i) = v;
        
        R(i:m, i:n) = R(i:m, i:n) - 2 * v * (v' * R(i:m, i:n));
        
    end
endfunction