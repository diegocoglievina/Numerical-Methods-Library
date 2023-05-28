% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

function fPrime = ForwardFiniteDifference(h, x0, f, n, highAccuracy)
    if n == 1
        if highAccuracy
            fPrime = (-f(x0 + 2*h) + 4*f(x0 + h) - 3*f(x0))/(2*h); 
        else 
            fPrime = (f(x0 + h) - f(x0))/h;
        end 
     
    elseif n == 2
        if highAccuracy
            fPrime = ( -f(x0 + 3*h) + 4*f(x0 + 2*h) - 5*f(x0 + h) + 2*f(x0) )/(h^2);
        else
            fPrime = (f(x0 + 2*h) -2*f(x0 + h) + f(x0))/(h^2);
        end

    elseif n ==3
        if highAccuracy
            fPrime = (-3*f(x0 + 4*h) + 14*f(x0 + 3*h) - 24*f(x0 + 2*h) + 18*f(x0 + h) -5*f(x0))/(2*h^3);
        else
            fPrime = (f(x0 + 3*h) - 3*f(x0 + 2*h) + 3*f(x0 + h) - f(x0))/(h^3);
        end

    elseif n ==4
        if highAccuracy
            fPrime = (-2*f(x0 + 5*h) + 11*f(x0 + 4*h) -24*f(x0 + 3*h) + 26*f(x0 + 2*h) -14*f(x0 + h) + 3*f(x0))/(h^4);
        else
            fPrime = ( f(x0 + 4*h) - 4*f(x0 + 3*h) + 6*f(x0 + 2*h) - 4*f(x0 + h) + f(x0))/(h^4); 
        end
    end  
end