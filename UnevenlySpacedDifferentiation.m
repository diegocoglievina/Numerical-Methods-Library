function fPrime = UnevenlySpacedDifferentiation(X, f, x0, isContinuous )
    a = (2*x0 - X(2) - X(3))/( (X(1) - X(2))*(X(1) - X(3)) ); 
    b = (2*x0 - X(1) - X(3))/( (X(2)- X(1))*(X(2) - X(3)) ); 
    c = (2*x0 - X(1) - X(2))/( (X(3)- X(1))*(X(3) - X(2)) ); 

    if isContinuous
        fPrime = f(X(1))*a + f(X(2))*b + f(X(3))*c;
    else
        fPrime = f(1)*a + f(2)*b + f(3)*c;
    end
end