% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% This function calculates the error of a lineal model derived using the
% least squares method 

function [Syx, r] = least_squares_error(Y, model, X)
    n = length(Y); 
    Sr = Y - model(X); 
    Sr = sum(Sr.^2);
    Syx = sqrt(Sr/(n - 2));     
    r = corrcoef(Y, X); 
end