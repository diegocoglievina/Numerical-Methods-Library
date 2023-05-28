% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641
% Linear sets of data points do not requiere to be LINEARIZED.
% Therefore, only non-linear sets of data points need to be linearized. 

function L = least_squares(X, Y, linearized)

    x_mean = mean(X);
    y_mean = mean(Y);
    
    S_xx = sum((X - x_mean).^2);
    S_xy = sum((X - x_mean).*(Y - y_mean));
    
    b_1 = S_xy/S_xx;
    b_0 = y_mean - b_1*x_mean;
    
    
    syms x

    if linearized
        L = [b_0; b_1]; 
    else 
        L = b_0 + b_1*x;
    end
    
    
end
