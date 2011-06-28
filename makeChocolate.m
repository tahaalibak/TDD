function e=makeChocolate(a,b,c)
% makeChocolate(a,b,c): a = small bars (1 kilo), b = big bars (5 kilo), c = total kilos.
% a,b and c must be positive integers or 0, otherwise returns = -1.
% Checks if c can be made given a and b.
% Returns -1 if not possible. Otherwise it returns the number of small bars used.
% Taha Bakhtiyar 2/2011.
  if ((a>=0) && (mod(a,1)==0) && (b>=0) && (mod(b,1)==0) && (c>=0) && (mod(c,1)==0))
    if ((a + 5*b) >= c)
      if (5*b <= c)
        e = a - (a + 5*b - c);
      else
        q = floor(c/5);
        req = c- 5*q;
        if (req <= a)
          e = req;
        else
          e= -1;
        end
      end
    else
      e = -1;
    end
  else
    e = -1;
  end
end