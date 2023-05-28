% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function A = GaussLegendreIntegration(number_of_points, f, a, b)
    [W, X] = GaussLegendreConstants(number_of_points);
    X = vpa(X);
    A = 0; 
    if (a == b) && (a == 1)
        for i = 1:length(number_of_points) + 1
            A = A + W(i)*f(X(i));             
        end
    else 
        for i = 1:length(number_of_points) +1
            A = A + W(i)*f( X(i)*(b-a)/2 + (a+b)/2 );             
        end
    end
    A = A*(b - a)/2;
end