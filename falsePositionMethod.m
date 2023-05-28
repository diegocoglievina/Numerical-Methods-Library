% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% this is a bracketed method
% Special case of Newton-raphson method
    % It is used when the derivative of a function cannot be computed.
function x = falsePositionMethod(a, b, f, LOI, error)
    
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        x = "ERROR: MISSING PARAMETERS (LOI || error)";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        c = a - (b-a)*f(a)/(f(b) - f(a));
        while n < LOI 
            
            if f(a)*f(c) < 0
                b = c;
            else
                a = c;
            end
            n = n + 1;
            c = a - (b-a)*f(a)/(f(b) - f(a));
        end
        
        x = c; 
    
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 20; 
        epsilon = 100;
        c = a - (b-a)*f(a)/(f(b) - f(a));
        while epsilon > error
            % Implementation of the Method
             
            if f(a)*f(c) < 0
                b = c; 
            else 
                a = c;
            end
            c_next = a - (b-a)*f(a)/(f(b) - f(a));

            epsilon = abs((c_next - c)/c_next)*100;

            n = n + 1; 
            
            c = c_next;
            
            if n == limit 
                x = "ERROR: DOES NOT CONVERGE";
                break 
            end
            x = c;
        end
    end
end