function M = MichenerCircle(xc, yc, R, val, M)
%Colours pixels in a matrix in val colour to form a circle with
%center (xc, yc) and radius R

x = 0; y = R; d = 3 - 2 * R;
M = EightSymmetric(xc, yc, 0, R, val, M);
while x < y
    x = x + 1;
    if (d >= 0)
        d = d + 10 + 4 * x - 4 * y;
        y = y - 1;
    else
        d = d + 6 + 4 * x;
    end
    M = EightSymmetric(xc, yc, x, y, val, M);
end
end

