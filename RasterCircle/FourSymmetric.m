function M = FourSymmetric(xc, yc, x, y, val, M)
%Draws four symmetric points in a matrix in color val

M = PutPixel(xc + x, yc + y, val, M);
M = PutPixel(xc - x, yc - y, val, M);
M = PutPixel(xc - x, yc + y, val, M);
M = PutPixel(xc + x, yc - y, val, M);

end

