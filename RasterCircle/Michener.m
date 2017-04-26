MaxX = 70;
MaxY = round(0.7 * MaxX); %resizing for the end result to look like a circle
M = zeros(MaxX, MaxY);
Col = [0, 0, 1; 0, 0, 0];
c = 2; r = 1; color = Col(c, :); color2 = Col(r, :);
Ax = axes('Position', [0.1, 0.1, 0.8, 0.8], 'XLim', [0 MaxX], 'YLim', [0 MaxY]);
xc = round(MaxX / 2); yc = round(MaxY / 2); R = MaxY; %setting the centre
rectangle('Curvature', [1 1], 'Position', [xc, yc, 1, 1], 'FaceColor', color);
M(xc, yc) = c;
%setting the Radius
while (R > MaxY / 2)
try[x, y] = ginput(1);
    catch
        clear;
        clc;
        break;
end
        x1 = round(x);
        y1 = round(y);
        R = round(sqrt((x1 - xc) ^ 2 + (y1 - yc) ^ 2));
end
M = MichenerCircle(xc, yc, R, c, M); %изчисление на матрицата М
M = SimpleFloodFill(xc, yc + 1, r, 0, M);
for i = 1:MaxX
    for j = 1:MaxY
        if M(i, j) == c
            rectangle('Curvature', [1 1], 'Position', [i - 1, j - 1, 1, 1], 'FaceColor', color);
        else if M(i, j) == r
            rectangle('Curvature', [0 0], 'Position', [i - 1, j - 1, 1, 1], 'FaceColor', color2);
            end
        end
    end
end


