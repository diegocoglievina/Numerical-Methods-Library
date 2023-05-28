% Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% the Secant Method is bracketing method.
function x = secantMethod(x0, x1, f, LOI, error)
    n = 0; 
    
    % Error prevention 
    if isempty(error) && isempty(LOI)
        x = "ERROR: MISSING PARAMETERS (LOI || error)";

    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached

        while n < LOI 
            
            % Implementation of the Method 
            xn = x1 - ( f(x1)*(x1 - x0) )/(f(x1) - f(x0)); 
            x0 = x1;
            x1 = xn;
            n = n + 1;
        end
        x = x1;

    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 20; 
        epsilon = 100;
        
        while epsilon > error
            
            % Implementation of the Method
            xn = x1 - ( f(x1)*(x1 - x0) )/(f(x1) - f(x0)); 
            x0 = x1;
            epsilon = abs( (x1 - x0)/x1 )*100;
            x1 = xn;

            x = x1;
            n = n + 1;

            if n == limit 
                x = "ERROR: DOES NOT CONVERGE";
                break 
            end
        end
    end

end