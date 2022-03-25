model lab07_1

parameter Real N = 910;
parameter Real n0 = 16;

Real n(start=n0);

function k
  input Real t;
  output Real result;
algorithm
  result := 0.84;
end k;

function p
  input Real t;
  output Real result;
algorithm
  result := 0.00002;
end p;

equation

der(n) = (k(time)+p(time)*n) * (N-n);

end lab07_1;

