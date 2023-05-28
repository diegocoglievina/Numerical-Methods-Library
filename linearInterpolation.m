% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function L = linearInterpolation(X, Y)
    x0 = X(1); y0 = Y(1);
    x1 = X(2); y1 = Y(2);

    syms x
    L = (x - x0)*(y1 - y0)/(x1 - x0) + y0;
end