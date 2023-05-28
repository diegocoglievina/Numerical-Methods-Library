% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% n is the degree of the desired polynomial.
function P = newtonInterpolation(X, Y, n)

    syms x;
    N = length(X);
   
    if n > N-1
        error('n cannot be greater than N - 1.');
    end
    deg = min(n, N-1);
    
    F = zeros(N, N);
    F(:,1) = Y';
    
    for j=2:N
        for i=j:N
            F(i,j) = (F(i,j-1)-F(i-1,j-1))/(X(i)-X(i-j+1));
        end
    end
    
    P = F(deg + 1,deg+1);
    for k=deg:-1:1
        P = simplify(F(k,k) + (x - X(k))*P);
    end
    
    P = simplify(P);
    P = vpa(expand(P));
end

