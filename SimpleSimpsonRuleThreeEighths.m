function A = SimpleSimpsonRuleThreeEighths(x0, xn, f)
    A = (1/8)*(xn - x0)*(f(x0) + 3*f((2*x0 + xn)/3) + 3*f((x0 + 2*xn)/3) + f(xn));
end