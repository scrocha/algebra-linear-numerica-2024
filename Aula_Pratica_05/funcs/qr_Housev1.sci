function [U, R] = qr_Housev1(A)
    [m, n] = size(A);
    R = A;
    U = zeros(m, n);
    
    for i = 1:n
        x = R(i:m, i);
        
        e = zeros(m-i+1, 1);
        e(1) = norm(x);
        
        v = x - e;
        v = v / norm(v);
        U(i:m, i) = v;
        
        R(i:m, i:n) = R(i:m, i:n) - 2 * v * (v' * R(i:m, i:n));

    end
endfunction