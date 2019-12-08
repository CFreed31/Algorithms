function [L,U,P] = luFactor(A)
% Clayton Freed 
% LU Factorization
% 26 OCT 19
%
% luFactor(A)
%	LU decomposition with pivotiing
%
% inputs:
%	A = coefficient matrix
%
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

[a,b] = size(A);
if a ~= b
    error('The entered matrix is not square. Must be square, try again.');
end

U = A;
i = 1; 
j = 1;
L = zeros(a);
P = eye(a);

while i < a
    [~,m] = max(abs(U(:,i)));
    if m ~= 1
        U2 = U(i,:);
        U(i,:) = U(m,:);
        U(m,:) = U2;
        
        L2 = L(i,:);
        L(i,:) = L(m,:);
        L(m,:) = L2;
        
        P2 = P(i,:);
        P(i,:) = P(m,:);
        P(m,:) = P2;
    end
    while j < a
        x = U(j+1,i)/U(i,i);
        y = U(i,:)*x;
        U(j+1,:) = U(j+1,:) - y;
        
        L(j+1,i) = x;
        
        j = j + 1;
    end
    j = i + 1;
    i = i + 1;
end
L = L + eye(a);

end

