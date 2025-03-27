TOL = 0.0001;
sw = 1;
x1 = 0.25;
KIC = 52;
w = 2.5;
Sigma = 24.89;
cont = 1;

while sw == 1
  Y = (1.99 - 0.41 * (x1 / w) + 18.70 * (x1 / w)^2 - 38.48 * (x1 / w)^3 + 53.85 * (x1 / w)^4);
  x2 = (KIC / (Sigma*Y))^2;

  if abs(x2 - x1) <= TOL
    x = x2;
    sw = 0;
  endif

  x1 = x2;
  cont++;
end

af = x
cont
