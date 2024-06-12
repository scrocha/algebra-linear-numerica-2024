function [U, R] = qr_Housev1(A)
    [m, n] = size(A);
    R = A;
    U = zeros(m, n);
    
    for i = 1:n
        x = R(i:m, i);
        e = zeros(m-i+1, 1);
        
        if x(1) > 0 then
            e(1) = -norm(x);
        else
            e(1) = norm(x);
        end

        v = x - e;
        v_norm = norm(v);

        if v_norm ~= 0 then
            v = v / v_norm;
        end
        
        U(i:m, i) = v;
        
        R(i:m, i:n) = R(i:m, i:n) - 2 * v * (v' * R(i:m, i:n));
        
    end

    R = triu(R);

endfunction