% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% this is a bracketed method
% a and b are the initial values for x
function x = bisectionMethod(a, b, f, LOI, error)
  
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        x = "ERROR: MISSING PARAMETERS (LOI || error)";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        while n < LOI 
            c = (a + b)/2; 
            if f(a)*f(c) < 0
                b = c; 
            else 
                a = c;
            end

            n = n + 1;
        end
        x = c; 
    
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        limit = 20; 
        epsilon = 100;
        c = (a + b)/2;
        while epsilon > error
            % Implementation of the Method
             
            if f(a)*f(c) < 0
                b = c; 
            else 
                a = c;
            end
            c_next = (a + b)/2;
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