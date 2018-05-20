function [ d ] = distance( x1, x2, y1, y2 )
  squareDistance = (x2 - x1)^2 + (y2 - y1)^2;
  d = sqrt(squareDistance);
end

