function RelativeError = RelativeError(trueValue,estimate)
    RelativeError = abs((trueValue-estimate)/trueValue)*100;
end