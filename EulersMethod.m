function [x, y] = EulersMethod(a, b, h, f, y0)
    n = (b-a)/h + 1; 
    x = zeros(n,1);
    y = zeros(n,1);
    
    % Set the initial condition
    x(1) = a;
    y(1) = y0;
   
    for i = 1:n-1
        x(i+1) = x(i) + h; % update x value
        y(i+1) = y(i) + h*f(x(i),y(i)); % update y value using Euler's formula
    end
end