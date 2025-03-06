function [m, b] = resgresionLineal(X, Y)
  n = numel(X);
  A(2, 2) = n;
  B = zeros(2, 1);

  for i = 1 : n
    A(1, 1) = A(1, 1) + X(i) ^ 2;
    A(1, 2) = A(1, 2) + X(i);
    A(2, 1) = A(2, 1) + X(i);
    B(1, 1) = B(1, 1) + X(i) * Y(i);
    B(2, 1) = B(2, 1) + Y(i);
  endfor

  sol = A \ B;
  m = sol(1, 1);
  b = sol(2, 1);
