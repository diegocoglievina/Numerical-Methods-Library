% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% The Compounded Trapezoidal Rule must be applied when the given points are
% equally spaced.

function A = CompoundedTrapezoidalRule(n, f, x0, xn)
    n = n + 1;
    X = linspace(x0, xn, n);
    l = (X(n) - X(1))/(n - 1);
    fxi = f(X(1:n-1));
    A = (l/2)*( f(X(1)) + 2*sum(fxi) + f(X(n)));
end