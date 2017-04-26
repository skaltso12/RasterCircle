function M = EightSymmetric(xc, yc, x, y, val, M)
%Draws eight symmetrix points in the matrix in color val

M = FourSymmetric(xc, yc, x, y, val, M);
M = FourSymmetric(xc, yc, y, x, val, M);

end

