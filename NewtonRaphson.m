TOL = 0.0000000000000000000000001;
sw = 1;
x1 = 0.25;
KIC = 52;
w = 2.5;
Sigma = 24.89;
cont = 1;

while sw == 1
  f = 3 * x1^3 - 2 * x1 + 8;
  Df = 9 * x1^2 - 2;
  x2 = x1 - (f/Df);

  if abs(x2 - x1) <= TOL
    x = x2;
    sw = 0;
  endif

  x1 = x2;
  cont++;
end

x
cont
