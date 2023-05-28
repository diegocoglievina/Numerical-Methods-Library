% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% this is an open method
function x = newtonRaphson(x0, f, fprime, LOI, error)
    xn = x0; 
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        x = "ERROR: MISSING PARAMETERS (LOI || error)";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        while n < LOI 
            x_next = xn - f(xn)/fprime(xn);
            xn = x_next;
            n = n+1;
        end
        x = x_next;
    
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 20; 
        epsilon = 100;
        
        while epsilon > error
            % Implementation of the Method
            x_next = xn - f(xn)/fprime(xn);
            epsilon = abs( (x_next - xn)/xn )*100;
            xn = x_next;

            x = x_next;
            n = n + 1;
            if n == limit 
                x = "ERROR: DOES NOT CONVERGE";
                break 
            end
        end
    end
end