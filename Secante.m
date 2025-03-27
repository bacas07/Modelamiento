TOL = 0.0001;
sw = 1;
x0 = 4;
x1 = 7;
cont = 1;

while sw == 1
  f1 = sin(x1) + 3 * cos(x1);
  f2 = sin(x0) + 3 * cos(x0);
  x2 = x1 - (x1 - x0) * (f1 / (f1 - f2));

  if abs(x2 - x1) <= TOL
    x = x2;
    sw = 0;
  endif

  x0 = x1;
  x1 = x2;
  cont++;
end

af = x
cont
