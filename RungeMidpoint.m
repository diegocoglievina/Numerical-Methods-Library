
function [x, y, k1, k2] = RungeMidpoint(x0, y0, h, f, xn)

   n = (xn - x0)/h;

    % Initialize the arrays to store the results
    x = zeros(1,n+1); % x values
    y = x; % y values
    k1 = zeros(1, n); 
    k2 = k1;
    % Set the initial values
    x(1) = x0;
    y(1) = y0;
    
    % Loop over the steps
    for i = 1:n
        % Calculate the midpoint values
        xm = x(i) + h/2;
        ym = y(i) + h/2 * f(x(i),y(i));
        
        k1(i) = f(x(i),y(i)); k2(i) = f(xm,ym);
        
        % Update the next values using the midpoint values
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + h * k2(i);
    end
end