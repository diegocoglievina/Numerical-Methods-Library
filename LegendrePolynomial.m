% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% Legendre Polynomials are a series of orthogonal Polynomials that satisfy
% the following equation: 

% Integral from -1 to 1 (Pn * Pm) dx = delta croner(m, n)

function Pn = LegendrePolynomial(n)
    syms x; 

    Pn = (x^2 - 1)^n; 
    for i = 1:n
        Pn = expand(diff(Pn), "ArithmeticOnly",true);
    end

    % Normalize Pn by dividing it by (2^n * n!)
    Pn = Pn/( (2^n)*(factorial(n)) );
end