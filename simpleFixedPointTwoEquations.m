% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% This method is used to solve a system of two equations. 
% f and g are function handles, not symbolic expressions
% In this method, f(x, y) = x
        % and g(x, y) = y 

function X = simpleFixedPointTwoEquations(x0, y0, f, g, LOI, error)
  
    % The return type is an array containing the x and y solutions
      % respectively.
    
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        X{1} = "ERROR: MISSING PARAMETERS (LOI || error)";
        X{2} = "";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        while n < LOI 
            xn = f(x0, y0);
            yn = g(x0, y0);
            
            x0 = xn;
            y0 = yn;
            n = n + 1;
        end
        X{1} = xn; 
        X{2} = yn;
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 1000; 
        epsilon = 100;

        while epsilon > error
            % Implementation of the Method
            xn = f(x0, y0);
            yn = g(x0, y0);
            epsilon = sqrt( (xn - x0)^2 + (yn - y0)^2); 

            x0 = xn;
            y0 = yn; 
            n = n + 1;

            if limit == n
                X{1} = "ERROR: DOES NOT CONVERGE"; 
                X{2} = "";
                break
            end
        end
        X{1} = xn;
        X{2} = yn; 
        X{3} = n;
    end
end