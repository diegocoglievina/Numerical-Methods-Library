% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function fn = lagrangeInterpolation(X, Y, degree)
    f = 0;
    for i = 1:length(X)
        fn = expand(Li(degree, i, X)*Y(i));
        f = f + simplify(fn);
    end
    fn = f;
    fn =vpa(fn, 10);
end