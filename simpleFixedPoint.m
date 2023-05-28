% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% This is an open method
% In this method, f(x) = x
% x = (x + c*f(x))/c

function x = simpleFixedPoint(x0, f, LOI, error)
    
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        x = "ERROR: MISSING PARAMETERS (LOI || error)";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        while n < LOI 
            xn = f(x0);
            x0 = xn;
            n = n + 1;
        end
        x = xn; 
    
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 1000; 
        epsilon = 100;

        while epsilon > error
            % Implementation of the Method
            xn = f(x0);
            epsilon = abs((xn - x0)/xn)*100;
            x0 = xn;
            n = n + 1;
            
            if n == limit 
                x = "ERROR: DOES NOT CONVERGE";
                break 
            end
            x = xn;
        end
    end
end