% Author: Diego Coglievina Díaz
% Numerical Methods
% Universidad Anáhuac Querétaro
% 00437641

% Runge-kutta are derived from Taylor Series, 
% where phi = infinite polynomial, and phi_n is a polynomial of degree n
% k_n = f(Phi_n)

function [X, Y] = RungeKutta(x0, y0, f, h, xn)
    Y = zeros( (xn - x0)/h , 1);
    X = Y; 
    i = 0; 

    while x0 < xn
        i = i + 1;

        k1 = f(x0, y0);
        k2 = f(x0 + 0.5*h, y0 + 0.5*k1*h);
        k3 = f(x0 + 0.5*h, y0 + 0.5*k2*h);
        k4 = f(x0 + h, y0 + k3*h);

        yi = y0 + (h/6)*(k1 + 2*k2 + 2*k3 + k4);

        y0 = yi; 
        X(i) = x0;
        x0 = x0 + h;
        Y(i) = yi; 
    end
end