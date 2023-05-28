% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% f is a function of (x, y, z), where z = dy/dx
function r = EulerSecondOrder(f, a, b, h, y0, dy0)

    N=(b-a)/h;

    x = zeros(N+1, 1);
    y = zeros(N+1, 1);
    z = zeros(N+1, 1);
    x(1) = a;
    y(1) = y0;
    z(1) = dy0;
    
    for i = 1:N
        dz_dx = f(y(i),  z(i));
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + h * z(i);
        z(i+1) = z(i) + h * dz_dx;
    end
    
    r=table(x,y,z);