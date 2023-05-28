% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641
% Complementary function for lagrangeInterpolarion.m
function L = Li(degree,term, X)
    syms x;
    L = 1;
    i = term; n = degree + 1; 
    for j  = 1:n
        if j ~= i
            L = L*(x - X(j))/(X(i) - X(j));
        end
    end
end