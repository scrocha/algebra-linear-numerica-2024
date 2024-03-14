////////////////////////////////////////////////////////////////////////// 
////////////////////////////////////////////////////////////////////////// 
function [X]=Resolve_com_LU(C, P, B)
//D=[C,B];
[n, m]=size(B);
X=zeros(n, m);
Y=zeros(n, m);
B=P*B;

// Começaremos resolvendo o Sistema Ly=b sendo que Ux=y, em que
// Y é a matriz onde as colunas resolvem o primeiro sistema e
// X a matriz onde as colunas resolvem o segundo sistema.
// Sendo B a matriz com os b's a serem resolvidos na coluna.

// Como a matriz L possui 1's na diagonal, sabemos que a primeira linha
// de Y será igual a primeira linha de B.

Y(1,:)=B(1,:);

// Pela fórmula final, chegamos que as outras linhas de Y serão
// iguais a linha de B menos as outras linhas de Y multiplicadas
// pelos fatores de L.

for i=2:n
    Y(i,:)=B(i,:)-C(i,1:i-1)*Y(1:i-1,i);
end

// Agora resolveremos o sistema Ux=y

X(n,:)=Y(n,:)/C(n,n);

for i=n-1:-1:1
    X(i,:)=(Y(i,:)-C(i,i+1:n)*X(i+1:n,i))/C(i,i);  
end

endfunction
