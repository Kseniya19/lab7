model lab07_3

parameter Real N = 910;
parameter Real n0 = 16;

Real n(start=n0);

function k
  input Real t;
  output Real result;
algorithm
  result := 0.3*sin(3*t);
end k;

function p
  input Real t;
  output Real result;
algorithm
  result := 0.3*t;
end p;

equation

der(n) = (k(time)+p(time)*n) * (N-n);

end lab07_3;

