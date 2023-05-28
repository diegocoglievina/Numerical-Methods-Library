% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641
% Assuming the expression is integrated as 'dx dy'. Otherwise 

function A = CompoundTrapezoidalRuleDoubleIntegral(n, f, x0, xn, y0, yn )
    A = 0; 
    hx = (xn -  x0)/(n); 
    hy = (yn - y0)/(n); 
    for j = 0:n-1
        for i = 0:n-1
            xi = x0 + i*hx; xip1 = x0 + (i + 1)*hx; 
            yj= y0 + j*hy; yjp1 = y0 + (j + 1)*hy; 
            A = A + f(xi, yj) + f(xi, yjp1) + f(xip1, yj) + f(xip1, yjp1); 
        end
    end
    A = A*(hy*hx)/4; 
end