////////////////////////////////////////////////////////////////////////// 
//Variáveis de saída: 
//x: solução do sistema Ax=b (assumimos que tal solução existe). 
//P: permutações necessárias para resolver o sistema PAx=Pb caso exista algum pivô nulo
//C: Seja A=LU a decomposição LU de A. 
//Então C(i,j)=L(i,j) para i>j e C(i,j)=U(i,j) para j>=i. 
////////////////////////////////////////////////////////////////////////// 
function [x]=Gaussian_Elimination_4(A, b)
    C=[A,b];
    [n]=size(C,1);
    P=eye(n,n);
     
    for j=1:(n-1)
        //O pivô está na posição (j,j)
        // Verifica se o pivô é 0
        
         [num, index] = max(abs(C(j:n,j)));
         k = j + index - 1;
           
         C([j k],:) = C([k j],:);
         P([j k],:) = P([k j],:);
        
        for i=(j+1):n
     //O elemento C(i,j) é o elemento na posição (i,j) of L na decomposição LU de A 
            C(i,j)=C(i,j)/C(j,j);
            //Linha i  Linha i - C(i,j)*Linha j 
    //Somente os elementos da diagonal ou acima dela são computados  
    //(aqueles que compõem a matrix U) 
            C(i,j+1:n+1)=C(i,j+1:n+1)-C(i,j)*C(j,j+1:n+1);
        end
    end

    x=zeros(n,1);
     
    // Calcula x, sendo Ux=C(1:n,n+1)
     
    x(n)=C(n,n+1)/C(n,n);
    for i=n-1:-1:1
        x(i)=(C(i,n+1)-C(i,i+1:n)*x(i+1:n))/C(i,i);
    end
     
endfunction


function [lambda1, x1, k, n_erro] = metodo_potencia_inv(A, x0, epsilon, alfa, M)
    k = 0;
    x0 = x0/norm(x0, 2);
    n_erro = epsilon + 1;
    A_alfa = A - alfa*eye(A);

    while (k <= M && n_erro >= epsilon) then
        x1 = Gaussian_Elimination_4(A_alfa, x0);
        x1 = x1/norm(x1, 2);
        lambda1 = x1'*A*x1;
        
        if (x1'*x0 < 0) then
            x1 = -x1;
        end

        n_erro = norm(x1 - x0, 2);
        x0 = x1;
        k = k+1;
    end

endfunction