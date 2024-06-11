exec('./funcs/qr_GSM.sci');

function [S, num_iteracoes] = espectro(A, tol)
    S = diag(A);
    diff = tol + 1;
    num_iteracoes = 0;
    
    while diff > tol
        [Q, R] = qr_GSM(A);
        A = R * Q;

        new_S = diag(A);
        diff = norm(new_S - S, 'inf');

        S = new_S;
        num_iteracoes = num_iteracoes + 1;
    end
end