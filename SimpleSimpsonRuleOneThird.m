% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% X is an array of points.
function A = SimpleSimpsonRuleOneThird(X, f, l)
    x0 = X(1); x1 = X(2); x2 = X(3);
    A = (l/3)*(f(x0) + 4*f(x1) + f(x2)); 
end