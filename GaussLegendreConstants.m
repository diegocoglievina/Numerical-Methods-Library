% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% This function takes 'n' as an argument, which is the number of points
% that will be used to integrate the function.

% xi is defined to be the ith root of the Legendre Polynomial of the nth
% order. The Weights are calculated with the derivative of said polynomial

function [W, X] = GaussLegendreConstants(n)
    Pn = LegendrePolynomial(n); 
    Pn_prime = diff(Pn);
    Pn_prime = matlabFunction(Pn_prime);
    X = vpa(roots(Pn), 6); 
    W = zeros(length(X), 1);
    if n == 1
        W = 2; X = 0;
    else
        for i = 1:length(X)
            W(i) = 2/((1-X(i)^2)*(Pn_prime(X(i))^2));
        end
    end

    
end