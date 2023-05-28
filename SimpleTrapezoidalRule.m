% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% The simple trapezoidal rule comes in handy when the given points are not equally spaced

function A = SimpleTrapezoidalRule(X, Y, f)
    % X is the set of points over the interval in which the function will
    % be integrated 
    if isempty(Y)
        Y = f(X);
    end
    
    n = length(X) - 1; 
    A = 0; 
    for i = 1:n 
        A = A +  (X(i + 1) - X(i))*(Y(i) + Y(i + 1))*(1/2); 
    end 
end