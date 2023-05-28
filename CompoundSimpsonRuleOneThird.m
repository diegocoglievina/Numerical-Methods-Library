% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function A = CompoundSimpsonRuleOneThird(x0, xn, h, f, n)
    

    if isempty(n)  
        n = (xn - x0)/h;
    else 
        h = (xn - x0)/n;
    end
    
    A = f(x0) + f(xn);
    
    for i = 1:(n-1)
        if mod(i, 2) == 1 %if i is even, then i is odd.
            A = A + 4*f(x0 + h*(i));
        else
            A = A + 2*f(x0 + h*(i));
        end
    end
    
    A = A*(h/3);
end