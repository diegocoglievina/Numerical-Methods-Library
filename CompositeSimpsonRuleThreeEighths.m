% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

%This method requires four points per iteration. 

function A = CompositeSimpsonRuleThreeEighths(x0, xn, h, f, n)
    
    if isempty(n)  
        n = (xn - x0)/h;
    else 
        h = (xn - x0)/n;
    end

    A= f(x0) + f(xn); 

    for i = 1:(n-1)
        if mod(i-1, 3) == 0 %if (i + 1)mod 3 == 1, then x i is a multiple of three.
            A = A + 2*f(x0 + h*(i));
        else
            A = A + 3*f(x0 + h*(i));
        end
    end
    A = 3*A*(h/8);
end