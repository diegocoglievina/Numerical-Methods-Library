% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641


% For this method, we must have 
%   f(x, y) = 0 & g(x, y) = 0

% Here, F = [f; g]
    %  Vars [x, y]
    % X0 = Initial conditions.
    
function X = newtonRaphsonSystems(X0, Vars, F, LOI, error)
    
    n = 0;
    
    % Error prevention
    if isempty(error) && isempty(LOI)
        X = "ERROR: MISSING PARAMETERS (LOI || error)";
    
    elseif isempty(error)
        % If no error is provided, the function will loop until the LOI is
        % reached
        while n < LOI 

            J = jacobian(F,Vars);
            JX = subs(J, Vars, X0);
            J_inv = vpa(inv(JX));
            FX = vpa(subs(F, Vars, X0));

            X0 = X0 - J_inv*FX;

           n = n + 1;
        end
        X = X0; 
    
    else
        % If no LOI is provided, the loop will stop when epsilon is smaller
        % than the desiered error
        epsilon = 100;

        while epsilon > error
            % Implementation of the Method
             
            J = jacobian(F,Vars);
            JX = subs(J, Vars, X0);
            J_inv = vpa(inv(JX));

            FX = vpa(subs(F, Vars, X0));

            X1 = X0 - J_inv*FX;

            epsilon = (norm(X1) - norm(X0))/norm(X1);
            X0 = X1; 

        end
        X = X0;
    end
end