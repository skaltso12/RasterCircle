function M = SimpleFloodFill(x, y, newVal, oldVal, M)
%Fills an empty inner-defined area of a figure via recursion

if (M(x, y) == oldVal)
    M = PutPixel(x, y, newVal, M);
    M = SimpleFloodFill(x + 1, y, newVal, oldVal, M);
    M = SimpleFloodFill(x, y + 1, newVal, oldVal, M);
    M = SimpleFloodFill(x - 1, y, newVal, oldVal, M);
    M = SimpleFloodFill(x, y - 1, newVal, oldVal, M);
end

