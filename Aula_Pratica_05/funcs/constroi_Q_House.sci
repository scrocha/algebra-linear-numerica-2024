function [Q] = constroi_Q_House(U)
    [m, k] = size(U);
    Q = eye(m, m);
    
    for j = k:-1:1
        v = U(j:m, j);
        Q(j:m, :) = Q(j:m, :) - 2 * v * (v' * Q(j:m, :));
        
    end
endfunction