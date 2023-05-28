% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function fPrime = CenteredFiniteDifference(h, x0, f, n, highAccuracy)
    if n == 1
        if highAccuracy
            fPrime = (-f(x0 + 2*h) + 8*f(x0 + h) - 8*f(x0 - h) + f(x0 - 2*h))/(12*h); 
        else 
            fPrime = (f(x0 + h) - f(x0 - h))/(2*h);
        end 
     
    elseif n == 2
        if highAccuracy
            fPrime = ( -f(x0 + 2*h) + 16*f(x0 + h) -30*f(x0) + 16*f(x0 - h) - f(x0 - 2*h))/(h^2);
        else
            fPrime = (f(x0 - h) - 2*f(x0) + f(x0 + h))/(h^2);
        end

    elseif n ==3
        if highAccuracy
            fPrime = ( -f(x0 + 3*h) + 8*f(x0 + 2*h) - 13*f(x0 + h) + 13*f(x0 - h) - 8*f(x0 - 2*h) +f(x0 - 3*h) )/(8*h^3);
        else
            fPrime = (f(x0 + 2*h) - 2*f(x0 + h) + 2*f(x0 - h) - f(x0 - 2*h))/(2*h^3);
        end
    end  
end